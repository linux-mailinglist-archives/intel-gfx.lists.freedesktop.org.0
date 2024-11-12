Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC279C55E3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64FF10E03E;
	Tue, 12 Nov 2024 11:11:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BPyXJYd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C7A10E03E;
 Tue, 12 Nov 2024 11:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409892; x=1762945892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cQE1NRUOxBITSO250cnNfqrn26oy74J/2qO2/i0bF5o=;
 b=BPyXJYd0iXQiA6hag+K+V86NfZabEwg2bjs8JS0b/YD6oJjX+BZwX1KP
 HHJ8DA2kG5XmzhGnahY3E5gEVS2b03Ay2I7fcrUkYaQCz9MEtI5D25pkJ
 HA36qo/t782UGdo9ofgi+b4YNclyP1tQHwHs8D4cTN/ty4H435cAJZ/k7
 QEuOUmWdoimVXav9Iouh0Yr3dYzugOAME3IwGDamdc7ctxI87Q9V7B80Y
 GElPjZlFZBga8WAAUi4nmeQeU9cA2nBi2B4Kvdak6F61vG0E/nHvaeVrq
 Y0CBiRmoOyGGUTH237/A9kA4fe7PHXa92/Sdhg4LlptFw4/6U2/k/Q7cg A==;
X-CSE-ConnectionGUID: gCGu/SseS7GH8oFTcFqM/w==
X-CSE-MsgGUID: IbAZCPG6RCC9g87HA7azYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31005176"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31005176"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:32 -0800
X-CSE-ConnectionGUID: COBH+bniT16pSb/SfwCOkA==
X-CSE-MsgGUID: 1IcuorNDSW6aS7ZnmMcY9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="92360628"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI v2 8/8] drm/i915/dp: add comments about hooks called from MST
 stream encoders
Date: Tue, 12 Nov 2024 13:10:44 +0200
Message-Id: <5941b8ef48cac4d61de2e2806a80645de48e856c.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
References: <cover.1731409802.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

It would be best to have self-explanatory code, but lacking that, add
some comments about the way the DDI encoder hooks get called from DP MST
stream encoders.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 51 ++++++++++++++++++------
 1 file changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b067e5fb17c3..f3368cf52641 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2919,6 +2919,24 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 				 crtc_state, conn_state);
 }
 
+/*
+ * Note: Also called from the ->pre_enable of the first active MST stream
+ * encoder on its primary encoder.
+ *
+ * When called from DP MST code:
+ *
+ * - conn_state will be NULL
+ *
+ * - encoder will be the primary encoder (i.e. mst->primary)
+ *
+ * - the main connector associated with this port won't be active or linked to a
+ *   crtc
+ *
+ * - crtc_state will be the state of the first stream to be activated on this
+ *   port, and it may not be the same stream that will be deactivated last, but
+ *   each stream should have a state that is identical when it comes to the DP
+ *   link parameteres
+ */
 static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 				 struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
@@ -2928,19 +2946,6 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	/*
-	 * When called from DP MST code:
-	 * - conn_state will be NULL
-	 * - encoder will be the main encoder (ie. mst->primary)
-	 * - the main connector associated with this port
-	 *   won't be active or linked to a crtc
-	 * - crtc_state will be the state of the first stream to
-	 *   be activated on this port, and it may not be the same
-	 *   stream that will be deactivated last, but each stream
-	 *   should have a state that is identical when it comes to
-	 *   the DP link parameteres
-	 */
-
 	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
@@ -3190,6 +3195,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * Note: Also called from the ->post_disable of the last active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
@@ -3220,6 +3230,11 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 					  old_conn_state);
 }
 
+/*
+ * Note: Also called from the ->post_pll_disable of the last active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
 				       struct intel_encoder *encoder,
 				       const struct intel_crtc_state *old_crtc_state,
@@ -3557,6 +3572,11 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
+/*
+ * Note: Also called from the ->pre_pll_enable of the first active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void
 intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 			 struct intel_encoder *encoder,
@@ -3996,6 +4016,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	}
 }
 
+/*
+ * Note: Also called from the ->get_config of the MST stream encoders on their
+ * primary encoder, via the platform specific hooks here. See also the comment
+ * for intel_ddi_pre_enable().
+ */
 static void intel_ddi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-- 
2.39.5

