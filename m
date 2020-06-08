Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925C61F1EBE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 20:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 056186E992;
	Mon,  8 Jun 2020 18:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583F26E995
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 18:10:29 +0000 (UTC)
IronPort-SDR: Jtgk34KEn5uXZMnmCF4C8uwDJbW351+dV+QAJfxP5TEx18LLBhRNlhQ4rFpM+Eur5/f0qATTZC
 nJuN/+lK4I8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 11:10:28 -0700
IronPort-SDR: rkcmMZZsqFkImDAQv97Rj2OPZqLOBGEV+8KYIn8VTjJje8TRTV8q1/06dmf/2B/qVAKUyPKwj+
 5WxEkMMMDJ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="270607398"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2020 11:10:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 21:10:23 +0300
Message-Id: <20200608181023.11503-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the i915_dsc_fec_support debugfs
 file for DP MST connectors
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DSC is not supported on DP MST streams so just return -EINVAL when
reading/writing the i915_dsc_fec_support debugfs file for such
connectors.

This also fixes an OOPS, caused by the encoder->digport cast, which is
not valid for MST encoders.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 36 +++++++++++++++----
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2b640d8ab9d2..ebca8e488d03 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2094,6 +2094,8 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
 
 	do {
+		struct intel_encoder *encoder;
+
 		try_again = false;
 		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
 				       &ctx);
@@ -2120,8 +2122,17 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 		} else if (ret) {
 			break;
 		}
-		intel_dp = intel_attached_dp(to_intel_connector(connector));
+
+		encoder = intel_attached_encoder(to_intel_connector(connector));
+		/* TODO: Add DSC support for MST streams */
+		if (encoder->type == INTEL_OUTPUT_DP_MST) {
+			ret = -EINVAL;
+			break;
+		}
+
+		intel_dp = &enc_to_dig_port(encoder)->dp;
 		crtc_state = to_intel_crtc_state(crtc->state);
+
 		seq_printf(m, "DSC_Enabled: %s\n",
 			   yesno(crtc_state->dsc.compression_enable));
 		seq_printf(m, "DSC_Sink_Support: %s\n",
@@ -2147,9 +2158,8 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 	int ret;
 	struct drm_connector *connector =
 		((struct seq_file *)file->private_data)->private;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_encoder *encoder;
 
 	if (len == 0)
 		return 0;
@@ -2163,10 +2173,22 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 
 	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
 		(dsc_enable) ? "true" : "false");
-	intel_dp->force_dsc_en = dsc_enable;
 
-	*offp += len;
-	return len;
+	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
+
+	encoder = intel_attached_encoder(to_intel_connector(connector));
+	/* TODO: Add DSC support for MST streams */
+	if (encoder->type == INTEL_OUTPUT_DP_MST) {
+		ret = -EINVAL;
+	} else {
+		enc_to_intel_dp(encoder)->force_dsc_en = dsc_enable;
+		*offp += len;
+		ret = len;
+	}
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return ret;
 }
 
 static int i915_dsc_fec_support_open(struct inode *inode,
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
