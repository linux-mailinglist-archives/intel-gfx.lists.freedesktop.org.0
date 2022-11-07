Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF3F61FEDE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E56B10E3EC;
	Mon,  7 Nov 2022 19:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7231910E3E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850376; x=1699386376;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uOqStckcpegLvEbtM78b36u2nPQElVppc/+UprdpxbI=;
 b=lcVXM8uSB9Hft8iPZL/LnPPqy3y8LO15jqaezCxMHCEwaAeO/zVw7NiH
 lifVh0Wabe3C+Bby2qolwaJwNqe845tD5i+9IVM2sqzDCHwm1oTp7ROrq
 Vf6kjg/Rt+nbr6DiWNdrZhwQDKg7vWbQsJ+MT+3Od8D2ER9xRC49NfJuU
 zqYQjFwUUZPmfvPcd7apYGV2EM2AEOJdSZ+FdJeJPH+jv6jW42AKZCuI3
 bZTzc3eauqm0mOcDTDMfrLEJBREg37P5paI0hCuqwGvZzsFmWU00AMAA7
 J6xPCxaOSeDAqgurTLK0lrnmCDg/YnrFE7wQsc666yRMCk9yPR/WHX5RN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="337229174"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="337229174"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:46:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965296793"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965296793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 07 Nov 2022 11:46:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Nov 2022 21:46:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 21:46:02 +0200
Message-Id: <20221107194604.15227-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Treat HDMI as DVI when cloning
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

When doing HDMI+non-HDMI cloing the other sink can't get
the inframes/etc. so stuff like limited range output is
not a good idea.

Similarly when doing HDMI+HDMI cloning on g4x (only platform
where we allow it) only one of the ports can receive infoframes
and so again using any fancy stuff is a bad idea. We also don't
track the inforames/audio state per-port so we'd end up with
some kind of random mismash state when multipled encoders try
to compute the same stuff. And the hardware will in fact
automagically disable audio/infoframe transmission if you try
to enable it for multiple HDMI ports at the same time.

Thus disable all HDMI specific features when cloning.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index d3692c9a1d80..31927f8238d1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2057,13 +2057,6 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 	if (!intel_hdmi_source_bpc_possible(dev_priv, bpc))
 		return false;
 
-	/*
-	 * HDMI deep color affects the clocks, so it's only possible
-	 * when not cloning with other encoder types.
-	 */
-	if (bpc > 8 && crtc_state->output_types != BIT(INTEL_OUTPUT_HDMI))
-		return false;
-
 	/* Display Wa_1405510057:icl,ehl */
 	if (intel_hdmi_is_ycbcr420(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
@@ -2238,6 +2231,12 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
+static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->uapi.encoder_mask &&
+		!is_power_of_2(crtc_state->uapi.encoder_mask);
+}
+
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
@@ -2253,8 +2252,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
-							 conn_state);
+	pipe_config->has_hdmi_sink =
+		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
+		!intel_hdmi_is_cloned(pipe_config);
 
 	if (pipe_config->has_hdmi_sink)
 		pipe_config->has_infoframe = true;
-- 
2.37.4

