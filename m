Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4386653DF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 06:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62AF10E6EC;
	Wed, 11 Jan 2023 05:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5C510E6EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 05:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415603; x=1704951603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rlaZG4+j/mg+cV/fiL/FdD6LXu7drK28J23+1L+7SMU=;
 b=jrKjM0LdFSZPoOghYJSDXyB8djyHv0OFxRqBn9KbPHdODEf6nMgEhSwC
 N1zHd0yzSi/iMCIe+mHu/7u87zNZ6zXY6J3dVrqjevZwr3pEIpgPbpTkG
 PfYmC7M0qS9tC7IE90QBokRT9q1q1Y5Yf2zgyKzVlo73bSrfVeXQOdeCE
 R8jK/UvhgYLKeXGKIcUZ/MmjuVp8VsD9LkQvtWkwVTeVhaXXEdiG3HfVK
 s6K2A+2Nc7DutlLfR+TVHuSbSHsKlaf7UAdyUNlaz41/GQpiD68lR+tUd
 U2JxVdI+N2dTcpYuinemSXP9YsPEA2guiVSNBmX1/SWLc9getXChugk5X g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325341414"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325341414"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="720598475"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="720598475"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2023 21:40:01 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 11:08:34 +0530
Message-Id: <20230111053837.1608588-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230111053837.1608588-1-suraj.kandpal@intel.com>
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 6/9] drm/i915/vdsc: Check slice design
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
met as defined in the below link section Slice Design Requirement

https://gfxspecs.intel.com/Predator/Home/Index/49259

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 52a82d8b289e..0a683d6dff33 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
 	}
 }
 
+static int intel_dsc_check_slice_design_req(struct intel_crtc_state *pipe_config,
+					    struct drm_dsc_config *vdsc_cfg)
+{
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_RGB ||
+	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		if (vdsc_cfg->slice_height > 4095)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 15000)
+			return -EINVAL;
+	} else if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		if (!(vdsc_cfg->slice_width % 2))
+			return -EINVAL;
+		if (!(vdsc_cfg->slice_height % 2))
+			return -EINVAL;
+		if (vdsc_cfg->slice_height > 4094)
+			return -EINVAL;
+		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 30000)
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
+	err = intel_dsc_check_slice_design_req(pipe_config, vdsc_cfg);
+
+	if (err) {
+		drm_dbg_kms(&dev_priv->drm, "Slice design requirements not met\n");
+		return err;
+	}
+
 	/*
 	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
 	 * else 1
-- 
2.25.1

