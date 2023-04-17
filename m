Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4606E4D63
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 17:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A92510E413;
	Mon, 17 Apr 2023 15:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C904C10E413
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681745879; x=1713281879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+4WuhPKRo8VaaLgjqGg+MPyMlD2Xsn5szq5a2h/3Mc8=;
 b=EwAfu1EZLAFOHBYa00yMkyCLV+tP2lTCR3SeTLgVwPJx/TcKmheMGxzY
 1fbneTnr5E4CFm5CuX2JHvoV9FpL+TOo9WQizheFKWAVSHJA/6ShevrJ/
 p9b8WBzBeouV1ypp1W1fv/lB/pjjOtLCUqbHvlOUlDHZajv0eAIOEyg3m
 8nWRDYufURbVFWS0/2DvAfB648kGZ8JuAF4PVsh/PN04GE4tk0UtSV5f8
 LjbzvFEFhOmpbNn7aRQimr4twPAWnsxHMHJGT+G1SpKkqYE+xinzShijG
 PjnRR0c9FzP3yAHhp4ObINZwdxYw8CHpTEw86tvXuTQWB6n36ZdfdLlOM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="431212289"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="431212289"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:37:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690710897"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="690710897"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:37:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 18:37:41 +0300
Message-Id: <20230417153741.1074692-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417153741.1074692-1-jani.nikula@intel.com>
References: <20230417153741.1074692-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: throw out struct
 intel_load_detect_pipe
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An error-valued pointer can handle all in one without the wrapper
struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      | 18 ++++++++---------
 .../gpu/drm/i915/display/intel_load_detect.c  | 20 ++++++++-----------
 .../gpu/drm/i915/display/intel_load_detect.h  | 12 ++++-------
 drivers/gpu/drm/i915/display/intel_tv.c       | 16 +++++++--------
 4 files changed, 29 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 96acdf98a0c0..13519f78cf9f 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -822,9 +822,9 @@ intel_crt_detect(struct drm_connector *connector,
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *intel_encoder = &crt->base;
+	struct drm_atomic_state *state;
 	intel_wakeref_t wakeref;
-	int status, ret;
-	struct intel_load_detect_pipe tmp;
+	int status;
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] force=%d\n",
 		    connector->base.id, connector->name,
@@ -882,8 +882,12 @@ intel_crt_detect(struct drm_connector *connector,
 	}
 
 	/* for pre-945g platforms use load detect */
-	ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
-	if (ret > 0) {
+	state = intel_load_detect_get_pipe(connector, ctx);
+	if (IS_ERR(state)) {
+		status = PTR_ERR(state);
+	} else if (!state) {
+		status = connector_status_unknown;
+	} else {
 		if (intel_crt_detect_ddc(connector))
 			status = connector_status_connected;
 		else if (DISPLAY_VER(dev_priv) < 4)
@@ -893,11 +897,7 @@ intel_crt_detect(struct drm_connector *connector,
 			status = connector_status_disconnected;
 		else
 			status = connector_status_unknown;
-		intel_load_detect_release_pipe(connector, &tmp, ctx);
-	} else if (ret == 0) {
-		status = connector_status_unknown;
-	} else {
-		status = ret;
+		intel_load_detect_release_pipe(connector, state, ctx);
 	}
 
 out:
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
index 5d6bb6d712bc..d5a0aecf3e8f 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.c
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -44,9 +44,9 @@ static int intel_modeset_disable_planes(struct drm_atomic_state *state,
 	return 0;
 }
 
-int intel_load_detect_get_pipe(struct drm_connector *connector,
-			       struct intel_load_detect_pipe *old,
-			       struct drm_modeset_acquire_ctx *ctx)
+struct drm_atomic_state *
+intel_load_detect_get_pipe(struct drm_connector *connector,
+			   struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_encoder *encoder =
 		intel_attached_encoder(to_intel_connector(connector));
@@ -64,8 +64,6 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name);
 
-	old->restore_state = NULL;
-
 	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
 
 	/*
@@ -179,13 +177,12 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
 		goto fail;
 	}
 
-	old->restore_state = restore_state;
 	drm_atomic_state_put(state);
 
 	/* let the connector get through one full cycle before testing */
 	intel_crtc_wait_for_next_vblank(crtc);
 
-	return true;
+	return restore_state;
 
 fail:
 	if (state) {
@@ -198,27 +195,26 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
 	}
 
 	if (ret == -EDEADLK)
-		return ret;
+		return ERR_PTR(ret);
 
-	return false;
+	return NULL;
 }
 
 void intel_load_detect_release_pipe(struct drm_connector *connector,
-				    struct intel_load_detect_pipe *old,
+				    struct drm_atomic_state *state,
 				    struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_encoder *intel_encoder =
 		intel_attached_encoder(to_intel_connector(connector));
 	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct drm_encoder *encoder = &intel_encoder->base;
-	struct drm_atomic_state *state = old->restore_state;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
 		    connector->base.id, connector->name,
 		    encoder->base.id, encoder->name);
 
-	if (!state)
+	if (IS_ERR_OR_NULL(state))
 		return;
 
 	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.h b/drivers/gpu/drm/i915/display/intel_load_detect.h
index 9b69da1867a5..aed51901b9ba 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.h
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.h
@@ -10,15 +10,11 @@ struct drm_atomic_state;
 struct drm_connector;
 struct drm_modeset_acquire_ctx;
 
-struct intel_load_detect_pipe {
-	struct drm_atomic_state *restore_state;
-};
-
-int intel_load_detect_get_pipe(struct drm_connector *connector,
-			       struct intel_load_detect_pipe *old,
-			       struct drm_modeset_acquire_ctx *ctx);
+struct drm_atomic_state *
+intel_load_detect_get_pipe(struct drm_connector *connector,
+			   struct drm_modeset_acquire_ctx *ctx);
 void intel_load_detect_release_pipe(struct drm_connector *connector,
-				    struct intel_load_detect_pipe *old,
+				    struct drm_atomic_state *old,
 				    struct drm_modeset_acquire_ctx *ctx);
 
 #endif /* __INTEL_LOAD_DETECT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 07e7f7cdd961..e3ccface0c9d 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1723,21 +1723,21 @@ intel_tv_detect(struct drm_connector *connector,
 		return connector_status_disconnected;
 
 	if (force) {
-		struct intel_load_detect_pipe tmp;
-		int ret;
+		struct drm_atomic_state *state;
 
-		ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
-		if (ret < 0)
-			return ret;
+		state = intel_load_detect_get_pipe(connector, ctx);
+		if (IS_ERR(state))
+			return PTR_ERR(state);
 
-		if (ret > 0) {
+		if (state) {
 			type = intel_tv_detect_type(intel_tv, connector);
-			intel_load_detect_release_pipe(connector, &tmp, ctx);
+			intel_load_detect_release_pipe(connector, state, ctx);
 			status = type < 0 ?
 				connector_status_disconnected :
 				connector_status_connected;
-		} else
+		} else {
 			status = connector_status_unknown;
+		}
 
 		if (status == connector_status_connected) {
 			intel_tv->type = type;
-- 
2.39.2

