Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23D0445727
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:19:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE01A6FA58;
	Thu,  4 Nov 2021 16:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6845D6FA58
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:19:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="295183171"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="295183171"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:28 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="450269339"
Received: from mihaelac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.21])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 18:18:58 +0200
Message-Id: <20211104161858.21786-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211104161858.21786-1-jani.nikula@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/audio: rename
 intel_init_audio_hooks to intel_audio_hooks_init
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

Follow the filename based prefix naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_audio.h   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aa7037021376..74d56487267c 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -940,10 +940,10 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
 };
 
 /**
- * intel_init_audio_hooks - Set up chip specific audio hooks
+ * intel_audio_hooks_init - Set up chip specific audio hooks
  * @dev_priv: device private
  */
-void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
+void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
 {
 	if (IS_G4X(dev_priv)) {
 		dev_priv->audio.funcs = &g4x_audio_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index dcb259dd2da7..63b22131dc45 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -11,7 +11,7 @@ struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_encoder;
 
-void intel_init_audio_hooks(struct drm_i915_private *dev_priv);
+void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
 void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29392dfc46c8..25c3a44ed693 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9486,7 +9486,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 		return;
 
 	intel_init_cdclk_hooks(dev_priv);
-	intel_init_audio_hooks(dev_priv);
+	intel_audio_hooks_init(dev_priv);
 
 	intel_dpll_init_clock_hook(dev_priv);
 
-- 
2.30.2

