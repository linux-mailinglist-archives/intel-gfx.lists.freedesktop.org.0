Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3E06F8D4C
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 02:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AD710E110;
	Sat,  6 May 2023 00:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5962610E0EF
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 May 2023 00:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683334697; x=1714870697;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6oW85SpGDfDfq6pKZoK8SOv1j6IpvbASX/75vVHhjTQ=;
 b=WiuDyQVYwhsKGiR1yEGXhnR8eUI7zlv410xOm8B/sd7/mCuYmHCm/tGh
 u7cMgmUwl/DrA2JN/6c8VdsX+4P8bZN7nDk5yvVxhU2N+ltIzInTvA3gQ
 DkwRwh8QbIZHlIEnlfNnKcfvz/JStCoyFTKXe0d0tPfUaAXQgKhfOxd3L
 JO4YQ+6L+oEYDpZ0XwdT069uJN+9lHlA5NXqj+QRlVtELUsDSvf1KDQa4
 uoz/IpvI8HDORdpSeIwwtwBMeOqML1gqraXAl6Yk5QWiFs++0KQRiSCh1
 cDoXGBpX414UYItaGu8M5uaFp8qEGzGpZRIfTz9dn6ZTfL7xnyNJvcObO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="377408311"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="377408311"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="767326027"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="767326027"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:16 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri,  5 May 2023 17:58:11 -0700
Message-Id: <20230506005816.1891043-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/pmu: Support PMU for all engines
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Given how the metrics are already exported, we also need to run sampling
over engines from all GTs.

Problem of GT frequencies is left for later.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 7ece883a7d95..67fa6cd77529 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -10,6 +10,7 @@
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rc6.h"
@@ -414,8 +415,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	struct drm_i915_private *i915 =
 		container_of(hrtimer, struct drm_i915_private, pmu.timer);
 	struct i915_pmu *pmu = &i915->pmu;
-	struct intel_gt *gt = to_gt(i915);
 	unsigned int period_ns;
+	struct intel_gt *gt;
+	unsigned int i;
 	ktime_t now;
 
 	if (!READ_ONCE(pmu->timer_enabled))
@@ -431,8 +433,13 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	 * grabbing the forcewake. However the potential error from timer call-
 	 * back delay greatly dominates this so we keep it simple.
 	 */
-	engines_sample(gt, period_ns);
-	frequency_sample(gt, period_ns);
+
+	for_each_gt(gt, i915, i) {
+		engines_sample(gt, period_ns);
+
+		if (i == 0) /* FIXME */
+			frequency_sample(gt, period_ns);
+	}
 
 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
 
-- 
2.36.1

