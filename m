Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CEE2623CF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 02:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCBB6E157;
	Wed,  9 Sep 2020 00:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15C486E157;
 Wed,  9 Sep 2020 00:03:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E0EDA7DFE;
 Wed,  9 Sep 2020 00:03:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 09 Sep 2020 00:03:29 -0000
Message-ID: <159960980902.8836.10661799001666192984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200908233955.11311-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200908233955.11311-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28?=
 =?utf-8?q?rev3=29?=
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

Series: drm/i915/pll: Centralize PLL_ENABLE register lookup (rev3)
URL   : https://patchwork.freedesktop.org/series/81150/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3be3651c4fb7 drm/i915/pll: Centralize PLL_ENABLE register lookup
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:152:
+i915_reg_t intel_combo_pll_enable_reg(struct drm_i915_private *dev_priv,
+				    struct intel_shared_dpll *pll)

-:35: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#35: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:154:
+{
+

-:36: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#36: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id == DPLL_ID_EHL_DPLL4))
+			return MG_PLL_ENABLE(0);

-:36: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#36: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:41: CHECK:LINE_SPACING: Please don't use multiple blank lines
#41: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:160:
+
+

-:42: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#42: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:161:
+
+}

total: 0 errors, 1 warnings, 5 checks, 65 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
