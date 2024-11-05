Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238879BC6C1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA39410E529;
	Tue,  5 Nov 2024 07:16:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZJGhqsYz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8253410E532;
 Tue,  5 Nov 2024 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790993; x=1762326993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UqlibNz23g7BS4mu9C6rKdPAQYIVrOXLWkKxbOP7G/w=;
 b=ZJGhqsYzbwsKlYJE4xRuvtAF0r9VszZoTi02yRuQkH1apgl37lyGKTZi
 FAg7j5ORj8CAQaFRvFrYbv3hmnhOr/BDwfyV9DwhQcWItyE7oa8YDyJSs
 qhXsZwsVrdrKWYgYGJCPfGTfKQEg6GVROkiqlPEys0616GqTBlLg6fmtw
 hRMfXl9Rq3cF9lYP6kbpWAJo8iZyCgHYsEzZa9Z5b4b8TrHDlZ+Y5ykgC
 mTCgcv4VKF5J7bCpTJ4VXxTemtCihSep21dbKlEN/o+zO4UOZz/JyotMW
 Yi4+xv7chHBP5/Lo+g/ZmQdpC4wRRlZ2hXGFBZ0fxJNpd5sGIv1c93Y5K w==;
X-CSE-ConnectionGUID: 9wYTRg5/RP+jOxL8rJhpFQ==
X-CSE-MsgGUID: 3uVyC6iKRKSQi5dGnM6ZjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449549"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449549"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:33 -0800
X-CSE-ConnectionGUID: A6HWCoOKQGmUZPqoDVhdxQ==
X-CSE-MsgGUID: i89OSmTxQku8oNzztynQsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835612"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 5/8] drm/i915/display: update skl_plane_wm_equals to use
 intel_display
Date: Tue,  5 Nov 2024 09:15:57 +0200
Message-Id: <20241105071600.235338-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
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

Use intel_display object instead of struct drm_i915_private in
skl_plane_wm_equals(). This is in preparation for the rest of
the patches in this series where hw support for the minimum and
interim ddb allocations for async flip is added

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2018abc35c8a..a01b1dc01348 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2384,13 +2384,13 @@ static bool skl_wm_level_equals(const struct skl_wm_level *l1,
 		l1->blocks == l2->blocks;
 }
 
-static bool skl_plane_wm_equals(struct drm_i915_private *i915,
+static bool skl_plane_wm_equals(struct intel_display *display,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2650,7 +2650,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 			old_wm = &old_pipe_wm->planes[plane_id];
 			new_wm = &new_pipe_wm->planes[plane_id];
 
-			if (skl_plane_wm_equals(i915, old_wm, new_wm))
+			if (skl_plane_wm_equals(&i915->display, old_wm, new_wm))
 				continue;
 
 			drm_dbg_kms(&i915->drm,
-- 
2.34.1

