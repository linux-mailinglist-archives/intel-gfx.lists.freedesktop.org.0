Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C77733401
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E7610E650;
	Fri, 16 Jun 2023 14:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFE2C10E02B;
 Fri, 16 Jun 2023 14:55:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8A8BA0093;
 Fri, 16 Jun 2023 14:55:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 16 Jun 2023 14:55:21 -0000
Message-ID: <168692732180.9826.538892700960670838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_based_on_port=5Fmask_=28rev4=29?=
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

Series: drm/i915: Init DDI ports based on port_mask (rev4)
URL   : https://patchwork.freedesktop.org/series/117641/
State : warning

== Summary ==

Error: dim checkpatch failed
7f76f42ce69c drm/i915: Remove bogus DDI-F from hsw/bdw output init
701f1f810f87 drm/i915: Introduce device info port_mask
-:105: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:319:
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:112: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:326:
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */

-:122: WARNING:LONG_LINE_COMMENT: line length of 133 exceeds 100 columns
#122: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:340:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:130: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:362:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:138: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:376:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:154: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#154: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:409:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:162: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:427:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:178: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#178: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:467:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:279: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:553:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),

-:299: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#299: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:613:
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),

-:341: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#341: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:708:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D_XELPD) |

total: 0 errors, 11 warnings, 0 checks, 342 lines checked
8a3e8bd3d9ba drm/i915: Assert that device info bitmasks have enough bits
403ac3a17be2 drm/i915: Assert that the port being initialized is valid
21b5e6d1a27a drm/i915: Beef up SDVO/HDMI port checks
5fe2c6ee6495 drm/i915: Init DDI outputs based on port_mask on skl+
d1c88773301e drm/i915: Convert HSW/BDW to use port_mask for DDI probe


