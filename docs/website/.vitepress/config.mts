/**
 * Copyright (c) 2024, WSO2 LLC. (https://www.wso2.com).
 *
 * WSO2 LLC. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

import { defineConfig } from "vitepress"

export default defineConfig({
  base: "/mobile-ui-sdks/",
  ignoreDeadLinks: true,
  title: "Mobile SDKs",
  description: "Welcome to our comprehensive documentation site for Mobile SDKs for Asgardeo! Here, you'll find everything you need to seamlessly integrate Asgardeo's authentication and identity management solutions into your mobile applications.",
  head: [["link", { rel: "icon", href: "/mobile-ui-sdks/asgardeo-dark.svg" }]],
  themeConfig: {
    siteTitle: "Mobile SDKs",
    logo: {
        light: "/asgardeo-light.svg",
        dark: "/asgardeo-dark.svg",
    },
    nav: [
      { text: "Home", link: "/" },
      { text: "Android SDK", link: "/android/getting-started.html" }
    ],

    sidebar: [
      {
        text: "Android SDK",
        items: [
          { text: "Getting Started", link: "/android/getting-started" },
          { text: "Use Authenticators", link: "/android/use-authenticators" },
          { text: "APIs", link: "/android/apis" }
        ]
      }
    ],

    socialLinks: [
      { icon: "discord", link: "https://discord.com/invite/wso2" },
      { icon: "github", link: "https://github.com/asgardeo/mobile-ui-sdks" }
    ]
  }
})
