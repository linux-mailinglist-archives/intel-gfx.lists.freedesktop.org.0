Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157157A9DF4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A49A10E611;
	Thu, 21 Sep 2023 19:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC3E10E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325910; x=1726861910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t3bC5nNkC+OufTbuR1RKN8rBoZtnkzxgB4MwffHQY6g=;
 b=NLT0m/LI3rx3H1spD1zAbWTf0fMYftYLEVBi5ixZyLj2Os6/UWLx08iH
 Vsy+JqQkLTs+VJzv88DQwCu86HxQ1LgOAaehmJ1ExvVoWJ0Z3KsSpLVdU
 G0GjBl2KR41Y3rvsLdkx5wuBJhZAu6b42AJ+f6SYjNp0op682FLTQUzlK
 Zr+TepPVFMzHe2jdciBF14OL7Hhs8pNuBA0zowyPY3fqzIr5CxXtl5oEj
 FkkShycWTiM993VK80OfVPsJRoHVfhLvE5whpSj/e3lh15OLfwZ9e+A0s
 2L8OtUCULa6JzAqg6O/a0LX+ZYlWChYBJQ8do9DR4xIiPwW2xLfUj4+ig Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523095"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523095"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523746"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523746"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:56 +0300
Message-Id: <20230921195159.2646027-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Factor out a helper to
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++--------
 1 file changed, 46 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 07a485dcfe7a3..ec54c32296204 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6282,6 +6282,51 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
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
@@ -6326,41 +6371,10 @@ int intel_atomic_check(struct drm_device *dev,
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

