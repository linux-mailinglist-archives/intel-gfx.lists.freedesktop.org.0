Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD69C41BAAF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 01:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFF86E9C2;
	Tue, 28 Sep 2021 23:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4274D6E9C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 23:00:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="204971526"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="204971526"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:59:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="655288214"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:59:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:58:02 +0300
Message-Id: <5a481307a5daab40a506c3b9a64b0b37e01a1a41.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
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
index bf96d1529775..03e8c05a74f6 100644
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
index ddd921a0c141..25d79e9df783 100644
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

