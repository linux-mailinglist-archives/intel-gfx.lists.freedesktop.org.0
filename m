Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417C828C459
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 23:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2706E81E;
	Mon, 12 Oct 2020 21:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C2BE6E804;
 Mon, 12 Oct 2020 21:52:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21D4BA47E2;
 Mon, 12 Oct 2020 21:52:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 12 Oct 2020 21:52:59 -0000
Message-ID: <160253957910.31911.507768341661037065@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
In-Reply-To: <20201012212959.871513-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_DG1?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Introduce DG1
URL   : https://patchwork.freedesktop.org/series/82594/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8623a162621b drm/i915/display: allow to skip certain power wells
-:64: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well_descs' - possible side-effects?
#64: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:4598:
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
 	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
68df339f83b7 drm/i915/cnl: skip PW_DDI_F on certain skus
d0032ba13005 drm/i915/dg1: Add DG1 power wells
427e81efb3e5 drm/i915/dg1: Add DPLL macros for DG1
4718a2b29fcc drm/i915/dg1: Add and setup DPLLs for DG1
bd28cc6aa15c drm/i915/dg1: Enable DPLL for DG1
b60e1f572176 drm/i915/dg1: add hpd interrupt handling
5c559e0d9227 drm/i915/dg1: invert HPD pins
4a9095a0b7bb drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10324:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
2277e81c77bb drm/i915/dg1: Enable ports
-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Aditya Swarup <aditya.swarup@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
51a8641ffb98 drm/i915/dg1: Load DMC
5da8aa482e31 drm/i915/dg1: Add initial DG1 workarounds
ad249d6324c6 drm/i915/dg1: DG1 does not support DC6
ef788aaa1608 drm/i915/dg1: Update DMC_DEBUG register
3200a254244e drm/i915/dgfx: define llc and snooping behaviour


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
