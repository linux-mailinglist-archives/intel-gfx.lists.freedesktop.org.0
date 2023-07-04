Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9411746EB1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 12:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2AC10E2C7;
	Tue,  4 Jul 2023 10:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B9110E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 10:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688466672; x=1720002672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yFkMR6qYmW3kmn5gZgiIbcgeybx44BoriUctu7islfw=;
 b=G/0F+PzFQ6YsFhjA//KOm3qtRm925X33gWUMpvRTf3jIegQz14cM6/xb
 YT6HhDmQL7jhaZgQcaVNnmijOI8cO293eHYFvF99ntSWLUTP8XCA4EIIv
 VW0YX6OG5TNXwDWyE0j407iNzZ5a+viU3usBAZniTTDQ+LuCQWmocbAbL
 LwtsfTdchwP/9EVCtWVeR0QuluHs+k1k0TQzr04L2ixM7afXM8t5yieSV
 pCO0fpjKOvxyy03OkcuBys0XFGyh/K4Uu9V2wz4KfywbouziypobeBe5h
 nShjiYZMPiuPBeetfAAifdSrx4STYKlwqKxQAFOLQxFc6ZWHbveOeI0+Z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="342680264"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="342680264"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="718870678"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="718870678"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga002.jf.intel.com with ESMTP; 04 Jul 2023 03:31:10 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 13:31:06 +0300
Message-Id: <20230704103107.11237-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230704103107.11237-1-stanislav.lisovskiy@intel.com>
References: <20230704103107.11237-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add helper function for getting
 number of VDSC engines
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

Currently we are using dsc_split and bigjoiner variables for determining
amount of VDSC instances, however that might change in future, if we happen
to have more of those.
So lets pack all that logic into single function for convenience, so that
at least this isn't hardcoded throughout the whole VDSC code.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.h |  1 +
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..2811810a5eb5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -293,6 +293,16 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 }
 
+u8 intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
+{
+	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
+
+	if (crtc_state->bigjoiner_pipes)
+		num_vdsc_instances *= 2;
+
+	return num_vdsc_instances;
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -303,11 +313,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	u32 pps_val = 0;
 	u32 rc_buf_thresh_dword[4];
 	u32 rc_range_params_dword[8];
-	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
 	int i = 0;
-
-	if (crtc_state->bigjoiner_pipes)
-		num_vdsc_instances *= 2;
+	u8 num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
 	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 8763f00fa7e2..94a7652498e4 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -22,6 +22,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
 struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
+u8 intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state);
 void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
 void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
-- 
2.37.3

