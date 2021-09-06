Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4B940182D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 10:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3AF89958;
	Mon,  6 Sep 2021 08:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11DE489954;
 Mon,  6 Sep 2021 08:46:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 074E3A01BB;
 Mon,  6 Sep 2021 08:46:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 08:46:20 -0000
Message-ID: <163091798099.30428.7601661388155153042@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906073519.4615-1-hdegoede@redhat.com>
In-Reply-To: <20210906073519.4615-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_privacy-screen_class_and_connector_properties_?=
 =?utf-8?b?KHJldjQp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Add privacy-screen class and connector properties (rev4)
URL   : https://patchwork.freedesktop.org/series/79259/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc1b50a446f7 drm/connector: Add support for privacy-screen properties (v4)
-:30: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#30: 
Co-authored-by: Hans de Goede <hdegoede@redhat.com>

-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/gpu/drm/drm_connector.c:2408:
+		drm_property_create_enum(connector->dev, DRM_MODE_PROP_ENUM,
+				"privacy-screen sw-state",

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/drm_connector.c:2413:
+		drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_ENUM,

total: 0 errors, 1 warnings, 2 checks, 205 lines checked
103f4901ff19 drm: Add privacy-screen class (v3)
-:131: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#131: 
new file mode 100644

-:168: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev' - possible side-effects?
#168: FILE: drivers/gpu/drm/drm_privacy_screen.c:33:
+#define to_drm_privacy_screen(dev) \
+	container_of(dev, struct drm_privacy_screen, dev)

-:216: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#216: FILE: drivers/gpu/drm/drm_privacy_screen.c:81:
+static struct drm_privacy_screen *drm_privacy_screen_get_by_name(

-:417: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#417: FILE: drivers/gpu/drm/drm_privacy_screen.c:282:
+}
+/*

-:479: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#479: FILE: drivers/gpu/drm/drm_privacy_screen.c:344:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:575: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#575: FILE: include/drm/drm_privacy_screen_consumer.h:33:
+}
+static inline void drm_privacy_screen_put(struct drm_privacy_screen *priv)

-:578: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#578: FILE: include/drm/drm_privacy_screen_consumer.h:36:
+}
+static inline int drm_privacy_screen_set_sw_state(struct drm_privacy_screen *priv,

-:583: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#583: FILE: include/drm/drm_privacy_screen_consumer.h:41:
+}
+static inline void drm_privacy_screen_get_state(struct drm_privacy_screen *priv,

-:674: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#674: FILE: include/drm/drm_privacy_screen_driver.h:76:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:721: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#721: FILE: include/drm/drm_privacy_screen_machine.h:37:
+}
+static inline void drm_privacy_screen_lookup_exit(void)

total: 0 errors, 1 warnings, 9 checks, 640 lines checked
4c5269c0a347 drm/privacy-screen: Add X86 specific arch init code
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
5112840ff391 drm/privacy-screen: Add notifier support
-:122: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#122: FILE: include/drm/drm_privacy_screen_consumer.h:53:
 }
+static inline int drm_privacy_screen_register_notifier(struct drm_privacy_screen *priv,

-:127: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#127: FILE: include/drm/drm_privacy_screen_consumer.h:58:
+}
+static inline int drm_privacy_screen_unregister_notifier(struct drm_privacy_screen *priv,

total: 0 errors, 0 warnings, 2 checks, 123 lines checked
016dd07be125 drm/connector: Add a drm_connector privacy-screen helper functions
-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/drm_connector.c:555:
+		drm_privacy_screen_register_notifier(connector->privacy_screen,
+					   &connector->privacy_screen_notifier);

-:69: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#69: FILE: drivers/gpu/drm/drm_connector.c:593:
+		drm_privacy_screen_unregister_notifier(

-:80: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#80: FILE: drivers/gpu/drm/drm_connector.c:2461:
+static void drm_connector_update_privacy_screen_properties(

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/drm_connector.c:2471:
+	drm_object_property_set_value(&connector->base,
+			connector->privacy_screen_hw_state_property, hw_state);

-:93: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#93: FILE: drivers/gpu/drm/drm_connector.c:2474:
+static int drm_connector_privacy_screen_notifier(

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/drm_connector.c:2486:
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_sw_state_property);

-:107: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#107: FILE: drivers/gpu/drm/drm_connector.c:2488:
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_hw_state_property);

-:124: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#124: FILE: drivers/gpu/drm/drm_connector.c:2505:
+void drm_connector_attach_privacy_screen_provider(

-:166: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#166: FILE: drivers/gpu/drm/drm_connector.c:2547:
+	ret = drm_privacy_screen_set_sw_state(connector->privacy_screen,
+				new_connector_state->privacy_screen_sw_state);

-:217: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#217: FILE: include/drm/drm_connector.h:1787:
+void drm_connector_attach_privacy_screen_provider(

total: 0 errors, 0 warnings, 10 checks, 185 lines checked
dbce67d00f3d platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey() helper
4493056b11ea platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI handles only once
d68628f78bef platform/x86: thinkpad_acpi: Register a privacy-screen device
-:90: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#90: FILE: drivers/platform/x86/thinkpad_acpi.c:9845:
+	priv->hw_state = priv->sw_state = state;

-:107: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#107: FILE: drivers/platform/x86/thinkpad_acpi.c:9856:
+	priv->hw_state = priv->sw_state = output & 0x1;

total: 0 errors, 0 warnings, 2 checks, 183 lines checked
ff55a0aefb53 drm/i915: Add privacy-screen support


