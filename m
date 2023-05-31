Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE93718A3A
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 21:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BBE10E50F;
	Wed, 31 May 2023 19:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6379710E50F;
 Wed, 31 May 2023 19:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CF1CACC20;
 Wed, 31 May 2023 19:33:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 31 May 2023 19:33:42 -0000
Message-ID: <168556162234.17618.2254249249416928901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_based_on_port=5Fmask_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Init DDI ports based on port_mask (rev3)
URL   : https://patchwork.freedesktop.org/series/117641/
State : warning

== Summary ==

Error: dim checkpatch failed
67cd6af1981f drm/i915: Remove bogus DDI-F from hsw/bdw output init
a501e7fc9ff2 drm/i915: Introduce device info port_mask
-:101: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:307:
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:108: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:314:
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:118: WARNING:LONG_LINE_COMMENT: line length of 133 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:328:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:126: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:350:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:134: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:364:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:150: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#150: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:397:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:158: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:415:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:174: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:455:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:272: CHECK:LINE_SPACING: Please don't use multiple blank lines
#272: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:538:
 
+

-:276: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#276: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:542:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:292: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#292: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:598:
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),

-:334: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#334: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:693:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D_XELPD) |

total: 0 errors, 11 warnings, 1 checks, 346 lines checked
a605f4da091d drm/i915: Assert that device info bitmasks have enough bits
32ad0991d541 drm/i915: Assert that the port being initialized is valid
5e9b2a1e5aee drm/i915: Beef up SDVO/HDMI port checks
eb6a39cf08a9 drm/i915: Init DDI outputs based on port_mask on skl+
2c734eff5e3c drm/i915: Convert HSW/BDW to use port_mask for DDI probe


