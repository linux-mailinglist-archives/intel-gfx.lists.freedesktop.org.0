Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E88A9E81C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50E810E396;
	Mon, 28 Apr 2025 06:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJEXg7Ge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3B010E38D;
 Mon, 28 Apr 2025 06:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821390; x=1777357390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DJguD8A8uUd3Bul/nuhzExQJ4LVxWmR3rrXlkbvGjPk=;
 b=IJEXg7GetfyafPexDO604UsxBlzfdwmQCh/oKtL5GeOqgud6elxA/UhX
 Y72NfPJhW+hq3Mo/1eFk8qv6DedH8cjKCqPJLQx4Fqx4oeFhlTRthJIuB
 myj0i97fF2zqQ8jd/brFmkMFFlCBxtKp+rzl42AYy2R/WCG+UZskOgzA2
 T4USdiap7jpPOVb6s5rYWV+30v2YxHgw/2IiplNQznpwGmeGkpW+NrPs6
 kUXy42l3+zvAhaM+sqsJoHNYcZi/k+0rWPxMt4+Ja5hk3uGxDCOHCQ/HP
 AiJpcMnVM9qZwPdHW/gyTy9qzP0JZDTL4mahxJ+c2z5IYCJXiDmZXuATC w==;
X-CSE-ConnectionGUID: /N5fDeVxTsmh6PlUhWDDwA==
X-CSE-MsgGUID: cT/NBITpSDinoZORZ2XLWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204182"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204182"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:07 -0700
X-CSE-ConnectionGUID: GJtMvJhjQR2d6Lq0KaJUKA==
X-CSE-MsgGUID: b58Ssd9yQCuvAEWh1nwCJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231215"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:06 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 05/15] drm/i915/vrr: Add functions to read out vmin/vmax
 stuff
Date: Mon, 28 Apr 2025 11:50:48 +0530
Message-ID: <20250428062058.2811655-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 57 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  5 +++
 2 files changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index adfd231eb578..ab4f8def821c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -746,3 +746,60 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_DCB_ADJ_VMAX_CFG(display, cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_DCB_ADJ_VMAX_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_FLIPLINE_DCB(display, cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp = 0;
+
+	tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(display, cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_VMAX_DCB_MASK, tmp) + 1);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..e62b8b50aec6 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -42,4 +42,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VRR_H__ */
-- 
2.48.1

