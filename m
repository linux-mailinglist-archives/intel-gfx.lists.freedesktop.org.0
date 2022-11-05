Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B6B61A66C
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 01:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4455910E0DC;
	Sat,  5 Nov 2022 00:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A51B10E0DC
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 00:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667608360; x=1699144360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D5GftR+oRFpxVIpMnqYD1Zwf4ndcuFt36wQUx0ZgtUI=;
 b=VI6hI1saqUApn9cOHSd2CEdl01G9arqwi2JGcDGK4VaTggeL/H+Gbsmd
 V4TuLz5NcVEFkXSbfUK1X0ZyNmdzGEIzIlCRmcwCaJ/jnxR5lD31C7cqx
 VMk+gJYYci6P6DHqTA5WWUoORZSJQPak4uC95lJ7Ob+GW1qcCrdfD4hpg
 uqhllykPHBPr4VarySPpqgDT3lLW6epkgGfhcQVIOPn+WGufiiscgz581
 2QhyT2nXI4khHa87dxDp0ocg7M0vxvxNLKDoZsYa278ohsYywwCbeaEo8
 en+jy3iW4MUl3PFUj2HqTaCv3jdWo2LpWSzx4jeEPD83eNaKV0CttUkIF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="308814629"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="308814629"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="698838662"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="698838662"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Nov 2022 17:32:35 -0700
Message-Id: <20221105003235.1717908-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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

