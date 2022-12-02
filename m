Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586866407DC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:44:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D0610E0E9;
	Fri,  2 Dec 2022 13:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEF610E0E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669988667; x=1701524667;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9gBtPnN6OKo+bG7h83LeNWJsglrCBHXP4QQGpTxkUto=;
 b=YenRMSX/BOCTBBlGgmRHD+MuTX5aeZ7pEDJB+9+5/uAJtLm9sOeG+vNG
 5aMKhtqlsEnTO2OIyXASNbpI29vt2UmyARjUL/FYmm1/4iy7AeUcKdlb5
 KG7w8lkEMS+sZ8PG1PLD+3lzLDaVoosxXbkhK2MUnb8Iber9zTTvMzwFo
 3sw+TczaHy13V1ngckZR+JzUlk5UKlinVgqofouWi4BRtfbUBlNjjfjEE
 qEyvg1FkTIKsRMGHcefRXAMjw8m6GpcHdo59l3NOzhlzkAmDxew7CmFnq
 royCxKcgJ31PV6Xvnld4XxKg7ITt/SWT+gF/1n18AqhLkspga3BHnCeUu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317102435"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="317102435"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:44:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622704037"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="622704037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 02 Dec 2022 05:44:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Dec 2022 15:44:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:44:12 +0200
Message-Id: <20221202134412.21943-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/vrr: Be more careful with the bits
 in TRANS_VRR_CTL
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

On mtl (at least) clearing the guardband bits in the same write
as the enable bit gets cleared seems to cause an immediate FIFO
underrun. Thus is seems that we need to first clear just the
enable bit, then wait for the VRR live status to indicate the
transcoder has exited VRR mode (this step is documented in Bspec
as well), and finally we can clear out the rest of the TRANS_VRR_CTL
for good measure.

I did this without any RMWs in case we want to toggle VRR on/off
via DSB in the future, and as we know DSB can't read registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 40 +++++++++++++++---------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 753e7b211708..5ff6aed9575e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -161,31 +161,36 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
-void intel_vrr_enable(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
+static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 trans_vrr_ctl;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (!crtc_state->vrr.enable)
-		return;
-
-	if (DISPLAY_VER(dev_priv) >= 13)
-		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
-			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
+	if (DISPLAY_VER(i915) >= 13)
+		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
 			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
 	else
-		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
-			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
+		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
 			VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
 			VRR_CTL_PIPELINE_FULL_OVERRIDE;
+}
+
+void intel_vrr_enable(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->vrr.enable)
+		return;
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl);
+	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+
+	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -222,8 +227,13 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
+	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+		       trans_vrr_ctl(old_crtc_state));
+	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
+				VRR_STATUS_VRR_EN_LIVE, 1000);
+
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
+	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc *crtc,
-- 
2.37.4

