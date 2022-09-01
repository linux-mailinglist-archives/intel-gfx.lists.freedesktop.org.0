Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904705A8DED
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290C610E5B4;
	Thu,  1 Sep 2022 06:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB8010E5A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012089; x=1693548089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=48fvnGmwuKwtMyoLkXN59oWM6NQpbtY+cpaXo4jfK+U=;
 b=GV1TLUtMUmjoAw5H1NiCW4LcBif9nsIaBqwlAaNG5XVxoqTxb9s1+29J
 IHAcobFsNJAcY4UGSggKHElNfWy/iXWMF36AkH7r0JqZcx/pXZdJ8Hit4
 e8BqQXvPqK8Nqo9bms6ytNTtO+gRzW8ztMnQvqb8++/lldhlsIwiPpNAn
 5HZARTe3pNApR2pkSO/0Iau/HPvqzTdciU/Th1z0p7CfAtrqFlWPap/v6
 RrYGxbxG/9vWLHpGwOlgSEt3nEspknjYYJKbyxVu3i+cR1LjVioQym7Pl
 olIGUl0b/TCM5QwCQqyalKaVsdH9t4z1SiDFwTf8Blzl1CkqM9yiDWbhj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920247"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685706"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:57 +0530
Message-Id: <20220901060101.1000290-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/dp: Compute configuration for
 using PCON's color/format conversion
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

Fill the crtc_state members to store the configuration required by PCONs
for color/format conversion for a YCBCR420 mode and the computed output
format.

This will be later used during protocol_converter_config to program the
PCON to use appropriate color/format conversion.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b6f62444b589..4c1a0d9f750c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1970,6 +1970,30 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
+static void
+intel_dp_compute_dfp_ycbcr420(struct intel_encoder *encoder,
+			      struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return;
+
+	/* Mode is YCBCR420, output_format is also YCBCR420: Passthrough */
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return;
+
+	/* Mode is YCBCR420, output_format is YCBCR444: Downsample */
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
+		return;
+	}
+
+	/* Mode is YCBCR420, output_format is RGB: Convert to YCBCR444 and Downsample */
+	crtc_state->dp_dfp_config.rgb_to_ycbcr = true;
+	crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
+}
+
 static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -1987,6 +2011,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 
 	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
+	if (ycbcr_420_only)
+		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
 
 	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
 		drm_dbg_kms(&i915->drm,
@@ -2003,6 +2029,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->output_format = intel_dp_output_format(connector, true);
+		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
 	}
-- 
2.25.1

