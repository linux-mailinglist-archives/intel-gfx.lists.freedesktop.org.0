Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA956FFB93
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 23:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060F010E0EE;
	Thu, 11 May 2023 21:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 423E410E0EE;
 Thu, 11 May 2023 21:04:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0066A00CC;
 Thu, 11 May 2023 21:04:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 11 May 2023 21:04:34 -0000
Message-ID: <168383907476.29008.6574317621284145991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_based_on_port=5Fmask?=
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

Series: drm/i915: Init DDI ports based on port_mask
URL   : https://patchwork.freedesktop.org/series/117641/
State : warning

== Summary ==

Error: dim checkpatch failed
7fa5a06bde61 drm/i915: Remove bogus DDI-F from hsw/bdw output init
6ce69347aa4f drm/i915: Introduce device info port_mask
-:101: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/i915_pci.c:440:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:109: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/i915_pci.c:474:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:117: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/i915_pci.c:530:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:133: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/i915_pci.c:625:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E), \

-:182: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/i915_pci.c:975:
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),

total: 0 errors, 5 warnings, 0 checks, 221 lines checked
df8440f39780 drm/i915: Assert that device info bitmasks have enough bits
0e900d67d1e2 drm/i915: Assert that the port being initialized is valid
348418653bae drm/i915: Beef up SDVO/HDMI port checks
bc3590232d71 drm/i915: Init DDI outputs based on port_mask on skl+
9569bea38e15 drm/i915: Convert HSW/BDW to use port_mask for DDI probe


