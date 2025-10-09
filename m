Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C10BC7D24
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CA310E96F;
	Thu,  9 Oct 2025 07:55:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XU9nwVO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A8B10E96E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996550; x=1791532550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Q5HEDxYsQ3xpjvJCndITv7+CZkJs6PvqPaEMgkmxHs=;
 b=XU9nwVO15+z47cc8C+MKcLcf2xzghxeCS1q3X0oVxbLXFFUqzVlGgqe0
 I+NXtda6Ahfplf6otlYDyBqp+Bl1ymFhTesPwQXqJAcfsytIGK7n+pKEE
 XJ4iGy6+D3WtYChQOfHvVjzP6sh1KxDopqCoAMzjtDtm1mqowwwHn3D+B
 IkxRBlpKd4uXljBea/NBlExXxIc5+rxmWnLvDrl4bhHmJybqQGfpQIog8
 /sYoENuHNs6GTrWoGJhqbeTnNDRHJD5MGFyu1IHwLktDUwdwJDzQBy9Fh
 h/aYBv+7oltbGGsSZNV2gYIG6/JKbsLduD9oXOGzVJ+tU6buLS9f5qnIZ A==;
X-CSE-ConnectionGUID: 1n8Cjx+kT5qOLnIPBYrilA==
X-CSE-MsgGUID: ++Jv81YGTWyBsphpn5J5TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880748"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880748"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:49 -0700
X-CSE-ConnectionGUID: I4DAKhVcTFO5+RkQK3VRKw==
X-CSE-MsgGUID: yq4r6xr7Tz+duz6vp+wiWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600973"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:47 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 6/7] drm/i915/wm: move method selection and calculation to
 a separate function
Date: Thu,  9 Oct 2025 10:54:37 +0300
Message-ID: <20251009075517.837587-7-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
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
index 35a73ddc282b..fc771f476bbe 100644
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

