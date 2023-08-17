Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDF177FBC5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787AD10E516;
	Thu, 17 Aug 2023 16:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80EE10E511
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288966; x=1723824966;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bmVocKd/PU7vcJ3aw/8dUikcfq9NaE70UsKWSOEMMTw=;
 b=j/j40g5lsxIcTrJOjiorjjpL1H9w6HeGDPdQWO6Oz1SxwJiuR63IMdTq
 tFpzqFtNUHcnkpoWzSnFsMYow48n+93p42g36nHInT8jdNeRfhc4xJzd0
 HSRMtBydk5HniT6HNLEVf7m55PMG/FfnxBgApgaPR49v21cw2iZdqZhYa
 le3cpuMpuXC3yeR4izybHQlTogjC5CKi+hGUzw/uEElh/9zUXyUEbw7Oz
 K/oPD/neync9UBoo5HA2w5gqCeguImB1ekiEop+C1oI5ign2Yqkg+kuUA
 BxtUWQb/r9FAoCm8LLu0X3ntsH0Wx5Phu//ASTZBCym6WMGlPSMx5SyQa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826614"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601355"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601355"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:46 +0300
Message-Id: <20230817161456.3857111-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/17] drm/i915: Factor out a helper to
 check/compute all the CRTC states
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

Factor out intel_atomic_check_config() to check and compute all the CRTC
states. This will be used by a follow up patch to recompute/check the
state until required by BW limitations between CRTCs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++--------
 1 file changed, 46 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c35e5d7e45a3b..381f68890565c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6177,6 +6177,51 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
+static int intel_atomic_check_config(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int ret;
+	int i;
+
+	ret = intel_bigjoiner_add_affected_crtcs(state);
+	if (ret)
+		return ret;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state)) {
+			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
+			else
+				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
+			continue;
+		}
+
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			drm_WARN_ON(&i915->drm, new_crtc_state->uapi.enable);
+			continue;
+		}
+
+		ret = intel_crtc_prepare_cleared_state(state, crtc);
+		if (ret)
+			break;
+
+		if (!new_crtc_state->hw.enable)
+			continue;
+
+		ret = intel_modeset_pipe_config(state, crtc);
+		if (ret)
+			break;
+
+		ret = intel_atomic_check_bigjoiner(state, crtc);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -6221,41 +6266,10 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
-	ret = intel_bigjoiner_add_affected_crtcs(state);
+	ret = intel_atomic_check_config(state);
 	if (ret)
 		goto fail;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
-			else
-				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
-			continue;
-		}
-
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
-			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
-			continue;
-		}
-
-		ret = intel_crtc_prepare_cleared_state(state, crtc);
-		if (ret)
-			goto fail;
-
-		if (!new_crtc_state->hw.enable)
-			continue;
-
-		ret = intel_modeset_pipe_config(state, crtc);
-		if (ret)
-			goto fail;
-
-		ret = intel_atomic_check_bigjoiner(state, crtc);
-		if (ret)
-			goto fail;
-	}
-
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
-- 
2.37.2

