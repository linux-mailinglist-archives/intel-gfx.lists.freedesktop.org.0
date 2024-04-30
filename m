Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A2E8B7FEC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 20:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99288112E3A;
	Tue, 30 Apr 2024 18:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9BF112E39;
 Tue, 30 Apr 2024 18:42:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_display_suppo?=
 =?utf-8?q?rt_for_Battlemage_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 18:42:15 -0000
Message-ID: <171450253584.1793102.15853429785531784857@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

Series: Enable display support for Battlemage (rev3)
URL   : https://patchwork.freedesktop.org/series/132429/
State : warning

== Summary ==

Error: dim checkpatch failed
f1746e09cce1 drm/i915/bmg: Lane reversal requires writes to both context lanes
1f4c0c333523 drm/i915/bmg: Define IS_BATTLEMAGE macro
-:36: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#36: FILE: drivers/gpu/drm/i915/i915_drv.h:545:
+#define IS_LUNARLAKE(i915) (0 && i915)

-:37: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#37: FILE: drivers/gpu/drm/i915/i915_drv.h:546:
+#define IS_BATTLEMAGE(i915)  (0 && i915)

total: 0 errors, 0 warnings, 2 checks, 16 lines checked
7646a5845c9e drm/i915/xe2hpd: Initial cdclk table
807b6ed291be drm/i915/bmg: Extend DG2 tc check to future
b604b7e04284 drm/i915/xe2hpd: Properly disable power in port A
28ffde021d25 drm/i915/xe2hpd: Add new C20 PHY SRAM address
-:80: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2201:
+									  PHY_C20_B_MPLLB_CNTX_CFG(i915, i));

-:86: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2205:
+									  PHY_C20_A_MPLLB_CNTX_CFG(i915, i));

-:96: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2213:
+									  PHY_C20_B_MPLLA_CNTX_CFG(i915, i));

-:102: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2217:
+									  PHY_C20_A_MPLLA_CNTX_CFG(i915, i));

-:195: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:279:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))

-:197: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:281:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))

-:205: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:285:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))

-:207: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:287:
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_CMN_CNTX_CFG : _MTL_C20_B_CMN_CNTX_CFG) - (idx))

total: 0 errors, 8 warnings, 0 checks, 186 lines checked
f5d924d272ac drm/i915/xe2hpd: Add support for eDP PLL configuration
09a439a2a899 drm/i915/xe2hpd: update pll values in sync with Bspec
4d5f82862e88 drm/i915/xe2hpd: Add display info
ebdc8b9b543d drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes
be26cf5266c1 drm/i915/xe2hpd: Add max memory bandwidth algorithm
dd732ff9cfa4 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
bfa9506dd656 drm/i915/bmg: BMG should re-use MTL's south display logic
c2baf9f5c3f2 Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
b46debdf0a5f drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
13550a8d9ec5 drm/xe/gt_print: add xe_gt_err_once()
5e8c3853eea1 drm/xe/device: implement transient flush
b1166e0edf40 drm/i915/display: perform transient flush
-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
c91c48888796 drm/xe/bmg: Enable the display support


