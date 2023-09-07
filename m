Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E79D796DD6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 02:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B477310E062;
	Thu,  7 Sep 2023 00:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E5C10E062
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 00:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694045068; x=1725581068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ulDqoM57bYtPOX15+SZtY/F2CEMdT6IKQLA8zWSm0dk=;
 b=W2rEO1cJlmxTFDWnKZUd5z5R8Aw9/ZPpcmGF6AEeFFQ3GQMjvmbAJHLz
 dqOWEdq9qDP3wJRB+cQZJtFxyqZlb4o2YhDHp5RhVlsNL91oMXyGdwzSW
 XeDTIkOdIJnHp3WL3Zl95TWb1l6JhrGjIT90FN1uRt0NJIhcEq3KQzN6l
 DIbsIk0cr5jyMsNfddLAJKg4rbSJPOBXwbYs83sOWIDxoKdb0q+Itm7Uo
 LPzQBOOTujTe4vy5q7MtEWcbg3ybHD2LiM5Gd3hoSKFzbINt6ZG6EAeHI
 c3zHLttXFQ4Qy5ShIfsRTs+1HYAu+/KqRTcgCSqpoKNpPnSIbNA0LbwYG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357529901"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357529901"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 17:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="735267877"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="735267877"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 17:04:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 17:03:55 -0700
Message-ID: <20230907000354.3729827-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Drop Wa_14017240301
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drop Wa_14017240301, which is only relevant to pre-production MTL
hardware.  Although we usually wait a little bit longer to start
dropping pre-production workarounds for a platform, it was suggested to
eliminate this one slightly earlier because it's a bit unusual/ugly:
this workaround is a display-specific workaround that requires matching
on the graphics/GT IP version instead of the display IP version.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 517df2aa7a91..007a0bcb3f93 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2170,11 +2170,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	/* Wa_14017240301 */
-	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
-	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
-		return false;
-
 	/* Wa_22011186057 */
 	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
-- 
2.41.0

