Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9149656B6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEC310E7E3;
	Fri, 30 Aug 2024 05:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlEPUBqs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B0210E7DF;
 Fri, 30 Aug 2024 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994514; x=1756530514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5utVn4c9xPG98n3AX6UDXA6XyN5eH40/lw/NnMMa1bE=;
 b=MlEPUBqsabPKPTBsDBAXKljPin+B5gpoFi1g3sJ5A0wYpyBXjuRzezVP
 J1p1kM3U3LA+RcvsEbQYGu5s3c8vXBuCV7+//f9vA0H0Fk2HCWf87lJaY
 4PSUTMnx+b4XGQFF83NvfTW2oV5x5AVBHFGnF5b0f36dJrddpPt86PkKl
 eTZJZKMwV+MIydYYAdV/ALlvr8CThUbOtQ/Dksg8JwIxUwpVURz98LXXB
 +DlquQXAd0s6KD5/CEqcFgIDs2vO3ypU7SfpZd+EaUd7cEfHU+CJTERbb
 3qxRhwFZDiWGXfqJeHhxzacctLvjz2NS4+3Sxh0rGnJu15Z0F5F8h4oSt g==;
X-CSE-ConnectionGUID: HWjR/qBVQz2ObNQD0JviwA==
X-CSE-MsgGUID: nKLKsDzlSwGxHQN7uX54Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421679"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421679"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:34 -0700
X-CSE-ConnectionGUID: 8B0nacANQlCkURH/fx0qcQ==
X-CSE-MsgGUID: 3IwGdwiaSH60n9vhsdIqtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610251"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/19] drm/i915/vdsc: Rename helper to check if the pipe
 supports dsc
Date: Fri, 30 Aug 2024 10:39:38 +0530
Message-ID: <20240830050950.2528450-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Rename the helper is_pipe_dsc to intel_dsc_is_pipe_dsc to prepare for its
future use across multiple files. This change is a preliminary step towards
making the function non-static, enhancing its accessibility and
reusability.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 891346f1f09a..6d60b72a9dfb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -35,7 +35,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
+static bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
@@ -366,7 +366,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 	 */
 	if (DISPLAY_VER(i915) == 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
-	else if (is_pipe_dsc(crtc, cpu_transcoder))
+	else if (intel_dsc_is_dsc_pipe(crtc, cpu_transcoder))
 		return POWER_DOMAIN_PIPE(pipe);
 	else
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
@@ -395,7 +395,7 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
 	enum pipe pipe = crtc->pipe;
 	bool pipe_dsc;
 
-	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
+	pipe_dsc = intel_dsc_is_dsc_pipe(crtc, cpu_transcoder);
 
 	if (dsc_reg_num >= 3)
 		MISSING_CASE(dsc_reg_num);
@@ -538,7 +538,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		rc_buf_thresh_dword[i / 4] |=
 			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
 			      BITS_PER_BYTE * (i % 4));
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
 			       rc_buf_thresh_dword[0]);
 		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
@@ -592,7 +592,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 				RC_MAX_QP_SHIFT) |
 			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
 				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
 			       rc_range_params_dword[0]);
 		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0_UDW,
@@ -726,13 +726,13 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 
 static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
-	return is_pipe_dsc(crtc, cpu_transcoder) ?
+	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
 		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
 }
 
 static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
-	return is_pipe_dsc(crtc, cpu_transcoder) ?
+	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
 		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
 }
 
-- 
2.45.2

