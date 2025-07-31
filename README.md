通过指定<suiteXmlFiles>属性来运行指定的testng.xml执行测试套
将<suiteXmlFile>的value值设置为引用properties,则更灵活，执行命令时就可以指定想这些的testng.xml 
eg：mvn clean test -DsuiteXmlFile=src/test/resources/xml/a.xml）

对应的pom.xml

<properties>
        <suiteXmlFile>testng.xml</suiteXmlFile>
</properties>
<plugins>

            <plugin>

                <groupId>org.apache.maven.plugins</groupId>

                <artifactId>maven-surefire-plugin</artifactId>

                <version>2.19</version>

                <configuration>

                    <encoding>UTF-8</encoding>

                    <suiteXmlFiles>

                        <suiteXmlFile>${suiteXmlFile}</suiteXmlFile>

                    </suiteXmlFiles>

                </configuration>

            </plugin>
</plugins>

执行时采用如下方法
mvn clean test -DsuiteXmlFile=src/main/resources/suites/console/application/testng_app.xml
mvn clean test -DsuiteXmlFile=src/main/resources/suites/console/ud/testng_ud.xml
mvn clean test -DsuiteXmlFile=src/main/resources/suites/console/authentication/testng_authentication_source.xml
mvn clean test -DsuiteXmlFile=src/main/resources/suites/developer/testng_developer.xml
