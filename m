Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73653437AEA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C126EDA8;
	Fri, 22 Oct 2021 16:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBF06EDA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:28:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="216251809"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="216251809"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:30 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="484737357"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, daniel@ffwll.ch, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Fri, 22 Oct 2021 19:27:58 +0300
Message-Id: <0ab63181bce3bf6a2ef2a04cb738bf5002029edd.1634918767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634918767.git.jani.nikula@intel.com>
References: <cover.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/audio: move intel_audio_funcs
 internal to intel_audio.c
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

It's all internal to intel_audio.c.

Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c |  9 +++++++++
 drivers/gpu/drm/i915/i915_drv.h            | 10 +---------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b46f6539b9ab..39246f64fb39 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -62,6 +62,15 @@
  * struct &i915_audio_component_audio_ops @audio_ops is called from i915 driver.
  */
 
+struct intel_audio_funcs {
+	void (*audio_codec_enable)(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct drm_connector_state *conn_state);
+	void (*audio_codec_disable)(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *old_crtc_state,
+				    const struct drm_connector_state *old_conn_state);
+};
+
 /* DP N/M table */
 #define LC_810M	810000
 #define LC_540M	540000
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ed86633a587b..bb023b909e86 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -364,15 +364,6 @@ struct intel_color_funcs {
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
 
-struct intel_audio_funcs {
-	void (*audio_codec_enable)(struct intel_encoder *encoder,
-				   const struct intel_crtc_state *crtc_state,
-				   const struct drm_connector_state *conn_state);
-	void (*audio_codec_disable)(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *old_crtc_state,
-				    const struct drm_connector_state *old_conn_state);
-};
-
 struct intel_cdclk_funcs {
 	void (*get_cdclk)(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config);
@@ -829,6 +820,7 @@ struct i915_selftest_stash {
 };
 
 /* intel_audio.c private */
+struct intel_audio_funcs;
 struct intel_audio_private {
 	/* Display internal audio functions */
 	const struct intel_audio_funcs *funcs;
-- 
2.30.2

