Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BCE259EE6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 21:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9F06E8D3;
	Tue,  1 Sep 2020 19:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44AF86E2C8;
 Tue,  1 Sep 2020 19:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B65CA011A;
 Tue,  1 Sep 2020 19:00:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 01 Sep 2020 19:00:54 -0000
Message-ID: <159898685428.31089.9349990486171112956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200901182758.29203-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200901182758.29203-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/pll: Centralize PLL_ENABLE register lookup (rev2)
URL   : https://patchwork.freedesktop.org/series/81150/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2b838e80247e drm/i915/pll: Centralize PLL_ENABLE register lookup
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:152:
+i915_reg_t intel_combo_pll_enable_reg(struct drm_i915_private *dev_priv,
+				    struct intel_shared_dpll *pll)

-:32: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#32: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:154:
+{
+

-:33: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#33: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id == DPLL_ID_EHL_DPLL4))
+			return MG_PLL_ENABLE(0);

-:33: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#33: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:38: CHECK:LINE_SPACING: Please don't use multiple blank lines
#38: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:160:
+
+

-:39: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#39: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:161:
+
+}

total: 0 errors, 1 warnings, 5 checks, 55 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
