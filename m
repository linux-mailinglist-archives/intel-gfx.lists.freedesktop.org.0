Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90776367484
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 23:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0A96E9F9;
	Wed, 21 Apr 2021 21:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A02A6E9F8;
 Wed, 21 Apr 2021 21:03:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F003A8169;
 Wed, 21 Apr 2021 21:03:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 21 Apr 2021 21:03:20 -0000
Message-ID: <161903900029.19926.8560849960353098059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421204804.589962-1-hdegoede@redhat.com>
In-Reply-To: <20210421204804.589962-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_privacy-screen_class_and_connector_properties_?=
 =?utf-8?b?KHJldjMp?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Add privacy-screen class and connector properties (rev3)
URL   : https://patchwork.freedesktop.org/series/79259/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ac8be957664f drm/connector: Add support for privacy-screen properties (v4)
-:30: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#30: 
Co-authored-by: Hans de Goede <hdegoede@redhat.com>

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: drivers/gpu/drm/drm_connector.c:2319:
+		drm_property_create_enum(connector->dev, DRM_MODE_PROP_ENUM,
+				"privacy-screen sw-state",

-:154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#154: FILE: drivers/gpu/drm/drm_connector.c:2324:
+		drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_ENUM,

total: 0 errors, 1 warnings, 2 checks, 205 lines checked
7e5c15daa117 drm: Add privacy-screen class (v2)
-:125: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#125: 
new file mode 100644

-:162: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev' - possible side-effects?
#162: FILE: drivers/gpu/drm/drm_privacy_screen.c:33:
+#define to_drm_privacy_screen(dev) \
+	container_of(dev, struct drm_privacy_screen, dev)

-:210: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#210: FILE: drivers/gpu/drm/drm_privacy_screen.c:81:
+static struct drm_privacy_screen *drm_privacy_screen_get_by_name(

-:411: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#411: FILE: drivers/gpu/drm/drm_privacy_screen.c:282:
+}
+/*

-:473: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#473: FILE: drivers/gpu/drm/drm_privacy_screen.c:344:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:569: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#569: FILE: include/drm/drm_privacy_screen_consumer.h:33:
+}
+static inline void drm_privacy_screen_put(struct drm_privacy_screen *priv)

-:572: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#572: FILE: include/drm/drm_privacy_screen_consumer.h:36:
+}
+static inline int drm_privacy_screen_set_sw_state(struct drm_privacy_screen *priv,

-:577: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#577: FILE: include/drm/drm_privacy_screen_consumer.h:41:
+}
+static inline void drm_privacy_screen_get_state(struct drm_privacy_screen *priv,

-:666: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#666: FILE: include/drm/drm_privacy_screen_driver.h:76:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:713: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#713: FILE: include/drm/drm_privacy_screen_machine.h:37:
+}
+static inline void drm_privacy_screen_lookup_exit(void)

total: 0 errors, 1 warnings, 9 checks, 638 lines checked
9bd51402f3ba drm/privacy-screen: Add X86 specific arch init code
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
4f93f9d92a68 drm/privacy-screen: Add notifier support
-:121: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#121: FILE: include/drm/drm_privacy_screen_consumer.h:51:
 }
+static inline int drm_privacy_screen_register_notifier(struct drm_privacy_screen *priv,

-:126: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#126: FILE: include/drm/drm_privacy_screen_consumer.h:56:
+}
+static inline int drm_privacy_screen_unregister_notifier(struct drm_privacy_screen *priv,

total: 0 errors, 0 warnings, 2 checks, 123 lines checked
1b1cb90d0bce drm/connector: Add a drm_connector privacy-screen helper functions
-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/drm_connector.c:542:
+		drm_privacy_screen_register_notifier(connector->privacy_screen,
+					   &connector->privacy_screen_notifier);

-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/drm_connector.c:573:
+		drm_privacy_screen_unregister_notifier(

-:79: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#79: FILE: drivers/gpu/drm/drm_connector.c:2372:
+static void drm_connector_update_privacy_screen_properties(

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/drm_connector.c:2382:
+	drm_object_property_set_value(&connector->base,
+			connector->privacy_screen_hw_state_property, hw_state);

-:92: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#92: FILE: drivers/gpu/drm/drm_connector.c:2385:
+static int drm_connector_privacy_screen_notifier(

-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/drm_connector.c:2397:
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_sw_state_property);

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/drm_connector.c:2399:
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_hw_state_property);

-:123: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#123: FILE: drivers/gpu/drm/drm_connector.c:2416:
+void drm_connector_attach_privacy_screen_provider(

-:165: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#165: FILE: drivers/gpu/drm/drm_connector.c:2458:
+	ret = drm_privacy_screen_set_sw_state(connector->privacy_screen,
+				new_connector_state->privacy_screen_sw_state);

-:216: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#216: FILE: include/drm/drm_connector.h:1753:
+void drm_connector_attach_privacy_screen_provider(

total: 0 errors, 0 warnings, 10 checks, 185 lines checked
ee59d864afd4 platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey() helper
d7f9f5f26c6f platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI handles only once
ff66a2279810 platform/x86: thinkpad_acpi: Register a privacy-screen device
-:89: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#89: FILE: drivers/platform/x86/thinkpad_acpi.c:9785:
+	priv->hw_state = priv->sw_state = state;

-:106: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#106: FILE: drivers/platform/x86/thinkpad_acpi.c:9796:
+	priv->hw_state = priv->sw_state = output & 0x1;

total: 0 errors, 0 warnings, 2 checks, 183 lines checked
ed2a0fed7736 drm/i915: Add privacy-screen support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
