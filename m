Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AECC631B5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615DA10E31C;
	Mon, 17 Nov 2025 09:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ko2F/49I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6814C10E32A;
 Mon, 17 Nov 2025 09:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371011; x=1794907011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=90CprIFC/5tsew6GiG2FSmdcMSusOjNEd1vNPQKLaVM=;
 b=Ko2F/49IzgcCX9pW6aT61hhoheT07uGsylbn60kfthDtA5pScgT0h+D0
 IcDW6FG1SUy8o7BDR65001Gqqyl1nlp8qJLI0B4RmbEnh83QbeiSXhfwm
 TwhmY3diahsp/Sg9y26agzCVSu+r0b81VaGMxEt0Na+duD7lgto8tej+d
 lWNlJAAlTIEWepZJ1/pt1WrGetdbDvoN6k4q1K7E+kDFU2r5TgrVEACjy
 zqjM9pxQyr1JDVHuUCP+1g0FZoJiRjMxlZeVkBEIC4Cgl68S/JsFkzbpa
 IsODL3rN79BystlM/aO1shwJ9/w5c9ECnhHqmFddCBzf/dTKpx9N0AYU/ w==;
X-CSE-ConnectionGUID: 97nkY+9bTUmfg/tghwqilQ==
X-CSE-MsgGUID: lVFjWUALSHeInlgpd4ALlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="68985799"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="68985799"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:51 -0800
X-CSE-ConnectionGUID: Cc0cr1pFR9iwl4pYF9qAlQ==
X-CSE-MsgGUID: 3xq5szsZSUGavse8bwNS1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190840361"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 06/10] drm/i915/rps: store struct dma_fence in struct
 wait_rps_boost
Date: Mon, 17 Nov 2025 11:16:13 +0200
Message-ID: <950948ae6d3d5fbc4af3401ea77e609945b73a77.1763370931.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763370930.git.jani.nikula@intel.com>
References: <cover.1763370930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the more generic pointer rather than i915 specific data
type. Also use dma_fence_put() for symmetry with the dma_fence_get()

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_rps.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 82ea1ec482e4..b6720f7c09d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -18,14 +18,14 @@ struct wait_rps_boost {
 	struct wait_queue_entry wait;
 
 	struct drm_crtc *crtc;
-	struct i915_request *request;
+	struct dma_fence *fence;
 };
 
 static int do_rps_boost(struct wait_queue_entry *_wait,
 			unsigned mode, int sync, void *key)
 {
 	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
-	struct i915_request *rq = wait->request;
+	struct i915_request *rq = to_request(wait->fence);
 
 	/*
 	 * If we missed the vblank, but the request is already running it
@@ -34,7 +34,7 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
 	 */
 	if (!i915_request_started(rq))
 		intel_rps_boost(rq);
-	i915_request_put(rq);
+	dma_fence_put(wait->fence);
 
 	drm_crtc_vblank_put(wait->crtc);
 
@@ -64,7 +64,7 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 		return;
 	}
 
-	wait->request = to_request(dma_fence_get(fence));
+	wait->fence = dma_fence_get(fence);
 	wait->crtc = crtc;
 
 	wait->wait.func = do_rps_boost;
-- 
2.47.3

