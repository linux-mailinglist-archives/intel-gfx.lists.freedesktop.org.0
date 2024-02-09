Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CEE84F4F5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 13:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030C210EB72;
	Fri,  9 Feb 2024 12:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WuFVmFkl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5918210EB72
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707480142; x=1739016142;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6Ao0oge70YmRPRLs2Ne4ocIXVkk6yW6mtlX81Oa6ROE=;
 b=WuFVmFklcWhqU3XpNV4PDHK1rKkfPh2utxBPMe0MhdECQ+R7NHORH0ky
 9NV0885nvqO0q7jQcORY3YPxGwqpXkzEXMcZwGu7M9vbmhFpalbJh2dDT
 RXpTMLHikEX9rDwa0zuwVuesDQCFgPZUkw/3SGv2cvFyrU7O1/y0Qc8fe
 4HEuQPeCw9yJIbxbCKCCenPUckhfStL/m3GMyqnUrrpIVDk42wlUDorM9
 B4K4w/gTCvT6DTXj1NQDH8VQ+yQmw4Hfmtwe/6l40/PooIkq+8zAAUywj
 ZF3u1nfhHF42z9GIV9JkrpRtkvdqS0ZjeUBoqulxf1hJGEtr/vPsayTXp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="436553539"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="436553539"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:02:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2265412"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:02:19 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, karthik.poosa@intel.com,
 Anirban Sk <sk.anirban@intel.com>
Subject: [PATCH v2] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
Date: Fri,  9 Feb 2024 17:41:27 +0530
Message-Id: <20240209121127.1019920-1-sk.anirban@intel.com>
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

Signed-off-by: Anirban Sk <sk.anirban@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

Change log:
v2: add Reviewed-by: Anshuman Gupta
    More descriptive and improved commit message.
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

