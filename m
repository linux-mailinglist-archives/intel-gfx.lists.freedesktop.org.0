Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51894624845
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 18:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4543B10E6E2;
	Thu, 10 Nov 2022 17:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD95B10E6E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 17:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668100921; x=1699636921;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W54Yx5iqXPf4ieSlEzYojIgp9H1xizpsmAsz3iEiqB4=;
 b=IdJD6X7s+BMfFk0EvEYX9M8CE6k/9+vaaVRwSel9SkjmVXkdakusM5j/
 B1cce8H9v8AVBe/tmwlycWUR52J5sMngfgbKLLHboxc/t8u5NgzcW4ZI0
 pFjrv8butXXYJbB+posorua70CVYdgjovDUZb0vG+mrysIZAMRjYom4wd
 5CRDsH/97lzLt001ksMO8UJKjPC9+eMQV9IRL2fXCqX0hRm6WTn2nnkV1
 dnc/UtuPwGcaaRdnBLnLLJWTurWBC5kj3Qx1rK5QsCe50VnGsBHiLTGrs
 5Gt0naOXYnDhz6Ei/tYVYhq6HrImwPXfhgDe72MxganCwycsiQuzwzxEY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397671660"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397671660"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 09:19:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="639694216"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="639694216"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 09:19:19 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 17:19:13 +0000
Message-Id: <20221110171913.670286-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
References: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/selftest: Bump up sample period
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
ranging approx. from 87% to 115% as shown below. The expected range is
+/- 5% of the sample period. Fail 10% of the time.

rcs0: reported 11716042ns [91%] busyness while spinning [for 12805719ns]

When determining busyness of active engine, the GuC based engine
busyness implementation relies on a 64 bit timestamp register read. The
latency incurred by this register read causes the failure.

On DG1, when the test fails, the observed latencies range from 900us -
1.5ms.

Optimizing the 2x32 read by acquiring the lock and forcewake prior to
all reg reads reduces the rate of failure to around 2%, but does not
eliminate it.

In order to make the selftest more robust and always account for such
latencies, increase the sample period to 100 ms. This eliminates the
issue as seen in a 1000 runs.

v2: (Ashutosh)
- Add error to commit msg
- Include gitlab bug
- Update commit for inclusion of 2x32 optimized read

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4418
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
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
2.25.1

