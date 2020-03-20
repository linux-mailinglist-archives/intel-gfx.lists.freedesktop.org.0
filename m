Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B1118D111
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286386E1A2;
	Fri, 20 Mar 2020 14:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9976E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:02 +0000 (UTC)
IronPort-SDR: nJVQYW2LCXbfZsZCMndpljnZGbqVD740z3+GLRAuBeTgNJskbCiwjrXH/Bz1olCNHP/MXP+Xeb
 k+bWY8MozQDA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:01 -0700
IronPort-SDR: 9eq4G0Qp/MIUlVKwt925rT29RTzilo2oEeR6b2byNmkHBYZonrko1Mb/lKq4mgMHTJeyMBXkV4
 4IQmuoAYo24A==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="269109822"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:29 +0200
Message-Id: <5ee3b8040658b5b4ef0b8b1a546fa04f554cdf6a.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/dp_mst: use struct drm_device
 based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 ++++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 44f3fd251ca1..b978ddd96578 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,6 +47,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	void *port = connector->port;
@@ -73,7 +74,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	}
 
 	if (slots < 0) {
-		DRM_DEBUG_KMS("failed finding vcpi slots:%d\n", slots);
+		drm_dbg_kms(&i915->drm, "failed finding vcpi slots:%d\n",
+			    slots);
 		return slots;
 	}
 
@@ -322,15 +324,17 @@ static void intel_mst_disable_dp(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret;
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&i915->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
 	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
 	if (ret) {
-		DRM_DEBUG_KMS("failed to update payload %d\n", ret);
+		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
 	}
 	if (old_crtc_state->has_audio)
 		intel_audio_codec_disable(encoder,
@@ -371,7 +375,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_ACT_SENT, 1))
-		DRM_ERROR("Timed out waiting for ACT sent when disabling\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for ACT sent when disabling\n");
 	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
 	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
@@ -405,7 +410,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
 		intel_dig_port->base.post_disable(&intel_dig_port->base,
 						  old_crtc_state, NULL);
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 }
 
 static void intel_mst_pre_pll_enable_dp(struct intel_encoder *encoder,
@@ -445,7 +451,8 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
 		    INTEL_GEN(dev_priv) >= 12 && first_mst_stream &&
 		    !intel_dp_mst_is_master_trans(pipe_config));
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 
 	if (first_mst_stream)
 		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
@@ -461,7 +468,7 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
 				       pipe_config->pbn,
 				       pipe_config->dp_m_n.tu);
 	if (!ret)
-		DRM_ERROR("failed to allocate vcpi\n");
+		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
 
 	intel_dp->active_mst_links++;
 	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_status);
@@ -499,11 +506,12 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
 
 	intel_crtc_vblank_on(pipe_config);
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_ACT_SENT, 1))
-		DRM_ERROR("Timed out waiting for ACT sent\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent\n");
 
 	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
