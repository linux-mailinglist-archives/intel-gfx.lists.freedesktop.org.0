Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF784DF93
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 12:25:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E86010E1AB;
	Thu,  8 Feb 2024 11:25:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ja76NIUp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312F210E1AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 11:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707391528; x=1738927528;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8Q1G+CP4zY6oi/rwU77R1l+uPfXONani8lEIgrRCPgo=;
 b=Ja76NIUpobAKwY+cXttQowzkOeVUo4+xHIbHt8415SiX/FeL5xR6fEtN
 liIvZeWrhvOep8edDjH9KzMY6Drl0c0VwMZrPsnZKK7sltGBXcmY853Am
 qxTBrcuxzjGTI63FH/NC9wGKKWKyd9kZhO3QV2seVrw07trRCqnJyJOFQ
 Vm0ft5TIN9feItuFkaNSCaHIR5HfFrr+U4u9tyGIP68+XSSzDibwtURjs
 T7K67W1jTNB8cRFP+C+tkZQHTy1axm4Gs4DkzdCKqz+rzwyNRG4WA4xM0
 EqFr37Wam7R89QOhVKGwTnvXhPnFGrmWbx8kM5/Vmr2TseFpA04a0HQMZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="5061121"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="5061121"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 03:25:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="910333649"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="910333649"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 03:25:24 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, karthik.poosa@intel.com,
 Anirban Sk <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
Date: Thu,  8 Feb 2024 17:04:20 +0530
Message-Id: <20240208113420.489967-1-sk.anirban@intel.com>
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

To rule out the sporadic failure, updating the sleep time (time period
to measure the power).

Signed-off-by: Anirban Sk <sk.anirban@intel.com>
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

