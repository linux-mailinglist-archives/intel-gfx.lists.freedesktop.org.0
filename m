Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A29B96FE8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5858410E665;
	Tue, 23 Sep 2025 17:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jy2lf1Uu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFAA310E656;
 Tue, 23 Sep 2025 17:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648022; x=1790184022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TYL+OrNwKhc1MwOi9UubYpoXcW3z4QmWLZBvC2iLmpk=;
 b=Jy2lf1UuLgB037HXjgYxJEzhAyUHRVxOVnh9ILVyRwvAaOrKOFWVIGMO
 oA5DAAwhC8GRr93wkIkdCTfw4lUVpK8h1mCbtWsUy0vOGrWPlUF8xWUj5
 bxV5wykJtAlOqqQZcmEYBDLqaxcDrWr1PTcrOZNECLluK9CHo/S7z1Ygb
 vtY1CBKKehTVXvto4XLwR+qqU4t2VpvbJw7Da/md4VYMfTC3dhXm0IrPe
 bRPG/pH8moF1xV8Lr0SxSLa3OZzeDPlYV+0YD3PFvQJpbM3yHr9IzwANF
 Oa4Zhx5E797D4wMVjvYznqd0qgheVSfTiSCNdNeWqML4LRcWqLSEextjM w==;
X-CSE-ConnectionGUID: kEf6kt4QQMmXXm9ZxSbjsA==
X-CSE-MsgGUID: F9Jfc356RXilDVZ6Lj0tgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60991010"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60991010"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:22 -0700
X-CSE-ConnectionGUID: 2pCASyJiRDW45th8Pf54ug==
X-CSE-MsgGUID: 8ExAcT9hSbyds/AVkGfjGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898806"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/20] drm/i915/cdclk: Handle the force_min_cdclk state
 locking in intel_cdclk_atomic_check()
Date: Tue, 23 Sep 2025 20:19:30 +0300
Message-ID: <20250923171943.7319-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Clean up the mess inside intel_modeset_calc_cdclk() a bit by
moving the intel_atomic_lock_global_state() for force_min_cdclk
changes into intel_cdclk_atomic_check().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d335cd4bd0e4..c3ff8cbf1d78 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3228,7 +3228,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc)
 {
 	const struct intel_cdclk_state *old_cdclk_state;
-	const struct intel_cdclk_state *new_cdclk_state;
+	struct intel_cdclk_state *new_cdclk_state;
 	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int ret;
@@ -3257,8 +3257,13 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
 
 	if (new_cdclk_state &&
-	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
+	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk) {
+		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
+		if (ret)
+			return ret;
+
 		*need_cdclk_calc = true;
+	}
 
 	return 0;
 }
@@ -3331,8 +3336,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		ret = intel_atomic_serialize_global_state(&new_cdclk_state->base);
 		if (ret)
 			return ret;
-	} else if (old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
-		   intel_cdclk_changed(&old_cdclk_state->logical,
+	} else if (intel_cdclk_changed(&old_cdclk_state->logical,
 				       &new_cdclk_state->logical)) {
 		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
 		if (ret)
-- 
2.49.1

