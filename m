Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F19AB3F29
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 19:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0449210E46E;
	Mon, 12 May 2025 17:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335AA10E053;
 Mon, 12 May 2025 17:32:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/ptl=3A_Use_?=
 =?utf-8?q?everywhere_the_correct_DDI_port_clock_select_mask?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 May 2025 17:32:17 -0000
Message-ID: <174707113720.70813.6739665588107646896@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250512142600.824347-1-imre.deak@intel.com>
In-Reply-To: <20250512142600.824347-1-imre.deak@intel.com>
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

Series: drm/i915/ptl: Use everywhere the correct DDI port clock select mask
URL   : https://patchwork.freedesktop.org/series/148894/
State : warning

== Summary ==

Error: dim checkpatch failed
a41b8fdb6163 drm/i915/ptl: Use everywhere the correct DDI port clock select mask
-:66: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3172:
+					    intel_mtl_tbt_clock_select(display, crtc_state->port_clock));

-:112: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:198:
+							 _XE3_DDI_CLOCK_SELECT_MASK : _XELPDP_DDI_CLOCK_SELECT_MASK)

-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:199:
+#define   XELPDP_DDI_CLOCK_SELECT_PREP(display, val)	(DISPLAY_VER(display) >= 30 ? \
+							 REG_FIELD_PREP(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
+							 REG_FIELD_PREP(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))

-:114: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:200:
+							 REG_FIELD_PREP(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \

-:115: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:201:
+							 REG_FIELD_PREP(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))

-:116: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#116: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:202:
+#define   XELPDP_DDI_CLOCK_SELECT_GET(display, val)	(DISPLAY_VER(display) >= 30 ? \
+							 REG_FIELD_GET(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
+							 REG_FIELD_GET(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))

-:117: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:203:
+							 REG_FIELD_GET(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \

-:118: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:204:
+							 REG_FIELD_GET(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))

-:122: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 7 warnings, 2 checks, 91 lines checked


