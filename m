Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E9E649995
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 08:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA66510E0E2;
	Mon, 12 Dec 2022 07:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DCD10E0E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 07:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670830430; x=1702366430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d/9gVMiAPTjtqJ9SCGbpFmgPfhhlpngv3ljoxJvRT5E=;
 b=elwWzt4gO0TnSgvzssSPdAVkxKSDP1UMe1SReeg+eyo6c9wrnubQ7RAQ
 CPBeSzC4mDdCm7NEZ8lOXsziqFYwNZ0A36Nqli98tuxLPjNmTMqHIswd/
 aHOJGKN4aNzmQaP+4RePJ3qtDIX8EPtOPD+F5IDCd2HWVhqyaJUG1TLfj
 J+YiXOJ+ZP1HdN0QLBLRonZ9u44dIK73kCoAB3aQ+V+ijcpK2FfFgl0ZE
 2Gw1lIszRDIng5DuQ783MqqPt25TOC03b9gWXXlCQRyTAaPUOMB53GyrA
 JUGukoCHNRVoleSC7R19rJZ8ak2GKiq4BhHiL4DI/9e/yGujyWLuUNRx/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="319645103"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="319645103"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 23:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="976943073"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="976943073"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 11 Dec 2022 23:33:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 13:03:25 +0530
Message-Id: <20221212073325.2678764-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Enable VDIP Enable VSC
 whenever GMP DIP enabled
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

GMP VDIP gets dropped when enabled without VSC DIP being
enabled. Enable VSC DIP whenever GMP DIP is enabled

WA:14015402699

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 72cf83a27405..6c36ee26d399 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3275,10 +3275,13 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
+	u32 val;
 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
-	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
+	if (IS_DISPLAY_VER(dev_priv, 13, 14))
+		dip_enable |= VIDEO_DIP_ENABLE_VSC_HSW;
+	val = intel_de_read(dev_priv, reg) & ~dip_enable;
 
 	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
 	/* When PSR is enabled, this routine doesn't disable VSC DIP */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9ff1c0b223ad..e7cdc521fbd3 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -630,6 +630,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 		tmp = intel_de_read(dev_priv,
 				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
 		mask = VIDEO_DIP_ENABLE_GMP_HSW;
+		if (IS_DISPLAY_VER(dev_priv, 13, 14))
+			mask |= VIDEO_DIP_ENABLE_VSC_HSW;
 
 		if (tmp & mask)
 			val |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
-- 
2.25.1

