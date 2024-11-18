Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDDB9D139B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106A210E4FD;
	Mon, 18 Nov 2024 14:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adZwgWdt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BB510E4FD;
 Mon, 18 Nov 2024 14:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941391; x=1763477391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CnmcsKw6QEptTpFhBxsh1f+Hrip54T4h2NEl4zZNekc=;
 b=adZwgWdt/tPCKheTNnc6XGy54qTV6l40bDxmORmPZp1m/6O1WETwVrZB
 w+QwWZEmtRmkXDVhWKzbYgcWNnK267IAEEBiz09ZORYjLVGKLztPkJt+z
 Ovsw7K/JwKnk18njBv3T3/A5qRFgXfSer8F6u0YnJbyxQAphoimXXHZY8
 6Ww3JwVLFiQoFmyDUBNMhsX0Srju6B3lspv4TVwchZxeaQcj/VssX1PTZ
 F0SnXkIlgt5dYqt8EHAYTG85xNL3BWELbDlQMYnBLDvK6C8OT57QcG5ip
 Cg3qgbUWuIILm5pIQ8tEeIZGHA+gyrkld81UT9alLkUCRzFO2kDdYuLRq A==;
X-CSE-ConnectionGUID: xsA9apwhQamY5pWKjtfXOw==
X-CSE-MsgGUID: jDQ61aMVTvGLfXxfxX/qYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31307131"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31307131"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:51 -0800
X-CSE-ConnectionGUID: ywVkqxdCTuSJkjXHc8OSQA==
X-CSE-MsgGUID: AaouRyAXTBG7qUMQ7QNhXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="94289244"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/11] drm/i915/ddi: rename temp to ddi_func_ctl in
 intel_ddi_read_func_ctl()
Date: Mon, 18 Nov 2024 16:49:03 +0200
Message-Id: <5e9d2e3862926cb516ea1433ef3ab1035172d8aa.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The temp name is a bit vague for something used so much in the function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 25 ++++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index afa86f8302a4..f8edb604d462 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3916,22 +3916,21 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	u32 temp, flags = 0;
+	u32 ddi_func_ctl, flags = 0;
 
-	temp = intel_de_read(dev_priv,
-			     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
-	if (temp & TRANS_DDI_PHSYNC)
+	ddi_func_ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+	if (ddi_func_ctl & TRANS_DDI_PHSYNC)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
 		flags |= DRM_MODE_FLAG_NHSYNC;
-	if (temp & TRANS_DDI_PVSYNC)
+	if (ddi_func_ctl & TRANS_DDI_PVSYNC)
 		flags |= DRM_MODE_FLAG_PVSYNC;
 	else
 		flags |= DRM_MODE_FLAG_NVSYNC;
 
 	pipe_config->hw.adjusted_mode.flags |= flags;
 
-	switch (temp & TRANS_DDI_BPC_MASK) {
+	switch (ddi_func_ctl & TRANS_DDI_BPC_MASK) {
 	case TRANS_DDI_BPC_6:
 		pipe_config->pipe_bpp = 18;
 		break;
@@ -3948,7 +3947,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		break;
 	}
 
-	switch (temp & TRANS_DDI_MODE_SELECT_MASK) {
+	switch (ddi_func_ctl & TRANS_DDI_MODE_SELECT_MASK) {
 	case TRANS_DDI_MODE_SELECT_HDMI:
 		pipe_config->has_hdmi_sink = true;
 
@@ -3958,16 +3957,16 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		if (pipe_config->infoframes.enable)
 			pipe_config->has_infoframe = true;
 
-		if (temp & TRANS_DDI_HDMI_SCRAMBLING)
+		if (ddi_func_ctl & TRANS_DDI_HDMI_SCRAMBLING)
 			pipe_config->hdmi_scrambling = true;
-		if (temp & TRANS_DDI_HIGH_TMDS_CHAR_RATE)
+		if (ddi_func_ctl & TRANS_DDI_HIGH_TMDS_CHAR_RATE)
 			pipe_config->hdmi_high_tmds_clock_ratio = true;
 		fallthrough;
 	case TRANS_DDI_MODE_SELECT_DVI:
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
 		if (DISPLAY_VER(dev_priv) >= 14)
 			pipe_config->lane_count =
-				((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+				((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 		else
 			pipe_config->lane_count = 4;
 		break;
@@ -3977,7 +3976,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		else
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
 		pipe_config->lane_count =
-			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+			((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
 		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
 					       &pipe_config->dp_m_n);
@@ -4013,11 +4012,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	case TRANS_DDI_MODE_SELECT_DP_MST:
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP_MST);
 		pipe_config->lane_count =
-			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+			((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
 		if (DISPLAY_VER(dev_priv) >= 12)
 			pipe_config->mst_master_transcoder =
-					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
+				REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, ddi_func_ctl);
 
 		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
 					       &pipe_config->dp_m_n);
-- 
2.39.5

