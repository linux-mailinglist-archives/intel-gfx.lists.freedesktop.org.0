Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317FA850D47
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 05:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FE610E6B4;
	Mon, 12 Feb 2024 04:58:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5eOCrvG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041D310E6B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 04:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707713902; x=1739249902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RFJtXhLAfFu0sOmS19jV/8esFNnbrnCJw6a1NM2DbBo=;
 b=F5eOCrvG2biMyInGwLDc+3FFjKfIx1TNYZ0c75lzDrcyVzkJzwjjClp0
 uUCTbEtP+E2ukKYGHsuaTsG9T8jR++/4W6VFRhvt/KZJeX7D9FS/X6HdV
 9wGrJ/ziKyX4fPxA1jctfBtib/1DwbJdSqNrzvK1z93Bni0AzHoBpvwJF
 WjgOdYb1P1nGk0vLHS98DwjaftSw3x9BlM+YGUBC3JIV0pEKj+swnd8j7
 69kboCXQpOWM9brGRj2YmUd9+POcZPZIyWi+Ngh5ncPuCL0Fbq5O8FTSJ
 xStyfK/kjouG/60O8A6SGHXMn2kgB1Yn4Y4YHYl22WDve+ljSA2HURCF9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="27119000"
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; d="scan'208";a="27119000"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2024 20:58:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; 
   d="scan'208";a="7245612"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2024 20:58:19 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, karthik.poosa@intel.com,
 Anirban Sk <sk.anirban@intel.com>
Subject: [PATCH v3] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
Date: Mon, 12 Feb 2024 10:37:38 +0530
Message-Id: <20240212050738.1162198-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: Anirban Sk <sk.anirban@intel.com>

Sometimes gt_pm live_rc6_manual selftest fails due to no power being
measured for the rc6 disabled period. Therefore increasing the rc6 disable
period from 250ms to 1000ms to rule out such sporadic failure.

v3 : More descriptive and improved commit message (Anshuman)

Signed-off-by: Anirban Sk <sk.anirban@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index a7189c2d660c..1aa1446c8fb0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -62,12 +62,12 @@ int live_rc6_manual(void *arg)
 
 	dt = ktime_get();
 	rc0_power = librapl_energy_uJ();
-	msleep(250);
+	msleep(1000);
 	rc0_power = librapl_energy_uJ() - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
-		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
+		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
 		       (res[1] - res[0]) >> 10);
 		err = -EINVAL;
 		goto out_unlock;
-- 
2.25.1

