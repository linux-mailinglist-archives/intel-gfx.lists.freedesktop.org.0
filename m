Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B01AE5E7A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDF910E4F9;
	Tue, 24 Jun 2025 07:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RfUPSZx7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F226410E4F9;
 Tue, 24 Jun 2025 07:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751481; x=1782287481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mscugIHHy/7jzbFXMrEVslEB5iXT6oJpMmP3fOd9fFE=;
 b=RfUPSZx7BlSHPi4V81w1grjgEstxGadt14KzpY/H1lXXDIiTriv0uV1n
 Q37HkQToxgjcOOFZz/90GN3WMugy7d+jydi2i4i1lgJz7aNUvKlSW6kR/
 6Yqbl3Z+3UwU1iyzXEeLkwaK7DVr5sv+pD0ql4/XEdM1DLj0CbCS0MHOp
 9Dh8KHW3aRwA1xAsKrLdx3+pjLglcuajUnKvJIKeU4o+2cmvuuIMnCuIP
 yUMu1z4z9xqP9snYfmv3Kx7M2QejeLadJVvFyJJGWX+g0/LRJHis4o+EI
 J1e0p607I3nxsIHlSQYwCYrtWMa6JdxWDAQzqnYLihY48zRkvMlKhmNja Q==;
X-CSE-ConnectionGUID: EFRK/uNaR6SNqdmCk1j8hg==
X-CSE-MsgGUID: MO4iXzSFRsWky+Y3B+qkMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398230"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398230"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:20 -0700
X-CSE-ConnectionGUID: nicpKblDTj6AfiPH34eyRQ==
X-CSE-MsgGUID: x3ZtN6LXTkOHumCmrveTxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446407"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:17 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 05/18] drm/i915/vrr: Add functions to read out vmin/vmax
 stuff
Date: Tue, 24 Jun 2025 13:19:35 +0530
Message-ID: <20250624074948.671761-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 50 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  5 +++
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dd8fe4b49690..d7bc35b07bab 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -769,3 +769,53 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder));
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
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder));
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
+	tmp = intel_de_read(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder));
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
+	tmp = intel_de_read(display, TRANS_VRR_DCB_VMAX(cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
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

