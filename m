Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE56CF84F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F7B10ECAB;
	Thu, 30 Mar 2023 00:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8617210ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YjSaHL5A1iolNDo1jBQdSWIT5/XO3JJ/rFAOqXMNLBk=;
 b=bz6xdLyuxTZWWVImiUyyCjmshoNOsPMwI/KWA4Jop3eAMu7xo1Gfbz/Y
 GVZKMGZwmiYUfyUxxAVZAr6EGJZTHzxUORU7zI5p0ECpR9mOOT6g9xba/
 Ch75OxMzjSJNMitkJ9Mx1jVWcm7gMS7aLOWS2sL+lWtUckFu5zOCTXv5k
 dIHraHXruLZUhBTGIHHIplyp7H6vC9wGoZUpsqMmyFCuGl10gMEgQixow
 WhVIg/2E/4HPb9KM1xT0lbXh+BiY6reVr2MxTlOUR4RwvpyuyAJsmrjUp
 o5c211wYAidv2byoSPV3HjwqdmgwuUk+bRzMkKMo4tcIwCgvG2onuDG2f Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310369"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310369"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668666"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668666"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:40:55 -0700
Message-Id: <20230330004103.1295413-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/pmu: Support PMU for all engines
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
---
 drivers/gpu/drm/i915/i915_pmu.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 7ece883a7d95..e274dba58629 100644
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
@@ -431,8 +433,14 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	 * grabbing the forcewake. However the potential error from timer call-
 	 * back delay greatly dominates this so we keep it simple.
 	 */
-	engines_sample(gt, period_ns);
-	frequency_sample(gt, period_ns);
+
+	for_each_gt(gt, i915, i) {
+		engines_sample(gt, period_ns);
+
+		/* Sample only gt0 until gt support is added for frequency */
+		if (i == 0)
+			frequency_sample(gt, period_ns);
+	}
 
 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
 
-- 
2.36.1

