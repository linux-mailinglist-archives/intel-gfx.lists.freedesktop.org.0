Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8886B41FD4A
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 19:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AC089EB8;
	Sat,  2 Oct 2021 17:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3403B897F3;
 Sat,  2 Oct 2021 17:02:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28735A9A42;
 Sat,  2 Oct 2021 17:02:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 02 Oct 2021 17:02:12 -0000
Message-ID: <163319413213.26858.16946208946786450362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211002163618.99175-1-hdegoede@redhat.com>
In-Reply-To: <20211002163618.99175-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_privacy-screen_class_and_connector_properties_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm: Add privacy-screen class and connector properties (rev5)
URL   : https://patchwork.freedesktop.org/series/79259/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa9e8ab5d112 drm/connector: Add support for privacy-screen properties (v4)
-:151: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#151: FILE: drivers/gpu/drm/drm_connector.c:2408:
+		drm_property_create_enum(connector->dev, DRM_MODE_PROP_ENUM,
+				"privacy-screen sw-state",

-:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#156: FILE: drivers/gpu/drm/drm_connector.c:2413:
+		drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_ENUM,

total: 0 errors, 0 warnings, 2 checks, 205 lines checked
406f587b7cf9 drm: Add privacy-screen class (v4)
-:136: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#136: 
new file mode 100644

-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev' - possible side-effects?
#173: FILE: drivers/gpu/drm/drm_privacy_screen.c:33:
+#define to_drm_privacy_screen(dev) \
+	container_of(dev, struct drm_privacy_screen, dev)

-:221: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#221: FILE: drivers/gpu/drm/drm_privacy_screen.c:81:
+static struct drm_privacy_screen *drm_privacy_screen_get_by_name(

-:424: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#424: FILE: drivers/gpu/drm/drm_privacy_screen.c:284:
+}
+/*

-:486: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#486: FILE: drivers/gpu/drm/drm_privacy_screen.c:346:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:582: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#582: FILE: include/drm/drm_privacy_screen_consumer.h:33:
+}
+static inline void drm_privacy_screen_put(struct drm_privacy_screen *priv)

-:585: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#585: FILE: include/drm/drm_privacy_screen_consumer.h:36:
+}
+static inline int drm_privacy_screen_set_sw_state(struct drm_privacy_screen *priv,

-:590: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#590: FILE: include/drm/drm_privacy_screen_consumer.h:41:
+}
+static inline void drm_privacy_screen_get_state(struct drm_privacy_screen *priv,

-:681: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#681: FILE: include/drm/drm_privacy_screen_driver.h:76:
+struct drm_privacy_screen *drm_privacy_screen_register(

-:728: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#728: FILE: include/drm/drm_privacy_screen_machine.h:37:
+}
+static inline void drm_privacy_screen_lookup_exit(void)

total: 0 errors, 1 warnings, 9 checks, 642 lines checked
4410bc650ef6 drm/privacy-screen: Add X86 specific arch init code
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
54f2a33ce52e drm/privacy-screen: Add notifier support (v2)
-:126: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#126: FILE: include/drm/drm_privacy_screen_consumer.h:53:
 }
+static inline int drm_privacy_screen_register_notifier(struct drm_privacy_screen *priv,

-:131: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#131: FILE: include/drm/drm_privacy_screen_consumer.h:58:
+}
+static inline int drm_privacy_screen_unregister_notifier(struct drm_privacy_screen *priv,

total: 0 errors, 0 warnings, 2 checks, 120 lines checked
0000448b0758 drm/connector: Add a drm_connector privacy-screen helper functions (v2)
-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/drm_connector.c:554:
+		drm_privacy_screen_register_notifier(connector->privacy_screen,
+					   &connector->privacy_screen_notifier);

-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/drm_connector.c:592:
+		drm_privacy_screen_unregister_notifier(

-:79: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#79: FILE: drivers/gpu/drm/drm_connector.c:2460:
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

-:206: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#206: FILE: include/drm/drm_connector.h:1799:
+void drm_connector_attach_privacy_screen_provider(

total: 0 errors, 0 warnings, 9 checks, 167 lines checked
d630516dccc9 platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey() helper
59dfe41d6ffa platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI handles only once
af1e0d4c0398 platform/x86: thinkpad_acpi: Register a privacy-screen device
-:91: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#91: FILE: drivers/platform/x86/thinkpad_acpi.c:9845:
+	priv->hw_state = priv->sw_state = state;

-:108: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#108: FILE: drivers/platform/x86/thinkpad_acpi.c:9856:
+	priv->hw_state = priv->sw_state = output & 0x1;

total: 0 errors, 0 warnings, 2 checks, 189 lines checked
dd7b27aeeb2f drm/i915: Add intel_modeset_probe_defer() helper
685c32580e4c drm/i915: Add privacy-screen support (v2)
-:25: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:142:
+	    new_conn_state->base.privacy_screen_sw_state != old_conn_state->base.privacy_screen_sw_state ||

total: 0 errors, 1 warnings, 0 checks, 84 lines checked


