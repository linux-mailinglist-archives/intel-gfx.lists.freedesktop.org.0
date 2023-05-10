Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D31B56FDBB1
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9937110E47F;
	Wed, 10 May 2023 10:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4246E10E47F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714670; x=1715250670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a5WORbLOmZfUDl8Pewnym21isGRMeVMKLF+FIw7hmrM=;
 b=UM7PnI8graesawowLx/72r7q/htUd5m638yF5W/sWe5h8nkFyVzGOCwl
 lp61ZrPri/IqH2/0JJWa4HzZPEawtc4Dy1bV8qA9uQfJJ54XbNOGFTybk
 ej9VzFlBerouag+3Ta637KwUdZYbuStUsG9hXRNBSkwokoIql8fnfCEZ0
 mSiDvYFuTjZa3fUSx1gBBW3TFxX0SWGBV9OkAJFlIHnE2uQQGmZyxZVvO
 Cb5QdrOxWxcUtimPcTB98RPlmYatrWn9FZzuWrns2hRIPax0hodC9fOfs
 3qcxa+5L5u1njOl5YQghoIUNT2ElA0L+CXI9V/xa7EmDx5oHOEy1y16Kd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214452"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214452"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796756"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796756"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:28 +0300
Message-Id: <20230510103131.1618266-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/14] drm/i915/dp: Factor out
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0cc57681dc4d4..99ceaa7d90b62 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4231,9 +4231,9 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
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
@@ -4242,9 +4242,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 
 	*pipe_mask = 0;
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state =
@@ -4278,9 +4275,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		*pipe_mask = 0;
-
 	return ret;
 }
 
@@ -4309,13 +4303,19 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
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

