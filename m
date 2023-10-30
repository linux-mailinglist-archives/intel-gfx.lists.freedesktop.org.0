Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298CA7DBD29
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3CC10E323;
	Mon, 30 Oct 2023 15:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF7210E320
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681523; x=1730217523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OM7aipRhMmxyl9fLQ/EuaAf7VYK912avVXCzBFE86o0=;
 b=aECpyvUFtWhBjCTrmYn1lH4dLzxzwwS7TXYpEVrViwQbEtKvMwX3mRTf
 OnfsW9KLjFHUNt7MRDnqBsXnJiKNTiMEiCzyQ9KwHrhiOU7dR7CuWb+aS
 2HPlQi2NHidPI87uZDEweumx+5ImP0clsy0hfQPuPKdjygMZdVgCjW22X
 YxVHUTZwIuj/6jhONM80snywJJw+wSd6KnnuvQ9dL6wC3IuRhHYzQnQgf
 J6AuIOKVj5pDia9uj6pKh4UdDniovAKbx122AHocAPSxOai0yWiWwcovR
 j/2GIw6UHxDfgbfL/JhpfM8FscmMbGR2WqthtkxT1ezbYcWsskZl6AXkE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974488"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974488"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494008"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494008"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:31 +0200
Message-Id: <20231030155843.2251023-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 18/30] drm/i915/dp: Rename
 intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
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

Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec(), for
symmetry with intel_ddi_enable_fec().

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bc5e5d9ec8b53..5683b94cbf0fe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2234,8 +2234,8 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 		     0, DP_TP_CTL_FEC_ENABLE);
 }
 
-static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
-					const struct intel_crtc_state *crtc_state)
+static void intel_ddi_disable_fec(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
@@ -2868,8 +2868,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
 		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 			     DP_TP_CTL_ENABLE, 0);
 
-	/* Disable FEC in DP Sink */
-	intel_ddi_disable_fec_state(encoder, crtc_state);
+	intel_ddi_disable_fec(encoder, crtc_state);
 
 	if (wait)
 		intel_wait_ddi_buf_idle(dev_priv, port);
@@ -2884,7 +2883,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		mtl_disable_ddi_buf(encoder, crtc_state);
 
 		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
-		intel_ddi_disable_fec_state(encoder, crtc_state);
+		intel_ddi_disable_fec(encoder, crtc_state);
 	} else {
 		disable_ddi_buf(encoder, crtc_state);
 	}
-- 
2.39.2

