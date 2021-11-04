Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFF444571C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:19:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3356F922;
	Thu,  4 Nov 2021 16:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B5D6F922
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="295183088"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="295183088"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:04 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="501601002"
Received: from mihaelac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.21])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 18:18:53 +0200
Message-Id: <20211104161858.21786-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915/audio: group audio under
 anonymous struct in drm_i915_private
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With an anonymous struct, this can be pure hierarchical organization
without code changes. We'll follow up with adding a name to the
sub-struct separately.

Cc: Dave Airlie <airlied@redhat.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 43 +++++++++++++++++----------------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e967cd08f23e..c1c4bd754921 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -993,9 +993,6 @@ struct drm_i915_private {
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-	/* Display internal audio functions */
-	const struct intel_audio_funcs *audio_funcs;
-
 	/* Display CDCLK functions */
 	const struct intel_cdclk_funcs *cdclk_funcs;
 
@@ -1082,17 +1079,6 @@ struct drm_i915_private {
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-	/* hda/i915 audio component */
-	struct i915_audio_component *audio_component;
-	bool audio_component_registered;
-	/**
-	 * av_mutex - mutex for audio/video sync
-	 *
-	 */
-	struct mutex av_mutex;
-	int audio_power_refcount;
-	u32 audio_freq_cntrl;
-
 	u32 fdi_rx_config;
 
 	/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
@@ -1225,14 +1211,29 @@ struct drm_i915_private {
 
 	bool ipc_enabled;
 
-	/* Used to save the pipe-to-encoder mapping for audio */
-	struct intel_encoder *av_enc_map[I915_MAX_PIPES];
-
-	/* necessary resource sharing with HDMI LPE audio driver. */
 	struct {
-		struct platform_device *platdev;
-		int	irq;
-	} lpe_audio;
+		/* Display internal audio functions */
+		const struct intel_audio_funcs *audio_funcs;
+
+		/* hda/i915 audio component */
+		struct i915_audio_component *audio_component;
+		bool audio_component_registered;
+		/**
+		 * av_mutex - mutex for audio/video sync
+		 */
+		struct mutex av_mutex;
+		int audio_power_refcount;
+		u32 audio_freq_cntrl;
+
+		/* Used to save the pipe-to-encoder mapping for audio */
+		struct intel_encoder *av_enc_map[I915_MAX_PIPES];
+
+		/* necessary resource sharing with HDMI LPE audio driver. */
+		struct {
+			struct platform_device *platdev;
+			int irq;
+		} lpe_audio;
+	};
 
 	struct i915_pmu pmu;
 
-- 
2.30.2

