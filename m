Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17E98CC635
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AFF10E296;
	Wed, 22 May 2024 18:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF62E10E296;
 Wed, 22 May 2024 18:19:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_identify?=
 =?utf-8?q?_all_platforms_in_display_probe?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2024 18:19:18 -0000
Message-ID: <171640195878.2167933.9289928949078981214@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1716399081.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
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

Series: drm/i915: identify all platforms in display probe
URL   : https://patchwork.freedesktop.org/series/133932/
State : warning

== Summary ==

Error: dim checkpatch failed
4b7fb7e322d3 drm/i915/display: move params copy at probe earlier
1740c90203fa drm/i915/display: change probe for no display case
d09e0d981dd9 drm/i915/display: check platforms without display one level higher
9fec60fe3fc3 drm/i915/display: change GMD ID display ip ver propagation at probe
347981472468 drm/i915/display: add platform descriptors
-:51: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:211:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */

-:238: WARNING:LONG_LINE_COMMENT: line length of 117 exceeds 100 columns
#238: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:349:
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:252: WARNING:LONG_LINE_COMMENT: line length of 117 exceeds 100 columns
#252: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:358:
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:302: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#302: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:400:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:328: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#328: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:416:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:395: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#395: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:455:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:433: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#433: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:477:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:463: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#463: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:495:
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */

-:545: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#545: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:627:
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

total: 0 errors, 9 warnings, 0 checks, 728 lines checked
6911c76c17b3 drm/i915: add LNL PCI IDs
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: include/drm/i915_pciids.h:787:
+#define INTEL_LNL_IDS(MACRO__, ...) \
+	MACRO__(0x6420, ## __VA_ARGS__), \
+	MACRO__(0x64A0, ## __VA_ARGS__), \
+	MACRO__(0x64B0, ## __VA_ARGS__)

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#22: FILE: include/drm/i915_pciids.h:787:
+#define INTEL_LNL_IDS(MACRO__, ...) \
+	MACRO__(0x6420, ## __VA_ARGS__), \
+	MACRO__(0x64A0, ## __VA_ARGS__), \
+	MACRO__(0x64B0, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 10 lines checked
79c37572339f drm/i915/display: change display probe to identify GMD ID based platforms
-:108: ERROR:CODE_INDENT: code indent should use tabs where possible
#108: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:1044:
+        if (!info)$

-:108: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#108: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:1044:
+        if (!info)$

total: 1 errors, 1 warnings, 0 checks, 89 lines checked
4b7235ae8cf5 drm/i915/display: identify platforms with enum and name
23bf096a14df drm/i915/display: add support for subplatforms
da0463e24a73 drm/i915/display: add probe message


