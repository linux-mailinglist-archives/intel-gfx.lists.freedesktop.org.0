Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873A85AAC70
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 12:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E68010E7EF;
	Fri,  2 Sep 2022 10:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEA010E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 10:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662114759; x=1693650759;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a5twen5Spzrv3iZJWlOXwMsh/zdoqpf1eFz1OEIKW0U=;
 b=nifBDSU/DiiLXF9kYQjXJ+v14tsDiv8noHEtRhMabMsRhyOZ4IVvvg2P
 2leyo0hqT+VhyzpvmFsNgIqNguxizpyl+WrlSZc/aXXzbqkff4hEIkPLU
 Ut3uW7QuemToNhOcV+YubvuAFknASRZicANYivVFust5DiBmHLNKet9QQ
 SBHNfC3S8n4cSKS2QXEM3Fa78zhHDebeeMJiboOvE6CVpKheCKa/XU2uA
 QCRLEPjj9417QU+5Wxp/oHwnSNQh1YhaacAEvsX3uKrtvoifPhTRZgu4d
 xpd0yzslntV4aP5RHhK+V4Igd9WUy3S2PBn62DThUn0sU/7/PtUgyYuFe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="359910821"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="359910821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:32:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="646074359"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:32:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:02:19 +0530
Message-Id: <20220902103219.1168781-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/vdsc: Set VDSC PIC_HEIGHT before using
 for DP DSC
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

Currently, pic_height of vdsc_cfg structure is being used to calculate
slice_height, before it is set for DP.

So taking out the lines to set pic_height from the helper
intel_dp_dsc_compute_params() to individual encoders, and setting
pic_height, before it is used to calculate slice_height for DP.

Fixes: 5a6d866f8e1b ("drm/i915: Get slice height before computing rc params")
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 2 ++
 drivers/gpu/drm/i915/display/intel_dp.c   | 1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 3e20b2f65887..ed4d93942dbd 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1630,6 +1630,8 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
+	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
+
 	ret = intel_dsc_compute_params(crtc_state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d4e037450ac5..8dd346800112 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1406,6 +1406,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	 * DP_DSC_RC_BUF_SIZE for this.
 	 */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
+	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 
 	/*
 	 * Slice Height of 8 works for all currently available panels. So start
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d7eb1af328e7..269f9792390d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -460,7 +460,6 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	u8 i = 0;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
-	vdsc_cfg->pic_height = pipe_config->hw.adjusted_mode.crtc_vdisplay;
 	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
 					     pipe_config->dsc.slice_count);
 
-- 
2.25.1

