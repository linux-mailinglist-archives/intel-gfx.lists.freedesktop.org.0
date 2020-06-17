Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CE71FC336
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 03:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261FF6EA06;
	Wed, 17 Jun 2020 01:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA29C6EA06
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 01:11:14 +0000 (UTC)
IronPort-SDR: K/KSlDMTeMx6wXLW7LNIZZYDvntkfJaikFNLxjZ8nDfhiu8ivHo37168iS7Tgg83VkzyGu2NdK
 hXfJh1xrYiVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 18:11:14 -0700
IronPort-SDR: Bd/AKQI5MBiR7m9yLZTd95upU5EfjMihX8xDynzgrQTFWKIwxFkX77wy776HAyxiaZOM5BjraK
 LnZsfq9xFJ5A==
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="476650128"
Received: from pbarbago-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.50.79])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 18:11:14 -0700
Date: Tue, 16 Jun 2020 18:11:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200617011113.o5ghzgk2ileysqrm@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200616235810.3848540-1-matthew.d.roper@intel.com>
 <20200616235810.3848540-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616235810.3848540-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 2/5] drm/i915/rkl: Add DPLL4 support
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 16, 2020 at 04:58:07PM -0700, Matt Roper wrote:
>Rocket Lake has a third DPLL (called 'DPLL4') that must be used to
>enable a third display.  Unlike EHL's variant of DPLL4, the RKL variant
>behaves the same as DPLL0/1.  And despite its name, the DPLL4 registers
>are offset as if it were DPLL2, so no extra offset handling is needed
>either.
>
>v2:
> - Add new .update_ref_clks() hook.
>
>Bspec: 49202
>Bspec: 49443
>Bspec: 50288
>Bspec: 50289
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++--
> 1 file changed, 26 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>index b45185b80bec..b5f4d4cef682 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -3506,13 +3506,19 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
> 		return false;
> 	}
>
>-	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
>+	if (IS_ROCKETLAKE(dev_priv)) {
> 		dpll_mask =
> 			BIT(DPLL_ID_EHL_DPLL4) |
> 			BIT(DPLL_ID_ICL_DPLL1) |
> 			BIT(DPLL_ID_ICL_DPLL0);

I don't think that is sufficient. As you said in the commit message,
here DPLL4 are much like DPLL0, DPLL1 rather than the special treatment
it has in EHL.

That means we need to update the places making use of it. Example:
TGL_DPLL_CFGCR0()
TGL_DPLL_CFGCR1()

The way it is now, it would basically be using the address
0x16429C / 0x1642A0 that are actually for TBT


Looking at bspec 50288, it seems we should reorder the IDs to be
DPLL0, DPLL1, DPLL4, TBTPLL. Then we can go back and use _MMIO_PLL()
rather than _MMIO_PLL3(). There is even a "TODO" in the right place in
the source code for that, although I don't remember if in TGL it has any
special. I think we never added it for TGL just because with 2 combo
ports you will never need 3 PLLs.

Lucas De Marchi

>-	else
>+	} else if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A) {
>+		dpll_mask =
>+			BIT(DPLL_ID_EHL_DPLL4) |
>+			BIT(DPLL_ID_ICL_DPLL1) |
>+			BIT(DPLL_ID_ICL_DPLL0);
>+	} else {
> 		dpll_mask = BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
>+	}
>
> 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
> 						&port_dpll->hw_state,
>@@ -4275,6 +4281,21 @@ static const struct intel_dpll_mgr tgl_pll_mgr = {
> 	.dump_hw_state = icl_dump_hw_state,
> };
>
>+static const struct dpll_info rkl_plls[] = {
>+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
>+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
>+	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
>+	{ },
>+};
>+
>+static const struct intel_dpll_mgr rkl_pll_mgr = {
>+	.dpll_info = rkl_plls,
>+	.get_dplls = icl_get_dplls,
>+	.put_dplls = icl_put_dplls,
>+	.update_ref_clks = icl_update_dpll_ref_clks,
>+	.dump_hw_state = icl_dump_hw_state,
>+};
>+
> /**
>  * intel_shared_dpll_init - Initialize shared DPLLs
>  * @dev: drm device
>@@ -4288,7 +4309,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
> 	const struct dpll_info *dpll_info;
> 	int i;
>
>-	if (INTEL_GEN(dev_priv) >= 12)
>+	if (IS_ROCKETLAKE(dev_priv))
>+		dpll_mgr = &rkl_pll_mgr;
>+	else if (INTEL_GEN(dev_priv) >= 12)
> 		dpll_mgr = &tgl_pll_mgr;
> 	else if (IS_ELKHARTLAKE(dev_priv))
> 		dpll_mgr = &ehl_pll_mgr;
>-- 
>2.24.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
