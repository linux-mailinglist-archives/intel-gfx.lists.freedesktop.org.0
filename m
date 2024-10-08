Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C2B994138
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90F110E495;
	Tue,  8 Oct 2024 08:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGE0Oau7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE6A10E495
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375824; x=1759911824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nTNzP7zhfCGwSSoinb5w5u2Yl8GVf4dtX0V8q5puHO0=;
 b=mGE0Oau7VMwgkTUC1mMAcYFneQumFcYt6xxMRjTztZTfz0qWSdX3diIa
 s/5+ynOSPl38TD+pwMbeBJZgwNmnD4e+HuEyFWMRUmGevNr8KCsJp0YZ1
 9jkMmOaR8KwLQT0MBJWvRj7opUx8Dq0Yzx2wJCOe9BtNMz+gJhrk1g8ao
 M187bLSA/XJT1Smj/OF0f+PtzTPsAfRqjI94axVeDwFEW/MyiVaTkjdle
 mlJtyBe7kLRWFXZsGgfLCGkPevxxMdwrFsJkaVVcCl7rh1ciQBrljOlPt
 /0R9MO+wUwKhnGGeKyj+lPN8YCUPwTRx4vNTgoic81u/0Bq4TZs+DdMoN g==;
X-CSE-ConnectionGUID: jqBzwNzUQvCf9Mx4N6K7QQ==
X-CSE-MsgGUID: DT9iVWvhRqWVDIcS9Ylo+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079103"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079103"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:44 -0700
X-CSE-ConnectionGUID: Kr44vK5lTTijVf6RQTk5hQ==
X-CSE-MsgGUID: Zaz07E0nTk6GcW1a9SqmGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755755"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:42 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 1/9] drm/i915/display: get rid of encoder param in
 intel_audio_compute_config
Date: Tue,  8 Oct 2024 11:23:19 +0300
Message-Id: <20241008082327.342020-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

The parameter "encoder" is used only to get the drm_i915_private
object. As we could get the drm_i915_private from connector, we
dont need this encoder to be passed to this function. So get
rid of the encoder parametet and update all the corrsponding
intel_audio_compute_config calls. In the followup patches, we
don't even need the drm_i915_private object in this function.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_audio.h | 3 +--
 drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
 5 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 32aa9ec1a204..1afd3b99e3ea 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -690,12 +690,11 @@ void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
-bool intel_audio_compute_config(struct intel_encoder *encoder,
-				struct intel_crtc_state *crtc_state,
+bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 576c061d72a4..9b327b677d89 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -14,8 +14,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
-bool intel_audio_compute_config(struct intel_encoder *encoder,
-				struct intel_crtc_state *crtc_state,
+bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state);
 void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..0fd9c1c51a43 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3001,7 +3001,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 {
 	pipe_config->has_audio =
 		intel_dp_has_audio(encoder, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
+		intel_audio_compute_config(pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
 					intel_dp_is_uhbr(pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 72ac910bf6ec..45ff2ee7cb70 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2333,7 +2333,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_audio =
 		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
+		intel_audio_compute_config(pipe_config, conn_state);
 
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index b83bf813677d..2fbb69ee7b45 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1430,7 +1430,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_audio =
 		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
+		intel_audio_compute_config(pipe_config, conn_state);
 
 	pipe_config->limited_color_range =
 		intel_sdvo_limited_color_range(encoder, pipe_config,
-- 
2.34.1

