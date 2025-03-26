Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D850CA71BC3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F2D10E727;
	Wed, 26 Mar 2025 16:25:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNdmmDcj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1830210E727;
 Wed, 26 Mar 2025 16:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006352; x=1774542352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DC/Ip9OnOfDlDhosf4NdT2Z9jcpeGGRGmqG+JV7ZhV8=;
 b=UNdmmDcjf5YdJfzudA+1RfK4m2zJtg+llDpBh/NCn9tyUSjE2NGSR3yI
 xUStlq/Gfv1Jy7TZ8GWR82HF7Kbsite8oIIuxMl2L0zNKEiFV7AC9w3sN
 bQ4hWJJlRR7nWnZBMdzUKD3p6gNNA2n6GQSA/itGBrokQ8Qh5aWHie0U6
 ZgTHYkGnk2qiQ1OWzr41PIJmwYCF7M3uxPWXeABMU3uKSxjcZmB91sPK1
 rAtJKPCzg3dLYPgJCL5/HJLdOqg/BhO1v9o1bvZ9m5AZAeb1814PmeDtx
 hcqJwNChRrOhBdGbhdCKqgDIyaBlR0M44YLJugQmELNV+dA1Gy0wnmr1k A==;
X-CSE-ConnectionGUID: vovzu7TIR42O3nSjD2rrVg==
X-CSE-MsgGUID: XnC0PJkhQXKgFHWB5jSJmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029551"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029551"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:25:51 -0700
X-CSE-ConnectionGUID: bZ1xM4g+SGSWCNbCxGMydg==
X-CSE-MsgGUID: 5TN1oqdgTACckIVgZyytMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016264"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:25:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:25:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 01/14] drm/i915: Drop the cached per-pipe min_cdclk[] from
 bw state
Date: Wed, 26 Mar 2025 18:25:31 +0200
Message-ID: <20250326162544.3642-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

intel_bw_crtc_min_cdclk() only depends on the pipe data rate,
which we already have stashed in bw_state->data_rate[]. So
stashing the resulting min_cdclk[] as well is redundant. Get
rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 17 ++++++++---------
 drivers/gpu/drm/i915/display/intel_bw.h |  1 -
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bb81efec08a0..15c2377193f7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -825,14 +825,13 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 }
 
 /* "Maximum Pipe Read Bandwidth" */
-static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
+static int intel_bw_crtc_min_cdclk(struct intel_display *display,
+				   unsigned int data_rate)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
 	if (DISPLAY_VER(display) < 12)
 		return 0;
 
-	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(data_rate, 10), 512);
 }
 
 static unsigned int intel_bw_num_active_planes(struct intel_display *display,
@@ -1170,7 +1169,8 @@ static bool intel_bw_state_changed(struct intel_display *display,
 				return true;
 		}
 
-		if (old_bw_state->min_cdclk[pipe] != new_bw_state->min_cdclk[pipe])
+		if (intel_bw_crtc_min_cdclk(display, old_bw_state->data_rate[pipe]) !=
+		    intel_bw_crtc_min_cdclk(display, new_bw_state->data_rate[pipe]))
 			return true;
 	}
 
@@ -1271,7 +1271,9 @@ int intel_bw_min_cdclk(struct intel_display *display,
 	min_cdclk = intel_bw_dbuf_min_cdclk(display, bw_state);
 
 	for_each_pipe(display, pipe)
-		min_cdclk = max(min_cdclk, bw_state->min_cdclk[pipe]);
+		min_cdclk = max(min_cdclk,
+				intel_bw_crtc_min_cdclk(display,
+							bw_state->data_rate[pipe]));
 
 	return min_cdclk;
 }
@@ -1299,9 +1301,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
 		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
-
-		new_bw_state->min_cdclk[crtc->pipe] =
-			intel_bw_crtc_min_cdclk(crtc_state);
 	}
 
 	if (!old_bw_state)
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index c18126c83d2e..3e4397c85774 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -54,7 +54,6 @@ struct intel_bw_state {
 	 */
 	bool force_check_qgv;
 
-	int min_cdclk[I915_MAX_PIPES];
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 };
-- 
2.45.3

