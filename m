Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 287408AC591
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 09:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1EF10F33F;
	Mon, 22 Apr 2024 07:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54DA511267A;
 Mon, 22 Apr 2024 07:29:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_display_suppo?=
 =?utf-8?q?rt_for_Battlemage_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Apr 2024 07:29:22 -0000
Message-ID: <171377096234.1569863.3446053717563716220@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

Series: Enable display support for Battlemage (rev2)
URL   : https://patchwork.freedesktop.org/series/132429/
State : warning

== Summary ==

Error: dim checkpatch failed
5adf546fb828 drm/xe/display: Lane reversal requires writes to both context lanes
47d772e57abf drm/i915/bmg: Define IS_BATTLEMAGE macro
-:35: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#35: FILE: drivers/gpu/drm/i915/i915_drv.h:545:
+#define IS_LUNARLAKE(i915) (0 && i915)

-:36: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#36: FILE: drivers/gpu/drm/i915/i915_drv.h:546:
+#define IS_BATTLEMAGE(i915)  (0 && i915)

total: 0 errors, 0 warnings, 2 checks, 16 lines checked
666772b8eca1 drm/i915/xe2hpd: Initial cdclk table
ded9bbbe8a4a drm/i915/bmg: Extend DG2 tc check to future
1faeea334731 drm/i915/xe2hpd: Properly disable power in port A
9807345d6a2d drm/i915/xe2hpd: Add new C20 PHY SRAM address
-:78: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2201:
+									  PHY_C20_B_MPLLB_CNTX_CFG(i915, i));

-:84: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2205:
+									  PHY_C20_A_MPLLB_CNTX_CFG(i915, i));

-:94: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2213:
+									  PHY_C20_B_MPLLA_CNTX_CFG(i915, i));

-:100: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#100: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2217:
+									  PHY_C20_A_MPLLA_CNTX_CFG(i915, i));

-:190: ERROR:SPACING: space required after that ',' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:276:
+#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) == IP_VER(14,1))
                             	                                    ^

-:193: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:279:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))

-:195: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:281:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))

-:203: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#203: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:285:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))

-:205: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:287:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_CMN_CNTX_CFG : _MTL_C20_B_CMN_CNTX_CFG) - (idx))

total: 1 errors, 8 warnings, 0 checks, 186 lines checked
9fe3021a7a07 drm/i915/xe2hpd: Add support for eDP PLL configuration
230e4bd54950 drm/i915/xe2hpd: update pll values in sync with Bspec
772433d8abff drm/i915/xe2hpd: Add display info
6c154275fd06 drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes
db65edc5384f drm/i915/xe2hpd: Add max memory bandwidth algorithm
0c9b7dca68c3 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
52735a96e807 drm/i915/bmg: BMG should re-use MTL's south display logic
4eade5e6a2e5 Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
9118fe127d6e drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
4cb19a4f43dd drm/xe/gt_print: add xe_gt_err_once()
c4d54d6e76ab drm/xe/device: implement transient flush
2323e2089516 drm/i915/display: perform transient flush
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
01b36e03d031 drm/xe/bmg: Enable the display support


