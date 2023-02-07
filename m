Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2933C68D0C9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DAB10E45F;
	Tue,  7 Feb 2023 07:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE18E10E45E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755936; x=1707291936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s4nJ73q47Lg+ITOWNFxtlNAsOmHk8rdYTBE9RP01Mi0=;
 b=PiBtZ7VdDDxmMjtw4TVYZSDWAgNilBH9PryYTp5IV9sW0jMqlwiPue//
 maGeG/QfhJ+jDzabQMnOseJH2YrjvOeODnqiLxMGxGzyzLedVQskuBC+F
 KEUXvfntHllnKpQ/sofQfx94eQkaKGwlG5nqLZifIIlZNECanR8O9e/rA
 en0AnGLcgBTmVHfuoDM2/KbM4gnhMNoFGASRWgQezuMcUneYwaqL+XN/F
 ANwcaw7lCzjLRCKHafpDMn2YIYsEmTU0zU3kG0zJCnSJdfGxLkukrxnZt
 L82ddr+qUzRtITmvdmbCUrKpgM97ovFNxdIz/EdhB5vyc4mT/BWPRKJHJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317449178"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317449178"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:45:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840674672"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840674672"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 23:45:29 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:14:15 +0530
Message-Id: <20230207074416.3209722-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
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

Add function to check if slice design requirements are being
met as defined in Bspec: 49259 in the section
Slice Design Requirement

--v7
-remove full bspec link [Jani]
-rename intel_dsc_check_slice_design_req to
intel_dsc_slice_dimensions_valid [Jani]

--v8
-fix condition to check if slice width and height are
of two
-fix minimum pixel in slice condition

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 13ad853e24eb..6ebefc195e83 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
 	}
 }
 
+static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config,
+					    struct drm_dsc_config *vdsc_cfg)
+{
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_RGB ||
+	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		if (vdsc_cfg->slice_height > 4095)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >= 15000)
+			return -EINVAL;
+	} else if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		if (vdsc_cfg->slice_width % 2)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height % 2)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height > 4094)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >= 30000)
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 {
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
@@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
 	const struct rc_parameters *rc_params;
 	struct rc_parameters *rc = NULL;
+	int err;
 	u8 i = 0;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
 	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
 					     pipe_config->dsc.slice_count);
+
+	err = intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
+
+	if (err) {
+		drm_dbg_kms(&dev_priv->drm, "Slice dimension requirements not met\n");
+		return err;
+	}
+
 	/*
 	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
 	 * else 1
-- 
2.25.1

