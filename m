Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A70965EC8D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DC710E720;
	Thu,  5 Jan 2023 13:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031AA10E71F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924288; x=1704460288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6fAG8CRfZ6CS3lYvqE/inFvtGeBOTsyqcRgIaDmJY1g=;
 b=FfbcGnWVvSGHrzBxor5hRLj7/Qxi/BxdRgIqMdA0oV5IMPH4Z/QQU6zM
 6LnaW5A0btP4+kDcWJhhZJ19ta2aZkDWq+8km7S5vm+uGONv/BXkxMfev
 rStSMv/rjVj9nyCMIt/0wQsdfunXjUl+vo712LivZK4G1vt0xaZm2GfHG
 xn7f9rA7kkNY0kgwJzTKtsQcKfciZXxGPuzzQMG28AlWmec9wd0hhWHM2
 BbJz6yVu6+G12+0VNfzNikOsN+A1DR4Wg2uKlEgpWgpPn+icdnW0xBf9P
 DAtlwG0FnCFf5L6gx5QCGlR7viqf9shCWjCpxeOEUvenFHRjtnxav6GBj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429786"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429786"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129091"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129091"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:25 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:43 +0100
Message-Id: <20230105131046.2173431-6-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/hdmi: use intel_de_rmw
 if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c   |  8 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 15 ++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c | 40 +++++++----------------
 3 files changed, 22 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index c3580d96765c6c..f58849b416ea89 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -271,8 +271,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 	 */
 
 	if (pipe_config->pipe_bpp > 24) {
-		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
-			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+			     0, TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= SDVO_COLOR_FORMAT_8bpc;
@@ -288,8 +288,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
-		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
-			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 6406fd487ee524..2984d2810e42cc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -943,8 +943,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 
 	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
 						   port);
-	intel_de_write(dev_priv, HDCP_REP_CTL,
-		       intel_de_read(dev_priv, HDCP_REP_CTL) & ~repeater_ctl);
+	intel_de_rmw(dev_priv, HDCP_REP_CTL, repeater_ctl, 0);
 
 	ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
 	if (ret) {
@@ -1819,12 +1818,10 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 	}
 
 	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
-	    LINK_AUTH_STATUS) {
+	    LINK_AUTH_STATUS)
 		/* Link is Authenticated. Now set for Encryption */
-		intel_de_write(dev_priv,
-			       HDCP2_CTL(dev_priv, cpu_transcoder, port),
-			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);
-	}
+		intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+			     0, CTL_LINK_ENCRYPTION_REQ);
 
 	ret = intel_de_wait_for_set(dev_priv,
 				    HDCP2_STATUS(dev_priv, cpu_transcoder,
@@ -1848,8 +1845,8 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 				      LINK_ENCRYPTION_STATUS));
 
-	intel_de_write(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
-		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);
+	intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+		     CTL_LINK_ENCRYPTION_REQ, 0);
 
 	ret = intel_de_wait_for_clear(dev_priv,
 				      HDCP2_STATUS(dev_priv, cpu_transcoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index efa2da080f62d4..4b09f17aa4b23b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -237,15 +237,11 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
 			       void *frame, ssize_t len)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
+	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
@@ -313,15 +309,11 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
@@ -395,15 +387,11 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
@@ -471,15 +459,11 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv,
-- 
2.34.1

