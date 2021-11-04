Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26196445721
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B826F9DA;
	Thu,  4 Nov 2021 16:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497F76F9EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:19:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231685070"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231685070"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="490021254"
Received: from mihaelac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.21])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 18:18:56 +0200
Message-Id: <20211104161858.21786-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211104161858.21786-1-jani.nikula@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915/audio: move intel_audio_funcs
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's all internal to intel_audio.c.

Cc: Dave Airlie <airlied@redhat.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c |  9 +++++++++
 drivers/gpu/drm/i915/i915_drv.h            | 10 +---------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6088304f82df..24e76657d561 100644
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
index 418c952bbf42..94840af45750 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -362,15 +362,6 @@ struct intel_color_funcs {
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
@@ -827,6 +818,7 @@ struct i915_selftest_stash {
 };
 
 /* intel_audio.c private */
+struct intel_audio_funcs;
 struct intel_audio_private {
 	/* Display internal audio functions */
 	const struct intel_audio_funcs *funcs;
-- 
2.30.2

