Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C40BA00A19
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1269410E8D3;
	Fri,  3 Jan 2025 13:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a4FZiD1g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EEE10E8CE;
 Fri,  3 Jan 2025 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912430; x=1767448430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O7tInYDzo3+yFX0ypzGaJqa4X3L1hLGB60VoidjcYzU=;
 b=a4FZiD1g00NsYorV2e178iGu2IwN0v3sr1GMdSUfxMxJSs1QmISKYDAN
 Vvy0MzA+0Z4RzbYkJNfA96CE+xy1VhH9JlbYmmMb2qrq9EMTT2/0iFLCB
 Msqw3znHsAfaW6w9wpBbRdhvhktTzXrwZVwKUIZyMyEntpuCtOqQV1bhu
 ZFTtv6mKwkvjqwZmR1Kc6F4IC4qU7Rjz6z/AgeLvtl0vz4cbmcNPk4Zle
 1EQAi8zLoUVARhRg68nGkKeuhtQH5SLcEqo+EXyFw0q7Aa4Cqv0/2i9dM
 oMHZxR7VJGQmJy7UKdofBGpBX8GKt/9VWeKbOqGBNblwFBBEbnWbmfVKi g==;
X-CSE-ConnectionGUID: CDhxQKo7R52yilEo62Dmsw==
X-CSE-MsgGUID: Ngu6hIfTQjqhT77Xa5mLag==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040316"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040316"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:50 -0800
X-CSE-ConnectionGUID: 9i5gI3o9RaakGq9QXwWaGw==
X-CSE-MsgGUID: 2IPx9XAFSRecZc96dmnYEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105852067"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 13/16] drm/i915/ddi: start distinguishing 128b/132b SST and
 MST at state readout
Date: Fri,  3 Jan 2025 15:52:36 +0200
Message-Id: <119a773a0d4d74ad204435e462f8d12cb0ea4128.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We'll want to distinguish 128b/132b SST and MST modes at state
readout. There's a catch, though. From the hardware perspective,
128b/132b SST and MST programming are pretty much the same. And we can't
really ask the sink at this point.

If we have more than one transcoder in 128b/132b mode associated with
the port, we can safely assume it's MST. But for MST with only a single
stream enabled, we are pretty much out of luck. Let's fall back to
looking at the software state, i.e. intel_dp->is_mst. It should be fine
for the state checker, but for hardware takeover at probe, we'll have to
trust the GOP has only enabled SST.

TODO: Not sure how this *or* our current code handles 128b/132b enabled
by GOP.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 29 +++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 541e89cfc347..30822c368525 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -786,7 +786,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	intel_wakeref_t wakeref;
 	enum pipe p;
 	u32 tmp;
-	u8 mst_pipe_mask;
+	u8 mst_pipe_mask = 0, dp128b132b_pipe_mask = 0;
 
 	*pipe_mask = 0;
 	*is_dp_mst = false;
@@ -823,7 +823,6 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		goto out;
 	}
 
-	mst_pipe_mask = 0;
 	for_each_pipe(dev_priv, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
 		u32 port_mask, ddi_select, ddi_mode;
@@ -852,9 +851,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
 
-		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
-		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))
+		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST)
 			mst_pipe_mask |= BIT(p);
+		else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))
+			dp128b132b_pipe_mask |= BIT(p);
 
 		*pipe_mask |= BIT(p);
 	}
@@ -864,6 +864,23 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			    "No pipe for [ENCODER:%d:%s] found\n",
 			    encoder->base.base.id, encoder->base.name);
 
+	if (!mst_pipe_mask && dp128b132b_pipe_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		/*
+		 * If we don't have 8b/10b MST, but have more than one
+		 * transcoder in 128b/132b mode, we know it must be 128b/132b
+		 * MST.
+		 *
+		 * Otherwise, we fall back to checking the current MST
+		 * state. It's not accurate for hardware takeover at probe, but
+		 * we don't expect MST to have been enabled at that point, and
+		 * can assume it's SST.
+		 */
+		if (hweight8(dp128b132b_pipe_mask) > 1 || intel_dp->is_mst)
+			mst_pipe_mask = dp128b132b_pipe_mask;
+	}
+
 	if (!mst_pipe_mask && hweight8(*pipe_mask) > 1) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Multiple pipes for [ENCODER:%d:%s] (pipe_mask %02x)\n",
@@ -874,9 +891,9 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 	if (mst_pipe_mask && mst_pipe_mask != *pipe_mask)
 		drm_dbg_kms(&dev_priv->drm,
-			    "Conflicting MST and non-MST state for [ENCODER:%d:%s] (pipe_mask %02x mst_pipe_mask %02x)\n",
+			    "Conflicting MST and non-MST state for [ENCODER:%d:%s] (pipe masks: all %02x, MST %02x, 128b/132b %02x)\n",
 			    encoder->base.base.id, encoder->base.name,
-			    *pipe_mask, mst_pipe_mask);
+			    *pipe_mask, mst_pipe_mask, dp128b132b_pipe_mask);
 	else
 		*is_dp_mst = mst_pipe_mask;
 
-- 
2.39.5

