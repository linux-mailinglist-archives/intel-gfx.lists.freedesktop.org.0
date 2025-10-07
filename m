Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D452CBC08A5
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692BE10E599;
	Tue,  7 Oct 2025 07:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BOiF3Slv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4331E10E59E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823875; x=1791359875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OTIAYhs21vEwDkYb2urEBYiOM611wzNrfHQ7h7BR7ws=;
 b=BOiF3Slvk6TfWhndfLpURE9+tyqzy8Wvftt6LDDYny2CA7f2JOp5j5vS
 rCfw/APK5f9D11o7fZ5841stEPx9aNxDCArT7qjRNeAqgqf3CRW08EGPg
 NDRuZkvWp3ZrAA18YzQ7PcJkjqNjKCbZNG9XEMrdjMZjr9fKw2fVk/RBG
 A8VAI1kXvvfSyO903989IUbyAhdogcyr4Y6aHFPjxObLY2ihu+RznT/XQ
 XFJBa9oLaJ2ufHfIAxaRs+P8cX54/6ligOT/Ta8Gho3F4d2bL2O/aG1KQ
 +4FX+hu9owIPPT63vmbnLbUGp3DrxULE+np6OVWpABiBHploUCnzhkcqb w==;
X-CSE-ConnectionGUID: XjeDxS9kQGiiKk+OOSOqfw==
X-CSE-MsgGUID: hG4c6juwTiib/Q3y+Agr8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104939"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104939"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:55 -0700
X-CSE-ConnectionGUID: ngtKKTc2Q9aTWln2xjZeVA==
X-CSE-MsgGUID: MGxzQGeRRnigus/oJmmnaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017723"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:53 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 6/7] drm/i915/wm: move method selection and calculation to
 a separate function
Date: Tue,  7 Oct 2025 10:56:40 +0300
Message-ID: <20251007075729.468669-7-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

Isolate the code that handles method selection and calculation, so
skl_compute_plane_wm() doesn't get too long.

v2: - Rebased after moving the default case change to an earlier patch

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 44 +++++++++++++-------
 1 file changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a9d1bc432f75..4f9fd8c6ccb4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1790,25 +1790,14 @@ static bool xe3_auto_min_alloc_capable(struct intel_plane *plane, int level)
 	return DISPLAY_VER(display) >= 30 && level == 0 && plane->id != PLANE_CURSOR;
 }
 
-static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
-				 struct intel_plane *plane,
-				 int level,
-				 unsigned int latency,
-				 const struct skl_wm_params *wp,
-				 const struct skl_wm_level *result_prev,
-				 struct skl_wm_level *result /* out */)
+static uint_fixed_16_16_t
+skl_wm_run_method(struct intel_display *display,
+		  const struct intel_crtc_state *crtc_state,
+		  const struct skl_wm_params *wp,
+		  unsigned int latency)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
-	u32 blocks, lines, min_ddb_alloc = 0;
-
-	if (latency == 0 ||
-	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
-		/* reject it */
-		result->min_ddb_alloc = U16_MAX;
-		return;
-	}
 
 	method1 = skl_wm_method1(display, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
@@ -1845,9 +1834,32 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 			selected_result = method1;
 		}
 		break;
+	}
+
+	return selected_result;
+}
 
+static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 struct intel_plane *plane,
+				 int level,
+				 unsigned int latency,
+				 const struct skl_wm_params *wp,
+				 const struct skl_wm_level *result_prev,
+				 struct skl_wm_level *result /* out */)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	uint_fixed_16_16_t selected_result;
+	u32 blocks, lines, min_ddb_alloc = 0;
+
+	if (latency == 0 ||
+	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
+		/* reject it */
+		result->min_ddb_alloc = U16_MAX;
+		return;
 	}
 
+	selected_result = skl_wm_run_method(display, crtc_state, wp, latency);
+
 	blocks = fixed16_to_u32_round_up(selected_result);
 	if (DISPLAY_VER(display) < 30)
 		blocks++;
-- 
2.51.0

