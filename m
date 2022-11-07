Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5858261FEDC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6236E10E3E5;
	Mon,  7 Nov 2022 19:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9182A10E3E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850370; x=1699386370;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n/VMT73ie6DuHh44e3uDninNyrHTGJ9lTpZrL6vEFmo=;
 b=aY29+ebXph9cUOFo+lPAumvdiTFo0iq3gUxS+kPbOcec3U8/PE6qIndd
 +j1nsamtaT/n4LCejUwPVG4sA+HJ/Q7l2Ratom7grvA94dm4/ZY3h+wyl
 dSi4ol4C0G3y8iYRcX/mJPAmjxwLoD5wExxWErfSAEEzxCVUhq7xwexkB
 c4WVe4adxu2KExXpCudNAiYhUWh0+8ysEtjp2zjN+vR3N2rVZnDg3iv48
 22b/FY8sqTy7+4+yqSALqxf9w3gve8++sKDymfXJKhZlfh4k7kmNHpyut
 O96VE72nP7V/4eguAi6vZ7fM2FR0TUyetYammg4biC/BrMkIfcPZ4u9BT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="337229153"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="337229153"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:46:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965296736"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965296736"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 07 Nov 2022 11:46:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Nov 2022 21:46:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 21:46:00 +0200
Message-Id: <20221107194604.15227-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Introduce
 g4x_hdmi_compute_config()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Start pulling some of the more platform specific things out from
intel_hdmi_compute_config(). has_pch_encoder is clearly one
such thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ---
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8aadf96fa5e9..3d09359d7337 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -78,6 +78,18 @@ static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
 	return ret;
 }
 
+static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (HAS_PCH_SPLIT(i915))
+		crtc_state->has_pch_encoder = true;
+
+	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
+}
+
 static void intel_hdmi_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *pipe_config)
 {
@@ -543,7 +555,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 			 "HDMI %c", port_name(port));
 
 	intel_encoder->hotplug = intel_hdmi_hotplug;
-	intel_encoder->compute_config = intel_hdmi_compute_config;
+	intel_encoder->compute_config = g4x_hdmi_compute_config;
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		intel_encoder->disable = pch_disable_hdmi;
 		intel_encoder->post_disable = pch_post_disable_hdmi;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 02f8374ea51f..f2a4431a7fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2257,9 +2257,6 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		pipe_config->pixel_multiplier = 2;
 
-	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv))
-		pipe_config->has_pch_encoder = true;
-
 	pipe_config->has_audio =
 		intel_hdmi_has_audio(encoder, pipe_config, conn_state);
 
-- 
2.37.4

