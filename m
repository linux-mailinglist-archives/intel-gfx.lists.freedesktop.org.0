Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AA26A0594
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 11:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015A410EB06;
	Thu, 23 Feb 2023 10:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161F510EB06
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 10:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677146742; x=1708682742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q7J+qJV+b6hZOeUe+x4F2uXO040nCFPc+loQgV3Q5uY=;
 b=c1Wva1PKkP8xCkZWISfYyIxxP87gnfJA3pHGyzc3Pf9zHn6tLdNNnwmZ
 tnRpYLHavptPPffwB6qJU86TCLZ2sdevgumwzM1R7dSu3ccyT8AfOWaaI
 E48go/sYmzVzaR1zOwr0wSp8VHh6twkEIQty5eKeqfhtoke0awl8Kw3WG
 7ZtNOM4H0fv9KNyH3Sh3Crjt06dk9iaB+BwiCyryXhu/mbfkhKfnpqO8Z
 ZvYTboRfwG7sTNO576HKTVFAWUgTqIiaak46Sg+pErO9inkhoYNe5zubb
 00bh0Zs85cbPabN3grThD/aKdA/EhL/ZEYJ/bYghlo+Fjq+7pt2b0CqlA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="331838337"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="331838337"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917920194"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="917920194"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:40 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:35:02 +0530
Message-Id: <20230223100503.3323627-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230223100503.3323627-1-anshuman.gupta@intel.com>
References: <20230223100503.3323627-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Fix engine timestamp and
 ktime disparity
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While reading the engine timestamps there can be uncontrollable
concurrent mmio access via other i915 child drivers and by GuC,
which is not truly atomic context as expected by this selftest,
which may cause mmio latency to read the engine timestamps,
Account such latency to calculate time to read engine timestamp
such that selftest can validate the timestamp and ktime pair.

Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c   | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index b46425aeb2f0..0971241707ce 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -63,8 +63,8 @@ static void measure_clocks(struct intel_engine_cs *engine,
 
 		udelay(1000);
 
-		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += read_timestamp(engine);
+		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		local_irq_enable();
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 6755bbc4ebda..c0cc0dd78c7c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -299,13 +299,13 @@ int live_rps_clock_interval(void *arg)
 			for (i = 0; i < 5; i++) {
 				preempt_disable();
 
-				dt_[i] = ktime_get();
 				cycles_[i] = -intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
+				dt_[i] = ktime_get();
 
 				udelay(1000);
 
-				dt_[i] = ktime_sub(ktime_get(), dt_[i]);
 				cycles_[i] += intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
+				dt_[i] = ktime_sub(ktime_get(), dt_[i]);
 
 				preempt_enable();
 			}
-- 
2.25.1

