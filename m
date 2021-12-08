Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2DA46CABD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 03:15:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D662E6E02E;
	Wed,  8 Dec 2021 02:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509E76E55E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 02:15:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="298533752"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="298533752"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 18:15:18 -0800
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="461531281"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 18:15:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: john.c.harrison@intel.com,
	intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 18:15:12 -0800
Message-Id: <20211208021512.72419-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Wait longer for busyness data to
 be available from GuC
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

live_engine_busy_stats waits for busyness to start ticking before
sampling busyness for the test sample duration. The wait accesses an
MMIO register and the uncore call to read it takes up to 3 ms in the
worst case. This can result in the wait timing out since the MMIO read
itself comsumes up the timeout of 500us. Increase the timeout to a
larger value of 10ms to account for the MMIO read time.

Resolves: https://gitlab.freedesktop.org/drm/intel/-/issues/4536
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 75f6efc9882f..8af261831470 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -229,7 +229,7 @@ static int __spin_until_busier(struct intel_engine_cs *engine, ktime_t busyness)
 	start = ktime_get();
 	while (intel_engine_get_busy_time(engine, &unused) == busyness) {
 		dt = ktime_get() - start;
-		if (dt > 500000) {
+		if (dt > 10000000) {
 			pr_err("active wait timed out %lld\n", dt);
 			ENGINE_TRACE(engine, "active wait time out %lld\n", dt);
 			return -ETIME;
-- 
2.20.1

