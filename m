Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A5C3BD3F
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 15:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E36410E905;
	Thu,  6 Nov 2025 14:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kb9PL2CD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8FF10E905;
 Thu,  6 Nov 2025 14:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762440209; x=1793976209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWfZrgEAa8lTJNSEyj7Xn5uyvKzR2rdCbuxFUAdifFs=;
 b=Kb9PL2CDjFNNSXOnutSH1fQJaBzAGVTRYc8NoH6ekuD/HELRAbYHoC1X
 +oEAmAJE/B9+dZSacxVhloefJh6AzfOBPU2ay8DSp/SXdSahkLOceBey5
 9Iv4XANtzV8dpb9xz5jj/AiRpJ2bcGGpHRmuFQ4i/zlqscLLss08B9UXr
 bWhyPKEuFPrX8y9t3ZtXzXFg9RW9L831246Pz9AgYx6/2jXO3WsNNmQmL
 igv8UuNqOsDOG5g2glsyhbvuu8lAjW5UiAkzVNBllOaYzmAEvt480VD3U
 669ZloSaTixsi2gPp3w3p+ulNTT5abLij97W2sXgxohE6YvoosLcZncgY Q==;
X-CSE-ConnectionGUID: 1qfrXQbNQV2NJYssmyqtWQ==
X-CSE-MsgGUID: 8E0xIuWYRHGUd1p3Eh8YqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64728473"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64728473"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:27 -0800
X-CSE-ConnectionGUID: FQ4CIClYSw+5C1lssoR2YA==
X-CSE-MsgGUID: WXT0M3eERSOcj53OnZ/7Yw==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	tursulin@ursulin.net
Subject: [PATCH 1/5] drm/i915/rps: store struct dma_fence in struct
 wait_rps_boost
Date: Thu,  6 Nov 2025 16:43:09 +0200
Message-ID: <b5126661bd78b3202fea9919c42c6a8faf3b2e9f.1762440096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762440096.git.jani.nikula@intel.com>
References: <cover.1762440096.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

