Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93423CAF074
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C084D10E483;
	Tue,  9 Dec 2025 06:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXImiXP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87B010E1B6;
 Tue,  9 Dec 2025 06:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261755; x=1796797755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=acptEv7UodBw4MRPuBE9WKHAjdiGsXPGti9YwMhWPQM=;
 b=GXImiXP1gN5aB+RD9oAS0VYRHpnpd3p+kwe1N7jDK8HL3M4frNXGURQ2
 iCXJ8/lI9f4PHTTpgt/1GxFq3Y/NOfjtyOGODRSXMsrrljKhEPX7b37PF
 cjzumSGbvhzc7o2UWCOiNBgQrkQz7Xn24whoUvc1x+2KMDG7CsDAxOPm8
 +O1Ab+2HFdz7EGA9wEfYUr+KzpWBy+wIIlQHVt1z6g9AsMK9EwJiVizJf
 rOsZ9PdpDgMW+uWmkbSAHckv5DSp01aVZDIljG20utTTIvXscdLpP/hk4
 xnBYD4rm9tjYd0uTFn1dvX+vJAgiK9ICP7M/1lAxf315v8OoU4lP9Nuvr w==;
X-CSE-ConnectionGUID: XhELzlTBSiSg3IfNRqwzdw==
X-CSE-MsgGUID: homydUGUSVi1eYF3G9yDIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804102"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804102"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:15 -0800
X-CSE-ConnectionGUID: FRz3ZrTcQFaBH7YZF02c7Q==
X-CSE-MsgGUID: HAeeBpZKQXqtKfLrOpYGNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585554"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:13 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/5] drm/i915/display: Add intel_dsb param to CASF helpers
Date: Tue,  9 Dec 2025 11:55:24 +0530
Message-Id: <20251209062527.620382-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251209062527.620382-1-nemesa.garg@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

Update CASF helpers to take intel_dsb pointers.
Replace register writes with write_dsb.
When CASF is enabled through a modeset operation, pass
NULL for the dsb parameter to indicate direct register
programming otherwise provide a valid DSB instance to
submit through the buffered sequence.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c    | 19 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_casf.h    | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
 3 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 6e45ff7d5ff7..e9ffbd42a030 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -76,7 +76,8 @@ static void intel_casf_filter_lut_load(struct intel_crtc *crtc,
 			       sharpness_lut[i]);
 }
 
-void intel_casf_update_strength(struct intel_crtc_state *crtc_state)
+void intel_casf_update_strength(struct intel_dsb *dsb,
+				struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -259,7 +260,8 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 	}
 }
 
-void intel_casf_enable(struct intel_crtc_state *crtc_state)
+void intel_casf_enable(struct intel_dsb *dsb,
+		       struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -273,20 +275,21 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
 
 	sharpness_ctl |= crtc_state->hw.casf_params.win_size;
 
-	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
+	intel_de_write_dsb(display, dsb, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
 
 	skl_scaler_setup_casf(crtc_state);
 }
 
-void intel_casf_disable(const struct intel_crtc_state *crtc_state)
+void intel_casf_disable(struct intel_dsb *dsb,
+			const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	intel_de_write(display, SKL_PS_CTRL(crtc->pipe, 1), 0);
-	intel_de_write(display, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
-	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
-	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(crtc->pipe, 1), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
+	intel_de_write_dsb(display, dsb, SHARPNESS_CTL(crtc->pipe), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
 }
 
 void intel_casf_check(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 2eec90d9d4c4..16a938e19c71 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -11,12 +11,16 @@
 struct intel_crtc_state;
 struct intel_atomic_state;
 struct intel_crtc;
+struct intel_dsb;
 
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
-void intel_casf_update_strength(struct intel_crtc_state *new_crtc_state);
+void intel_casf_update_strength(struct intel_dsb *dsb,
+				struct intel_crtc_state *new_crtc_state);
 void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state);
-void intel_casf_enable(struct intel_crtc_state *crtc_state);
-void intel_casf_disable(const struct intel_crtc_state *crtc_state);
+void intel_casf_enable(struct intel_dsb *dsb,
+		       struct intel_crtc_state *crtc_state);
+void intel_casf_disable(struct intel_dsb *dsb,
+			const struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
 bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
 void intel_casf_check(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 882ea286fc9c..256103d55409 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1165,7 +1165,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_encoders_audio_disable(state, crtc);
 
 	if (intel_casf_disabling(old_crtc_state, new_crtc_state))
-		intel_casf_disable(new_crtc_state);
+		intel_casf_disable(NULL, new_crtc_state);
 
 	intel_drrs_deactivate(old_crtc_state);
 
@@ -6804,9 +6804,9 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 	}
 
 	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
-		intel_casf_enable(new_crtc_state);
+		intel_casf_enable(NULL, new_crtc_state);
 	else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
-		intel_casf_update_strength(new_crtc_state);
+		intel_casf_update_strength(NULL, new_crtc_state);
 
 	intel_fbc_update(state, crtc);
 
-- 
2.25.1

