Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DEF41713F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82BF6EE0B;
	Fri, 24 Sep 2021 11:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FF36EE0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:49:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="287727149"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="287727149"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="654001247"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:35 +0300
Message-Id: <20210924114741.15940-18-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 18/24] drm/i915: constify the audio function vtable
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
index 3f20b9167019..363afe0f58b7 100644
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

