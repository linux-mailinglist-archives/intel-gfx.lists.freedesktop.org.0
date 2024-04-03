Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34027896E78
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96174112A43;
	Wed,  3 Apr 2024 11:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CF2112A43;
 Wed,  3 Apr 2024 11:50:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_dislay_suppor?=
 =?utf-8?q?t_for_Battlemage_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Apr 2024 11:50:06 -0000
Message-ID: <171214500641.1172471.1729810899406389453@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Series: Enable dislay support for Battlemage (rev2)
URL   : https://patchwork.freedesktop.org/series/131984/
State : warning

== Summary ==

Error: dim checkpatch failed
240c4657f7c1 drm/i915/display: Prepare to handle new C20 PLL register address
-:75: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2207:
+									  PHY_C20_B_MPLLB_CNTX_CFG(pll_reg, i));

-:79: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2210:
+									  PHY_C20_A_MPLLB_CNTX_CFG(pll_reg, i));

-:87: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2217:
+									  PHY_C20_B_MPLLA_CNTX_CFG(pll_reg, i));

-:91: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2220:
+									  PHY_C20_A_MPLLA_CNTX_CFG(pll_reg, i));

total: 0 errors, 4 warnings, 0 checks, 186 lines checked
69c8facefd41 drm/xe/bmg: Add BMG platform definition
-:57: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#57: FILE: include/drm/xe_pciids.h:211:
+#define XE_BMG_IDS(MACRO__, ...) \
+	MACRO__(0xE202, ## __VA_ARGS__), \
+	MACRO__(0xE20B, ## __VA_ARGS__), \
+	MACRO__(0xE20C, ## __VA_ARGS__), \
+	MACRO__(0xE20D, ## __VA_ARGS__), \
+	MACRO__(0xE212, ## __VA_ARGS__)

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#57: FILE: include/drm/xe_pciids.h:211:
+#define XE_BMG_IDS(MACRO__, ...) \
+	MACRO__(0xE202, ## __VA_ARGS__), \
+	MACRO__(0xE20B, ## __VA_ARGS__), \
+	MACRO__(0xE20C, ## __VA_ARGS__), \
+	MACRO__(0xE20D, ## __VA_ARGS__), \
+	MACRO__(0xE212, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 37 lines checked
96d20b1616b6 drm/xe/bmg: Define IS_BATTLEMAGE macro
289221f8cd6f drm/i915/bmg: Define IS_BATTLEMAGE macro
-:34: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:556:
+#define IS_LUNARLAKE(i915) (0 && i915)

-:35: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#35: FILE: drivers/gpu/drm/i915/i915_drv.h:557:
+#define IS_BATTLEMAGE(i915)  (0 && i915)

total: 0 errors, 0 warnings, 2 checks, 16 lines checked
d0359d937ce9 drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
487e9de9ff69 drm/i915/xe2hpd: Initial cdclk table
d5968cd0e607 Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
5e5f6a49f006 drm/i915/bmg: Extend DG2 tc check to future
64f2ae260499 drm/i915/xe2hpd: Properly disable power in port A
0846089eb132 drm/i915/xe2hpd: Add new C20 PLL register address
6d865ce2bdff drm/i915/xe2hpd: Add support for eDP PLL configuration
da173b635b04 drm/i915/xe2hpd: update pll values in sync with Bspec
46b58969e857 drm/i915/xe2hpd: Add display info
39264a92b94a drm/i915/xe2hpd: Add missing chicken bit register programming
a753cef507fd drm/xe/display: Lane reversal requires writes to both context lanes
d23f6312d2ae drm/xe/xe2hpd: Define a new DRAM type INTEL_DRAM_GDDR
18932a957663 drm/i915/xe2hpd: Add max memory bandwidth algorithm
1fdfeb28e9af drm/i915/display: Enable RM timeout detection
843ab6f8bd36 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
ac29ab1c1868 drm/i915/bmg: BMG should re-use MTL's south display logic
ac359ca58fc0 drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
3905150000c6 drm/xe/gt_print: add xe_gt_err_once()
d13dbec17ace drm/xe/device: implement transient flush
e03d533dcefd drm/i915/display: perform transient flush
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
c5a7b285569d drm/xe/bmg: Enable the display support


