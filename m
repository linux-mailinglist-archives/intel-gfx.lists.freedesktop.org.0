Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2605C8A5C84
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 22:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F3D10E7EB;
	Mon, 15 Apr 2024 20:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB88810E7EB;
 Mon, 15 Apr 2024 20:58:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_display_suppo?=
 =?utf-8?q?rt_for_Battlemage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 20:58:34 -0000
Message-ID: <171321471470.1423804.232901772396668431@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

Series: Enable display support for Battlemage
URL   : https://patchwork.freedesktop.org/series/132429/
State : warning

== Summary ==

Error: dim checkpatch failed
7b481503a16a drm/xe/display: Lane reversal requires writes to both context lanes
9846f194e976 drm/i915/display: Enable RM timeout detection
d2d6861c4a95 drm/i915/bmg: Define IS_BATTLEMAGE macro
-:35: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#35: FILE: drivers/gpu/drm/i915/i915_drv.h:545:
+#define IS_LUNARLAKE(i915) (0 && i915)

-:36: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#36: FILE: drivers/gpu/drm/i915/i915_drv.h:546:
+#define IS_BATTLEMAGE(i915)  (0 && i915)

total: 0 errors, 0 warnings, 2 checks, 16 lines checked
f21722e5a1a3 drm/i915/xe2hpd: Skip CCS modifiers
-:10: WARNING:TYPO_SPELLING: 'auxillary' may be misspelled - perhaps 'auxiliary'?
#10: 
auxillary surface in the plane, containing the CCS data.  But on
^^^^^^^^^

-:12: WARNING:TYPO_SPELLING: 'auxillary' may be misspelled - perhaps 'auxiliary'?
#12: 
part of the plane. It contains no auxillary surface.
                                  ^^^^^^^^^

-:41: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#41: FILE: drivers/gpu/drm/i915/display/intel_fb.c:435:
+	if (intel_fb_is_ccs_modifier(md->modifier)) {
+

total: 0 errors, 2 warnings, 1 checks, 22 lines checked
ddb2038eff98 drm/i915/xe2hpd: Initial cdclk table
5f7384cf9619 drm/i915/bmg: Extend DG2 tc check to future
996917ef9a77 drm/i915/xe2hpd: Properly disable power in port A
9670370a984c drm/i915/xe2hpd: Add new C20 PHY SRAM address
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

total: 0 errors, 4 warnings, 0 checks, 203 lines checked
cc9949785238 drm/i915/xe2hpd: Add support for eDP PLL configuration
907b8baf0534 drm/i915/xe2hpd: update pll values in sync with Bspec
-:13: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Matt Roper <matthew.d.roper@intel.com'
#13: 
Reviewed-by: Matt Roper <matthew.d.roper@intel.com

total: 1 errors, 0 warnings, 0 checks, 63 lines checked
4a77891392e1 drm/i915/xe2hpd: Add display info
679e3e1fe907 drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes
65f214fabdb1 drm/i915/xe2hpd: Add max memory bandwidth algorithm
588ecac64872 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
9ab2a09e8c47 drm/i915/bmg: BMG should re-use MTL's south display logic
db96fdf0fd8e Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
8b55113d20b9 drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
ff9b3247174f drm/xe/gt_print: add xe_gt_err_once()
fa62a2f06462 drm/xe/device: implement transient flush
e3f4d7dd775d drm/i915/display: perform transient flush
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
f50365fa323c drm/xe/bmg: Enable the display support


