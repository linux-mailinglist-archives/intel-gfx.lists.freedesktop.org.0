Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92461709CB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8576EBCA;
	Wed, 26 Feb 2020 20:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D816EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155005"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:47 +0200
Message-Id: <20200226203455.23032-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/hsw: Use the DPLL ID when
 calculating DPLL clock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of converting DPLL ID to CLK_SEL to identify the DPLL use the
DPLL ID directly for this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e09ab0d44afa..3375d63d543f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1729,26 +1729,25 @@ static void hsw_ddi_clock_get(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int link_clock = 0;
-	u32 val, pll;
+	u32 pll;
 
-	val = hsw_pll_to_ddi_pll_sel(pipe_config->shared_dpll);
-	switch (val & PORT_CLK_SEL_MASK) {
-	case PORT_CLK_SEL_LCPLL_810:
+	switch (pipe_config->shared_dpll->info->id) {
+	case DPLL_ID_LCPLL_810:
 		link_clock = 81000;
 		break;
-	case PORT_CLK_SEL_LCPLL_1350:
+	case DPLL_ID_LCPLL_1350:
 		link_clock = 135000;
 		break;
-	case PORT_CLK_SEL_LCPLL_2700:
+	case DPLL_ID_LCPLL_2700:
 		link_clock = 270000;
 		break;
-	case PORT_CLK_SEL_WRPLL1:
+	case DPLL_ID_WRPLL1:
 		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(0));
 		break;
-	case PORT_CLK_SEL_WRPLL2:
+	case DPLL_ID_WRPLL2:
 		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
 		break;
-	case PORT_CLK_SEL_SPLL:
+	case DPLL_ID_SPLL:
 		pll = intel_de_read(dev_priv, SPLL_CTL) & SPLL_FREQ_MASK;
 		if (pll == SPLL_FREQ_810MHz)
 			link_clock = 81000;
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
