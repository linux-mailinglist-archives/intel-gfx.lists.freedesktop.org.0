Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2A929CCAD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 00:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A3F6E3E5;
	Tue, 27 Oct 2020 23:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC4A86E3E5;
 Tue, 27 Oct 2020 23:27:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4B4DA66C9;
 Tue, 27 Oct 2020 23:27:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 27 Oct 2020 23:27:12 -0000
Message-ID: <160384123270.26909.7354433479517913254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027043228.696518-1-lucas.demarchi@intel.com>
In-Reply-To: <20201027043228.696518-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/dg1=3A_map/unmap_pl?=
 =?utf-8?q?l_clocks?=
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

Series: series starting with [1/3] drm/i915/dg1: map/unmap pll clocks
URL   : https://patchwork.freedesktop.org/series/83069/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8bd39690adad drm/i915/dg1: map/unmap pll clocks
-:253: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/i915_reg.h:10359:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << (_DG1_DPCLKA_PHY_IDX(phy) * 2))

-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/i915_reg.h:10361:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_TO_PLL_ID(val, phy) \
+	((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> (_DG1_DPCLKA_PHY_IDX(phy) * 2)) + \
+	 ((phy) >= PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0))

total: 0 errors, 1 warnings, 1 checks, 212 lines checked
00b4fd3ef70e drm/i915/dg1: Enable ports
aacc34d823b5 drm/i915/dg1: make Wa_22010271021 permanent


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
