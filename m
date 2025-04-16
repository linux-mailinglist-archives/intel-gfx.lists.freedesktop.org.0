Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE7BA8B050
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AF410E837;
	Wed, 16 Apr 2025 06:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eg+d2ywF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E9A10E837
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784991; x=1776320991;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vLHGaxbJCYIX8jGeH9gR7JgVhJXWXZ/Y5Cb6cu/2tH0=;
 b=eg+d2ywFr6ySaH5pqw31RVFqJc7WaakSLAvoZvSTqI4++c4bg/ScAHDL
 dV+go+56IMGWbMcDGhaGGpKXJVYOsCSkkLeuXDZcpImNWxGIIOr7oMcMC
 UeOnFKzbCJghM9QGb/k3g0t99FjOkKcOcsPAicueFpkS0jlHNXzviYaYe
 1Jv/7KgmKY6Y7HgpkxiAj/PjkkhedxUhB0wgR2GhAR1R+kylk1RnsQ1/E
 PY52LcehUfhVgC5fOngufCKPhMkXXNEBX737NtiIe7qlrwUUUNzVPWvRS
 EP5yi8KVDLi/y/yRebk6dV5kYwoDIXUMxRenjfv5U+TrKaJQlcx0BTqoN A==;
X-CSE-ConnectionGUID: AlM5EVTpRR+3d4TNkgeNQw==
X-CSE-MsgGUID: vhz+dwTUQ6O9Nrm5aI9Ogg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710246"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710246"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:51 -0700
X-CSE-ConnectionGUID: hCYWSsP+QuOOLZKWhFdt2A==
X-CSE-MsgGUID: tTgz88yzQ/C8wn3IUtqDsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880187"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:50 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 4/8] drm/i915/vrr: Add functions to read out vmin/vmax stuff
Date: Wed, 16 Apr 2025 11:57:33 +0530
Message-ID: <20250416062737.1766703-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Calculate delayed vblank start position with the help of added
vmin/vmax stuff for next frame and final computation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 55 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h |  5 +++
 2 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index afa1728837d2..03405c274b8c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -156,7 +156,6 @@ static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_
 		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
 }
 
-
 static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
 	int vmin_vmax)
 {
@@ -747,3 +746,57 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder));
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
+	u32 tmp;
+
+	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder));
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
+	u32 tmp;
+
+	tmp = intel_de_read(display, TRANS_VRR_FLIPLINE_DCB(cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(cpu_transcoder));
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

