Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D76A6DBEA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4133810E44C;
	Mon, 24 Mar 2025 13:45:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XfsNsNhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9766B10E44D;
 Mon, 24 Mar 2025 13:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823909; x=1774359909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LfeVp6BhrDU/SuR64FwuyiHJzBAAB4XrKyRr89gLTGs=;
 b=XfsNsNhiZJPAjR4aJJKnQnS9oNteQ076CVITZ8p/E9gbtIscDj6rZ0SR
 63fYU1qxQp3w1bpZcPWrmiKQoWG9x+TRlllkImK3I97/DlfKwrKyLer7a
 itO830xZ2LofedSCbw0aVtRvYQkqwy0tfkTZ4+xgDY8Zf5sqXL5IzJ1xn
 BK/u+aiNcaObfiIgHZyK2f+TUH3Xzgz2MO+p8I182PBD7SJVFAq/CUIFk
 VNWMrdGyZXvdLcaKJqqtSVB5AARLBJRmq1ON/66fT6LUGY3U74WbOwRF5
 DvyVKA9vX1Lx9sUuoSsV5rcX1AtZOgHNXC3SDg0nO7+uBt+AoUJ6p6ymS Q==;
X-CSE-ConnectionGUID: 1gKybks5RLmbT6voiic+zA==
X-CSE-MsgGUID: BMsZr2nLRlCD+/BNow610g==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955766"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955766"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:09 -0700
X-CSE-ConnectionGUID: 3r6m/6BgRrq8jDtXWrhAsQ==
X-CSE-MsgGUID: kNVwQE+aQjWz0EcnHI6ySQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040865"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/16] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Mon, 24 Mar 2025 19:02:48 +0530
Message-ID: <20250324133248.4071909-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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

For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
bits are not required. Since the support for these bits is going to
be deprecated in upcoming platforms, avoid writing these bits for the
platforms that do not use legacy Timing Generator.

Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     |  8 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fa9c6793357e..ddd98037bef8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2642,9 +2642,21 @@ static void intel_crtc_set_vtotal(struct intel_display *display,
 				  enum transcoder cpu_transcoder,
 				  u32 crtc_vdisplay, u32 crtc_vtotal)
 {
+	u32 vtotal_bits;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not required. Since the support for these bits is going to
+	 * be deprecated in upcoming platforms, avoid writing these bits for the
+	 * platforms that do not use legacy Timing Generator.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		vtotal_bits = 0;
+	else
+		vtotal_bits = VTOTAL(crtc_vtotal - 1);
+
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+		       VACTIVE(crtc_vdisplay - 1) | vtotal_bits);
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -2819,7 +2831,18 @@ static void intel_crtc_get_vtotal(struct intel_crtc_state *crtc_state)
 	u32 tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
 
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
-	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not filled. Since for these platforms TRAN_VMIN is always
+	 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
+	 * adjusted_mode.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		adjusted_mode->crtc_vtotal = intel_vrr_get_vtotal_vmin(crtc_state);
+	} else {
+		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+	}
 }
 
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 414f93851059..4413c97b3135 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -734,3 +734,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_get_vtotal_vmin(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	return intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..1ad17812a08b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -41,5 +41,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+int intel_vrr_get_vtotal_vmin(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

