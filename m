Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B71FC6EF8C9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9E210E8C4;
	Wed, 26 Apr 2023 16:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3503510E8D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682528001; x=1714064001;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3KzCxcFNE0AflctCLsAI1f2LQy04I6s9AhRLh4rBCHs=;
 b=PjdDh4IU1milM8f0OyqxAUz4tnyGtqmMa0npVhg6finDbcrXQytqLzH5
 1btRUH5UGM19ugAqU0p16FtwaID6Rc5P9R9/F2FprC12WX+XkKO44BdXZ
 yTsfSUVzol8nobfdmVli9Em0Km45ewFUldk2jdkte6dW4wBdyieMCbTcY
 bWcBJaCIMjqSvyfAFC9Ho0ahuOj+vCFpGv4iKtEZ95cSexHH4mgZgFBBS
 qk+fQZydCZNp0vMeNUv0SscDtE9LlM/8a2oMD7l0T8xkj2n7uyYhY3KwJ
 +6HBIAPt22wAhSJrDZ0W8fP+zoDNLprq+U5YHKPlu8r6GKp8Ll4ZEAUyx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493517"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493517"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402808"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402808"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:53:03 +0300
Message-Id: <20230426165305.2049341-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/dp: Factor out
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
index 388e79f74621f..1e91175506f5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4118,9 +4118,9 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
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
@@ -4129,9 +4129,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 
 	*pipe_mask = 0;
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state =
@@ -4165,9 +4162,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		*pipe_mask = 0;
-
 	return ret;
 }
 
@@ -4196,13 +4190,19 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
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

