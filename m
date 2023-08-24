Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C43AB786966
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FBB10E4EC;
	Thu, 24 Aug 2023 08:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6539B10E4C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864309; x=1724400309;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4OodiKwKAd3FZ1p4xTcYZSrd30gh2x3KFuDq1R0DU8I=;
 b=lpo7FEGMNXwS2Dh1+5VfV19tT89F/KYE+X88E7M0vw92UhEkU1h53Map
 kh9Xke54uE3tY6lvfO91I5GOZikv5gr8sBzxIY32iqfZ2++6lFaid+ekO
 6++362hGs4FkuEnWvP1YVxTL5FxFCp/BQtNFqHTa/y8UfUzqaBPCfKxG5
 mCosc4QpIKyzSjDyk6lBERwEzaw1h/cQvoI4zItBaL97PBtO924xvso1R
 BjLkGPNdpDsrjIJ3PhefJHJVWBHjANk63hzdeL/Lr1F/KPvTYtALJzSuZ
 7DrbhRILYklGi0ZcUFO/PKy3A0C+hKF8hza1tNWP9rcM0SdQ6Yb7LWfNh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345854"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345854"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710291"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:01 +0300
Message-Id: <20230824080517.693621-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/22] drm/i915: Add helper to modeset a set
 of pipes
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

Add intel_modeset_pipes_in_mask() to modeset a provided set of pipes,
used in a follow-up patch.

While at it add DocBook descriptions for the exported functions.

v2:
- Add a flag controlling if active planes are force updated as well.
- Add DockBook descriptions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 2 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db3c26e013e3b..a1956b89fd75d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5420,8 +5420,24 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
+/**
+ * intel_modeset_pipes_in_mask - force a full modeset on a set of pipes
+ * @state: intel atomic state
+ * @reason: the reason for the full modeset
+ * @mask: mask of pipes to modeset
+ * @update_active_planes: force updating all active planes
+ *
+ * Force a full modeset on CRTCs in @mask due to the description in @reason.
+ * Also force updating all active planes in each modeset CRTC if
+ * @update_active_planes is %true. This flag must be set to %true if the
+ * function is called after new plane states are computed already and
+ * set to %false otherwise.
+ *
+ * Returns 0 in case of success, negative error code otherwise.
+ */
+int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
+				const char *reason, u8 mask,
+				bool update_active_planes)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
@@ -5430,7 +5446,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	 * Add all pipes to the state, and force
 	 * a modeset on all the active ones.
 	 */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, mask) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5461,7 +5477,9 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		crtc_state->update_planes |= crtc_state->active_planes;
+		if (update_active_planes)
+			crtc_state->update_planes |= crtc_state->active_planes;
+
 		crtc_state->async_flip_planes = 0;
 		crtc_state->do_async_flip = false;
 	}
@@ -5469,6 +5487,23 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	return 0;
 }
 
+/**
+ * intel_modeset_all_pipes - force a full modeset on all pipes
+ * @state: intel atomic state
+ * @reason: the reason for the full modeset
+ *
+ * Force a full modeset on all CRTCs due to the description in @reason.
+ * This function can be called only after new plane states are computed
+ * already.
+ *
+ * Returns 0 in case of success, negative error code otherwise.
+ */
+int intel_modeset_all_pipes(struct intel_atomic_state *state,
+			    const char *reason)
+{
+	return intel_modeset_pipes_in_mask(state, reason, -1, true);
+}
+
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49ac8473b988b..d9a54610d9d5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -515,6 +515,9 @@ void intel_update_watermarks(struct drm_i915_private *i915);
 /* modesetting */
 int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    const char *reason);
+int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
+				const char *reason, u8 pipe_mask,
+				bool update_active_planes);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
-- 
2.37.2

