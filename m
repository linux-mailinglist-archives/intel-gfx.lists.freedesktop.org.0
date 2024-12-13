Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CE99F09D7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:41:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E784510EFB3;
	Fri, 13 Dec 2024 10:41:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y/enavd8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C3810EFB2;
 Fri, 13 Dec 2024 10:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086477; x=1765622477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gIboTozBHdlHIwpTuQfQrpZglWmW/8qgkx/jFJIProQ=;
 b=Y/enavd8zHfbmvDKrR1E57UOmCKGQtmno2+d/UyqNrdcOQhg5TKtGz9q
 22RAwkRZEueqcAJ+eoZLUORpgRQ7F5yZjfkcX+KVZKOFAO6ba4PwerdsN
 Noh4ubYabowskbN2/Q5ZQkBCjWclJgCz2+1ez9PrjJvWYqxlqYK+Yrer9
 sv4pDr3s1StAnErOKn6un84EhCEJKpSaCP6ikCxKxycSCDwba97YVJL6W
 chEfYqTrtRoScLbXeaPMjtAQX4WFsTwvSy7E/K5sC2Aj76IvjVW8FkPmP
 t3xnyj4GEefh0sShBK+fP/mE92ByLftnWQjLixqNWT59wFcOO6ubF0Pe4 Q==;
X-CSE-ConnectionGUID: JyJnMkP/Sd+KdRG6oLxc+g==
X-CSE-MsgGUID: fzc2xsAbRU6tAJZCFYuWLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38470612"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38470612"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:17 -0800
X-CSE-ConnectionGUID: grgnvMdrR3OGJbNPh/7j+A==
X-CSE-MsgGUID: PNK2nrOhRki5Wbq+FDiYsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119763404"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 12/13] drm/i915/ddi: start distinguishing 128b/132b SST and
 MST at state readout
Date: Fri, 13 Dec 2024 12:39:56 +0200
Message-Id: <11b115b4f4f29bdaecbd1010c6d74f17d73df47b.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 29 +++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f1528179038..21dba8735085 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -788,7 +788,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	intel_wakeref_t wakeref;
 	enum pipe p;
 	u32 tmp;
-	u8 mst_pipe_mask;
+	u8 mst_pipe_mask = 0, dp128b132b_pipe_mask = 0;
 
 	*pipe_mask = 0;
 	*is_dp_mst = false;
@@ -825,7 +825,6 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		goto out;
 	}
 
-	mst_pipe_mask = 0;
 	for_each_pipe(dev_priv, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
 		u32 port_mask, ddi_select, ddi_mode;
@@ -854,9 +853,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
 
-		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
-		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))
+		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST)
 			mst_pipe_mask |= BIT(p);
+		else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))
+			dp128b132b_pipe_mask |= BIT(p);
 
 		*pipe_mask |= BIT(p);
 	}
@@ -866,6 +866,23 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
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
@@ -876,9 +893,9 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
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

