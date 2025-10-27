Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA2C0F494
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41CA10E501;
	Mon, 27 Oct 2025 16:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mW3P1LuN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930FA10E4FD;
 Mon, 27 Oct 2025 16:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582578; x=1793118578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T4miS3t/m6kCFDrrTN3j4dlS9z9Gu+Uyb5726Lbf+ys=;
 b=mW3P1LuNnfYF0r/8IQi8+tqGLHQgZGXq5rlDNV0udzfNADCQLXCGHjja
 NBfKFhtVOwYNBdqAlb1sqDwcJpL5uA1yuYABQQhqfQRdg2ie6mp+BaKej
 rZ1plt2AJdLGYNVba/bjw7Wkl/uUFfNB6KhpOu5ln8L51gzouo/9uSM09
 AiwaVaXES3U/RPkM2oJjE5OQS4yjR37tPjinVEWdjSfSZJGeVxmj1BmJi
 RHKJTGjrWUSjEwK4dxk6k0K57hGPivqDg7XhE45EWvITEqoKdWpaOcw6Q
 D65HfC1/dZG76/tf9c1lfpqcD+gpPvrbaq1Gb7RX2QWUz87iXxq5To5E7 g==;
X-CSE-ConnectionGUID: Qarm8A/jRb+WLi8Lwv2HXA==
X-CSE-MsgGUID: /CSHxgTiSByeBlRCAEMCSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299324"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299324"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:38 -0700
X-CSE-ConnectionGUID: KGBy6PcjRr2WUtBQtc+ndg==
X-CSE-MsgGUID: 88aCbPIPQR2e92Q5oLHGKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785557"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 04/22] drm/i915/vrr: Add functions to read out vmin/vmax
 stuff
Date: Mon, 27 Oct 2025 21:59:09 +0530
Message-ID: <20251027162927.2655581-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Calculate delayed vblank start position with the help of added
vmin/vmax stuff for next frame and final computation.

--v2:
- Correct Author details.

--v3:
- Separate register details from this  patch.

--v4:
- Add mask macros.

--v5:
- As live prefix params indicate timings for current frame,
read just _live prefix values instead of next frame timings as
done previously.
- Squash Refactor vrr params patch.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 56 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  5 +++
 2 files changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 00cbc126fb36..68dde96583c0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -261,6 +261,12 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
 		return value - crtc_state->set_context_latency;
 }
 
+static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
+				  int vmin_vmax)
+{
+	return intel_vrr_hw_value(crtc_state, vmin_vmax) - crtc_state->vrr.guardband;
+}
+
 /*
  * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
  * Vtotal value.
@@ -898,3 +904,53 @@ int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_vmin_vblank_start(crtc_state) -
 	       crtc_state->set_context_latency;
 }
+
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state, VRR_DCB_ADJ_FLIPLINE(tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state, VRR_DCB_ADJ_VMAX(tmp) + 1);
+}
+
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state, VRR_DCB_FLIPLINE(tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index bc9044621635..66fb9ad846f2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -43,4 +43,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
 
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VRR_H__ */
-- 
2.48.1

