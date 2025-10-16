Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C0DBE1A42
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E3D10E93A;
	Thu, 16 Oct 2025 06:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQMWkl4K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFDD910E939;
 Thu, 16 Oct 2025 06:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760594850; x=1792130850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=715oGfJB38+wK0yJcyc3/aceR5UJgDLH7/W4Ow0Et5k=;
 b=IQMWkl4KsjlCkweiPS9nXMCHeXiaCFtszMz8jEtbnSAHvGWJtM7DQw/w
 jiwouvECGREIIxmNnRZC87YcMCutd3iVj8aNqYPzTi/mttgFXXiW/yCwg
 +e/ne0C0RIE0KgF1e763wUHcOcS2X9RjKDISDeyxYbkqlwmGk7BO/KUbE
 vkJcsjLyACGWJV35aFHxKL56tYpAPy0MRHKBxe0KuzXOe/JXhMzMFg+dE
 kmw/nxL52Pk/dPlrhGah9H9GKjwNd4kn1XJVtfrPABwO6aOvXce4ZPUuB
 11KXiYi1uKgxadwFHPXgZW8bgL/mDZaM0F0DpeYXlFiWr+IwWpCTyyvWo w==;
X-CSE-ConnectionGUID: F+Z2oh9RRemf3BowjP2/Bw==
X-CSE-MsgGUID: 0lhFwOTyTr2M7yMb+MlBkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74120412"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74120412"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:30 -0700
X-CSE-ConnectionGUID: HiIY6rQhSiW7/XV4RDdpiQ==
X-CSE-MsgGUID: ygqSFpKrQWG1/xs3wG+75w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187650805"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/10] drm/i915/vblank: Add helper to get correct vblank length
Date: Thu, 16 Oct 2025 11:24:08 +0530
Message-ID: <20251016055415.2101347-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
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

Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
refresh rate case. That value can be different from the variable refresh
rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
different due to the extra vblank delay, and also on adl+ it could be
different if we were to use an optimized guardband.

So places where crtc_vblank_start is used to compute vblank length needs
change so as to account for cases where vrr is enabled. Specifically
with vrr.enable the effective vblank length is actually guardband.

Add a helper to get the correct vblank length for both vrr and fixed
refresh rate cases. Use this helper where vblank_start is used to
compute the vblank length.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 0b7fcc05e64c..2fc0c1c0bb87 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 
 	return scanline;
 }
+
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc_state->vrr.enable)
+		return crtc_state->vrr.guardband;
+	else
+		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..98d04cacd65f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -48,4 +48,6 @@ const struct intel_crtc_state *
 intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VBLANK_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..06e5e6c77d2e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
@@ -2241,7 +2242,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 		scaler_prefill_latency(crtc_state) +
 		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
-		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+		intel_crtc_vblank_length(crtc_state);
 }
 
 static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

