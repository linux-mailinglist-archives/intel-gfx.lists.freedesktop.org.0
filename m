Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0CC8D79C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2ED10E7C6;
	Thu, 27 Nov 2025 09:16:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1F4pe7L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E9B10E7BE;
 Thu, 27 Nov 2025 09:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234962; x=1795770962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1fnd9wylmlb4DM6BrZIfa9B3OjBFiIrneohqhPv8Ncc=;
 b=Q1F4pe7LlrxdPIv1/PBGCe+ZyAHcS/MtFlvoUT7SGquyVXZWF6RlVAw/
 LYj2D6P2oXv58qyx8WzFGGq18PrJcu/b71UdlKPMgpExY4+gcP+EpOHHc
 Kl6vf9J9IUS0KS+alfo0hd3CwGFeeF1wCZdZtlOUKcsiWZFav7RhYvlKS
 QS3ZVRoFKSu36+KX9TP2LfX8m3dshXEcg6S6ChL0b+BRqajZWP2gcM+/d
 AqyB0vzPP3v/XyovK3olpn5e9BMs29fhtJBaamox2JGTeLQeNPkTcZrI2
 vbb+oCP/B/6rzls+z0SKmu6jZBVbHudX6eADvj9swkbV1sxr3DBtbXwAQ w==;
X-CSE-ConnectionGUID: F2cgOGrMSiqB4MuUmxLd/w==
X-CSE-MsgGUID: A3N8dCkDS7WpjVyDwL/ZMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642328"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642328"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:02 -0800
X-CSE-ConnectionGUID: vUSTTNoUQTOwFc9FCuUBCA==
X-CSE-MsgGUID: 5kXg9oqmSgyFhMQmRXD4Xw==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:01 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 04/17] drm/i915/vrr: Add functions to read out vmin/vmax
 stuff
Date: Thu, 27 Nov 2025 14:46:01 +0530
Message-ID: <20251127091614.648791-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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
index b92c42fde937..7f0ead192777 100644
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

