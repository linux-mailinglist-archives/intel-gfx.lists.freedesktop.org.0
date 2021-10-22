Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6044F437AE7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73626ED9E;
	Fri, 22 Oct 2021 16:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BF96ED9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:28:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="228103062"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="228103062"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:12 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="484737267"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, daniel@ffwll.ch, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Fri, 22 Oct 2021 19:27:55 +0300
Message-Id: <9a04d5af717f6fddcf21a3c096eb3807dffbc1cf.1634918767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634918767.git.jani.nikula@intel.com>
References: <cover.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/audio: group audio under anonymous
 struct in drm_i915_private
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

With an anonymous struct, this can be pure hierarchical organization
without code changes.

Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 43 +++++++++++++++++----------------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 19e6700a4315..ee210e12648a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -995,9 +995,6 @@ struct drm_i915_private {
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-	/* Display internal audio functions */
-	const struct intel_audio_funcs *audio_funcs;
-
 	/* Display CDCLK functions */
 	const struct intel_cdclk_funcs *cdclk_funcs;
 
@@ -1084,17 +1081,6 @@ struct drm_i915_private {
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
@@ -1227,14 +1213,29 @@ struct drm_i915_private {
 
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

