Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DD99E4F7D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 09:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6F6B10EDDA;
	Thu,  5 Dec 2024 08:15:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ymfc2dQH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0DB910EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 08:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733386542; x=1764922542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sdCpmpIRQQi0kg4J8liap2p3emDCskVODpK6HeXYLOM=;
 b=Ymfc2dQHOfaPjqPRwthY7m05TKnCpTbZGBTTFCSS8vGh891NENvacJp4
 B0+3iGFnZ1ufAiJBONRZ9wvrfH+zwIj8gFY1o/x9bIOEe5lyEqK7tDoZj
 6YIPqad//tUsIy1VJe9v1/3rrxbI/NToxOPzY3xmXnb3DdguDvOq8Zfmq
 fetXf4Gx6ujSL0S4k9oCLRQkBeaoKyWeoz89tG16P/0XmsyP6/DrBcufl
 0p2H/MT4FShQs+fuZZ13XDxODKFlq6wIkeODBdBd5UWnIIcE7bCfrC0l4
 hc9QIKXCD5sphTE1B4OBWgf4snf3LiAqizARgX96NRn0DKXr1jO1hF88i A==;
X-CSE-ConnectionGUID: Kt02pGRtQBu4g2NPV2DDYg==
X-CSE-MsgGUID: fEFuAerhSciqVH+qHIQYXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37619632"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37619632"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 00:15:42 -0800
X-CSE-ConnectionGUID: AzRLpQS8RFi2m1t99du/ig==
X-CSE-MsgGUID: wmGKPdtrSTG6+MCf52tZIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="98831086"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa004.fm.intel.com with ESMTP; 05 Dec 2024 00:15:40 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com,
	Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Date: Thu,  5 Dec 2024 13:44:13 +0530
Message-Id: <20241205081413.1529252-1-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
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

Log throttle reasons on selftest failure which will be useful for
debugging.

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index dcef8d498919..1e0e59bc69b6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -478,8 +478,11 @@ int live_rps_control(void *arg)
 			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
 
 		if (limit == rps->min_freq) {
-			pr_err("%s: GPU throttled to minimum!\n",
-			       engine->name);
+			u32 throttle = intel_uncore_read(gt->uncore,
+							 intel_gt_perf_limit_reasons_reg(gt));
+
+			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
+			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
 			show_pstate_limits(rps);
 			err = -ENODEV;
 			break;
-- 
2.34.1

