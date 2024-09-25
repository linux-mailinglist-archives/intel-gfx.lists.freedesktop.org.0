Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B5F986914
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 00:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05A010E302;
	Wed, 25 Sep 2024 22:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6zlfEii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9542810E00F;
 Wed, 25 Sep 2024 22:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727302301; x=1758838301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IyCiCMJRk1VtmKpH3R65wl3D1LGyhIUdtspGjcX6K8g=;
 b=J6zlfEiijdYt9sY6ZjLyjo4rXTOeloRi1VZGBAgh6Aglz1S6Tn3Gl/AY
 cgpFTA8phHXil47itSpGsHqJNB2+uY39lQhHilW/e6QWk1g67uSrf4AMw
 R2lePl/7V45YejqfyZ7A4tbmBjuYiYBdW6nehjH1UZx2pOTjArnt1ukBX
 ky7KA10+fXb16ffJ8UktL/CG1K311EJek/zVs5XV3VY0xiHTBo0FHUzEK
 d6zsZcjRD4O2a/szR0hC4/rUWltyieqN+KXJcRUiANypmqr6krvwSY0Q4
 Pf42/P9qjuSdND/66fKO4GCLqoP2Rvkf2L5ehTWENKUj2U/yqxK2PjmXR A==;
X-CSE-ConnectionGUID: 5GPYGjT1TsSDWTP1buKzOQ==
X-CSE-MsgGUID: zhHuK0KoQ2iOZVnudFR0Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="25887892"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="25887892"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 15:11:40 -0700
X-CSE-ConnectionGUID: WpAtZzQ+T0mAfXIev0G8GA==
X-CSE-MsgGUID: ZuT+kCwSSZCIiu64A9ijHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="76303817"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa005.fm.intel.com with ESMTP; 25 Sep 2024 15:11:40 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH i-g-t] tests/xe_gt_freq: Use sync reset
Date: Wed, 25 Sep 2024 15:09:23 -0700
Message-Id: <20240925220923.2030384-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

Some recent WAs reduce the GT freq during driver load/reset. Use sync
reset so that we give enough time for GT frequency to be restored after
reset has completed.

Also, stash/restore frequencies per GT as they can be different.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2676
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2711

Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_gt_freq.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index 427e12c55..de4d111ea 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -341,7 +341,8 @@ static void test_reset(int fd, int gt_id, int cycles)
 		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
 			     "Failed after %d good cycles\n", i);
 
-		xe_force_gt_reset_async(fd, gt_id);
+		xe_force_gt_reset_sync(fd, gt_id);
+
 		usleep(SLPC_FREQ_LATENCY_US);
 
 		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
@@ -433,16 +434,23 @@ igt_main
 	int fd;
 	int gt;
 	struct drm_xe_engine_class_instance *hwe;
-	uint32_t stash_min;
-	uint32_t stash_max;
+	uint32_t *stash_min, *stash_max;
+	int num_gts;
 
 	igt_fixture {
 		fd = drm_open_driver(DRIVER_XE);
 
 		igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
+		num_gts = xe_number_gt(fd);
+
 		/* The defaults are the same. Stashing the gt0 is enough */
-		stash_min = get_freq(fd, 0, "min");
-		stash_max = get_freq(fd, 0, "max");
+		stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
+		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
+
+		xe_for_each_gt(fd, gt) {
+			stash_min[gt] = get_freq(fd, gt, "min");
+			stash_max[gt] = get_freq(fd, gt, "max");
+		}
 	}
 
 	igt_subtest("throttle_basic_api") {
@@ -517,9 +525,11 @@ igt_main
 
 	igt_fixture {
 		xe_for_each_gt(fd, gt) {
-			set_freq(fd, gt, "min", stash_min);
-			set_freq(fd, gt, "max", stash_max);
+			set_freq(fd, gt, "max", stash_max[gt]);
+			set_freq(fd, gt, "min", stash_min[gt]);
 		}
+		free(stash_min);
+		free(stash_max);
 		drm_close_driver(fd);
 	}
 }
-- 
2.38.1

