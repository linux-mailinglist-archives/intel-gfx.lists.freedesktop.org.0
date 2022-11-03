Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 441BF617342
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 01:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA7610E550;
	Thu,  3 Nov 2022 00:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F0610E558
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 00:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667434311; x=1698970311;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D5GftR+oRFpxVIpMnqYD1Zwf4ndcuFt36wQUx0ZgtUI=;
 b=cOhXsF2LHLFou9I5sLtocsia4169Gnos9EeoVQWk/41HhTAxrLdlzjLr
 +BvInnHZqEhQG2zVztwCGD95V7mkp1nXkad+WHv+owzkQVAdcA1mozXXi
 PhmxM7A7U0V8JOwFsA2BMOkjkgNa1avfApDqPj+jF6KGl2rZxXs6gpclP
 RUPrs8rGewmNWrhAqP/4vYCpLBrxBQOXNXWgQXPku0UPJRaJAmJPKuATd
 Mm4JblnIfdUrghHdW9GIPAnbButA21CbA7ayqMJe8riGORq2TknXJPoyt
 qL0h6h566hkz6tOhzokIXSD90gS0vI9/wrPFQ+7YgSpPPfJ2ilVQtEWjs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="371647760"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="371647760"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 17:11:50 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879678614"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="879678614"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 17:11:50 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 17:11:49 -0700
Message-Id: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period for
 busy stats selftest
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

Engine busyness samples around a 10ms period is failing with busyness
ranging approx. from 87% to 115%. The expected range is +/- 5% of the
sample period.

When determining busyness of active engine, the GuC based engine
busyness implementation relies on a 64 bit timestamp register read. The
latency incurred by this register read causes the failure.

On DG1, when the test fails, the observed latencies range from 900us -
1.5ms.

One solution tried was to reduce the latency between reg read and
CPU timestamp capture, but such optimization does not add value to user
since the CPU timestamp obtained here is only used for (1) selftest and
(2) i915 rps implementation specific to execlist scheduler. Also, this
solution only reduces the frequency of failure and does not eliminate
it.

In order to make the selftest more robust and account for such
latencies, increase the sample period to 100 ms.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 0dcb3ed44a73..87c94314cf67 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
 		ENGINE_TRACE(engine, "measuring busy time\n");
 		preempt_disable();
 		de = intel_engine_get_busy_time(engine, &t[0]);
-		mdelay(10);
+		mdelay(100);
 		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
 		preempt_enable();
 		dt = ktime_sub(t[1], t[0]);
-- 
2.36.1

