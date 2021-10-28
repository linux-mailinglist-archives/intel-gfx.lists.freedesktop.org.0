Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3467A43E768
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FC56E99F;
	Thu, 28 Oct 2021 17:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19496E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:35:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="316672956"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="316672956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:57 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498499663"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 28 Oct 2021 20:35:18 +0300
Message-Id: <20211028173518.9107-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028173518.9107-1-jani.nikula@intel.com>
References: <20211028173518.9107-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/audio: rename
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
index 9da306bd35a9..97102ee9f3b1 100644
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
index a3657c7a7ba2..067979d82cf9 100644
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
index 79cd158503b3..2a434801ada4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9473,7 +9473,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 		return;
 
 	intel_init_cdclk_hooks(dev_priv);
-	intel_init_audio_hooks(dev_priv);
+	intel_audio_hooks_init(dev_priv);
 
 	intel_dpll_init_clock_hook(dev_priv);
 
-- 
2.30.2

