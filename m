Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BD2434295
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA676E20E;
	Wed, 20 Oct 2021 00:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614E66E20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 00:29:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228534865"
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="228534865"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:29:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="532441056"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:29:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 19 Oct 2021 17:35:57 -0700
Message-Id: <20211020003558.222198-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Rename
 POWER_DOMAIN_DPLL_DC_OFF to POWER_DOMAIN_DC_OFF
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This power domain to disable DC states will be used in places outside
of DPLL, so making the name more generic.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d88da0d0f05ac..6637760d24e0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -155,8 +155,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "MODESET";
 	case POWER_DOMAIN_GT_IRQ:
 		return "GT_IRQ";
-	case POWER_DOMAIN_DPLL_DC_OFF:
-		return "DPLL_DC_OFF";
+	case POWER_DOMAIN_DC_OFF:
+		return "DC_OFF";
 	case POWER_DOMAIN_TC_COLD_OFF:
 		return "TC_COLD_OFF";
 	default:
@@ -2803,7 +2803,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	ICL_PW_2_POWER_DOMAINS |			\
 	BIT_ULL(POWER_DOMAIN_MODESET) |			\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_DPLL_DC_OFF) |			\
+	BIT_ULL(POWER_DOMAIN_DC_OFF) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 
 #define ICL_DDI_IO_A_POWER_DOMAINS (			\
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 0612e4b6e3c81..d54b7574ed373 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,7 +117,7 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
-	POWER_DOMAIN_DPLL_DC_OFF,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_TC_COLD_OFF,
 	POWER_DOMAIN_INIT,
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ca69b67bbc231..fc8fda77483ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3741,7 +3741,7 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 		 * domain.
 		 */
 		pll->wakeref = intel_display_power_get(dev_priv,
-						       POWER_DOMAIN_DPLL_DC_OFF);
+						       POWER_DOMAIN_DC_OFF);
 	}
 
 	icl_pll_power_enable(dev_priv, pll, enable_reg);
@@ -3848,7 +3848,7 @@ static void combo_pll_disable(struct drm_i915_private *dev_priv,
 
 	if (IS_JSL_EHL(dev_priv) &&
 	    pll->info->id == DPLL_ID_EHL_DPLL4)
-		intel_display_power_put(dev_priv, POWER_DOMAIN_DPLL_DC_OFF,
+		intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF,
 					pll->wakeref);
 }
 
@@ -4232,7 +4232,7 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 	if (IS_JSL_EHL(i915) && pll->on &&
 	    pll->info->id == DPLL_ID_EHL_DPLL4) {
 		pll->wakeref = intel_display_power_get(i915,
-						       POWER_DOMAIN_DPLL_DC_OFF);
+						       POWER_DOMAIN_DC_OFF);
 	}
 
 	pll->state.pipe_mask = 0;
-- 
2.33.1

