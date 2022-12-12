Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75782649922
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 08:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3255710E15B;
	Mon, 12 Dec 2022 07:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B655710E15B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 07:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670828574; x=1702364574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yrj0HJDKfExYDlk12lmLZpOPRuoIOuf+k0SK4MxeANo=;
 b=BflQAhGcsHuKXTXI1QYlTONh+2h14CVu7Ya0otrDSKsXf5moi4owSeiF
 E0OkEo8o4exG8KNfNNbzaDe+8/7MOS/wRCLJ8a1IUU6k3yFz781mfMYNW
 8Ypm2LC/aDiSwigJfTpD6f5+BttZtOSNqUQlSYBBNkJkWw9Qcj99HaaEW
 074NcaS4BNgxR1Anz+0+yi3/a7t6UF5JyTAXGoKQNi4WWreB5eNXEMZWe
 8Ae9Y7nkQTYhgGymiLOibM/WPy9Gv3U0XHieh55YabbbRK0ZDV5GeOgcK
 9/F8gfaOqFdvGMh/RgndvxVwsye3rDWxVaj22jjqb51wf2HuCCB6uzqlK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="382094739"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="382094739"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 23:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="822383185"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="822383185"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2022 23:02:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 12:32:28 +0530
Message-Id: <20221212070228.2563936-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 ++
 drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 72cf83a27405..4d63a9ce5f42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3278,6 +3278,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
+	if (IS_DISPLAY_VER(dev_priv, 13, 14)
+			dip_enable |= VIDEO_DIP_ENABLE_VSC_HSW;
 	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
 
 	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9ff1c0b223ad..a5c449a05b4d 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -630,6 +630,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 		tmp = intel_de_read(dev_priv,
 				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
 		mask = VIDEO_DIP_ENABLE_GMP_HSW;
+		if (IS_DISPLAY_VER(dev_priv, 13, 14)
+				mask |= VIDEO_DIP_ENABLE_VSC_HSW;
 
 		if (tmp & mask)
 			val |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
-- 
2.25.1

