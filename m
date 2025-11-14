Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71663C5C909
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A4DA10EA30;
	Fri, 14 Nov 2025 10:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPM1HBWJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C36E10EA28;
 Fri, 14 Nov 2025 10:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116044; x=1794652044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWfZrgEAa8lTJNSEyj7Xn5uyvKzR2rdCbuxFUAdifFs=;
 b=WPM1HBWJsLeUyzAUOZNi8w1ORz5wTA+NZDrXm+LgNfHEt5r5E/mRUXOm
 bBNtHD1XcVXGi378MX5mJDB65OCOhVdT9HmlA/aillYO3DZEAAqeoXl+k
 sGkRmuRGnpOIttomMmTvJq5A4F/a2taTgBGI9eW5QGX5Fd5emcKl1UkWw
 GEBTQIiufFwZnGvfzUk69n20PTUEMDPFR3zeeRukgAOswm66lw/L5vS7l
 5BnpJBn9jnyhXa0OpjtY2dG52Rw9mPZ/ET86POm56irj8wk8rw+ovMd7n
 GoHX3OgxUX8ftmAhLbu6LWhX/aQ8gMJgv0y5aGc4ABnkVCCNtJ6UdAsu+ g==;
X-CSE-ConnectionGUID: YFk/C2wfR+eE5bSztXwfFQ==
X-CSE-MsgGUID: 8qbAKFFOTIOCmUOMVJEJdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64415898"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64415898"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:23 -0800
X-CSE-ConnectionGUID: uMVUBsolQlqlSoXx0zLNJQ==
X-CSE-MsgGUID: Gz5k7yo0SMKXTjAEHUWfAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193859717"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 06/10] drm/i915/rps: store struct dma_fence in struct
 wait_rps_boost
Date: Fri, 14 Nov 2025 12:26:45 +0200
Message-ID: <78d844497dadd86500bac0921ecc2d652d34da7c.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
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

