Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EF36F61D3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556E610E382;
	Wed,  3 May 2023 23:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50E310E377
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155442; x=1714691442;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cnBnjFi91Jx+Jicgz9dM0nC0lKxREk7AfF0N+7w0SYY=;
 b=QcXUFLzB1j071OnM3CU/82tX1IaIow1rJAETDULKKFjSLCVN7IH9as6j
 jDgVmJFzaZmCD6ve1bnViucmOQYM4pRKoK6n1eu50rCw5BY8jR7MH4V4j
 cqZ7iHIe+5M6PfIrNoarl6Aj/Cfx3Kvfds2nLUeuu8oK1Cl/VMXCmqls6
 BDeC3Ii2qI4DKvUADkSJMZ/RE12FoYJzx41oPRx7AR8jDfTbmUk5BRG8Y
 728+JIifk+OCY6rb8iqeoYWTn26nbPQmXKzu1+Wo9J/he646EUBTRNGqW
 jM3EBOrGxezTO2V8aVZ+kmbIeCEjVnKHo9zHsdc2CqVdLPaEM9WnZmTfe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607590"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607590"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872153"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872153"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:46 +0300
Message-Id: <20230503231048.432368-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/12] drm/i915/dp: Factor out
 intel_dp_get_active_pipes()
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

Factor out a helper used by a follow up patch to reset an active DP
link.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1942a05719776..7a349cb9fc2e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4126,9 +4126,9 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
 	return false;
 }
 
-static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
-				      struct drm_modeset_acquire_ctx *ctx,
-				      u8 *pipe_mask)
+static int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
+				     struct drm_modeset_acquire_ctx *ctx,
+				     u8 *pipe_mask)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_connector_list_iter conn_iter;
@@ -4137,9 +4137,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 
 	*pipe_mask = 0;
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state =
@@ -4173,9 +4170,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		*pipe_mask = 0;
-
 	return ret;
 }
 
@@ -4204,13 +4198,19 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &pipe_mask);
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
+	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
 	if (ret)
 		return ret;
 
 	if (pipe_mask == 0)
 		return 0;
 
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
 		    encoder->base.base.id, encoder->base.name);
 
-- 
2.37.2

