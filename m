Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A26B40B6EB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 20:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F62F6E53E;
	Tue, 14 Sep 2021 18:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B76C6E532
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 18:27:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="218914645"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="218914645"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:18 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="508249925"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dave Airlie <airlied@gmail.com>,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 14 Sep 2021 21:25:16 +0300
Message-Id: <1004d4f3d2b0e1e86bf6c5833dc75d51e155f7ba.1631643729.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
References: <cover.1631643729.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/24] drm/i915: constify the audio function
 vtable
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

From: Dave Airlie <airlied@redhat.com>

Move the functions into read-only tables.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 43 ++++++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h            |  2 +-
 2 files changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f539826c0424..0a6ad74d9173 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -848,10 +848,10 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	if (dev_priv->audio_funcs.audio_codec_enable)
-		dev_priv->audio_funcs.audio_codec_enable(encoder,
-						     crtc_state,
-						     conn_state);
+	if (dev_priv->audio_funcs)
+		dev_priv->audio_funcs->audio_codec_enable(encoder,
+							  crtc_state,
+							  conn_state);
 
 	mutex_lock(&dev_priv->av_mutex);
 	encoder->audio_connector = connector;
@@ -893,10 +893,10 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
-	if (dev_priv->audio_funcs.audio_codec_disable)
-		dev_priv->audio_funcs.audio_codec_disable(encoder,
-						      old_crtc_state,
-						      old_conn_state);
+	if (dev_priv->audio_funcs)
+		dev_priv->audio_funcs->audio_codec_disable(encoder,
+							   old_crtc_state,
+							   old_conn_state);
 
 	mutex_lock(&dev_priv->av_mutex);
 	encoder->audio_connector = NULL;
@@ -915,6 +915,21 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	intel_lpe_audio_notify(dev_priv, pipe, port, NULL, 0, false);
 }
 
+static const struct intel_audio_funcs g4x_audio_funcs = {
+	.audio_codec_enable = g4x_audio_codec_enable,
+	.audio_codec_disable = g4x_audio_codec_disable,
+};
+
+static const struct intel_audio_funcs ilk_audio_funcs = {
+	.audio_codec_enable = ilk_audio_codec_enable,
+	.audio_codec_disable = ilk_audio_codec_disable,
+};
+
+static const struct intel_audio_funcs hsw_audio_funcs = {
+	.audio_codec_enable = hsw_audio_codec_enable,
+	.audio_codec_disable = hsw_audio_codec_disable,
+};
+
 /**
  * intel_init_audio_hooks - Set up chip specific audio hooks
  * @dev_priv: device private
@@ -922,17 +937,13 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_G4X(dev_priv)) {
-		dev_priv->audio_funcs.audio_codec_enable = g4x_audio_codec_enable;
-		dev_priv->audio_funcs.audio_codec_disable = g4x_audio_codec_disable;
+		dev_priv->audio_funcs = &g4x_audio_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
-		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
+		dev_priv->audio_funcs = &ilk_audio_funcs;
 	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
-		dev_priv->audio_funcs.audio_codec_enable = hsw_audio_codec_enable;
-		dev_priv->audio_funcs.audio_codec_disable = hsw_audio_codec_disable;
+		dev_priv->audio_funcs = &hsw_audio_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
-		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
+		dev_priv->audio_funcs = &ilk_audio_funcs;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 410b7b339501..c2c127d979fe 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1003,7 +1003,7 @@ struct drm_i915_private {
 	const struct intel_color_funcs *color_funcs;
 
 	/* Display internal audio functions */
-	struct intel_audio_funcs audio_funcs;
+	const struct intel_audio_funcs *audio_funcs;
 
 	/* Display CDCLK functions */
 	struct intel_cdclk_funcs cdclk_funcs;
-- 
2.30.2

