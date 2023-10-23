Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D227D3A3C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 17:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B2010E20C;
	Mon, 23 Oct 2023 15:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A3810E20C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698073383; x=1729609383;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5NQOBmjBtMs3KHuxssffTISLvX9zkp45tuZM+MQjai8=;
 b=iDVhUpRrYRb1ok4oma281MwlJzrhnsqdgfFGRbjG+GtZ+S8AR6qub6It
 j5R8Q7D29oRF3BFuMr6UsFsaZEGMT1hB6uu6d12miFz3d+UeXW254FkOB
 oHHiPe7hAF267/TIg/dvZaM/lD/cEwp9E9KLSnxdcJydGyDasetLHp4Ed
 Krw6ybXlajUuETKdUNtCy96tVUKUcxd3iGu2jIaWlybUymLqFgfygesFA
 A5Sjo86XFy/N07cXVpVKzViQyoco5v81qRHhm9A6CY8hN/B6BBrI14Aml
 sS+gZinYy6gZQHJM5PlUdrMP4+6lOJT1snv0nePTZ066Rm94Z3YKZYbFs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="473079138"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473079138"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="823981701"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="823981701"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 18:02:54 +0300
Message-Id: <20231023150256.438331-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/pmu: add pmu_to_i915() helper
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's tedious to duplicate the container_of() everywhere. Add a helper.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 108b675088ba..dcae2fcd8d36 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -31,6 +31,11 @@
 static cpumask_t i915_pmu_cpumask;
 static unsigned int i915_pmu_target_cpu = -1;
 
+static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
+{
+	return container_of(pmu, struct drm_i915_private, pmu);
+}
+
 static u8 engine_config_sample(u64 config)
 {
 	return config & I915_PMU_SAMPLE_MASK;
@@ -141,7 +146,7 @@ static u32 frequency_enabled_mask(void)
 
 static bool pmu_needs_timer(struct i915_pmu *pmu)
 {
-	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	u32 enable;
 
 	/*
@@ -251,7 +256,7 @@ static u64 get_rc6(struct intel_gt *gt)
 
 static void init_rc6(struct i915_pmu *pmu)
 {
-	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -973,7 +978,7 @@ add_pmu_attr(struct perf_pmu_events_attr *attr, const char *name,
 static struct attribute **
 create_event_attributes(struct i915_pmu *pmu)
 {
-	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	static const struct {
 		unsigned int counter;
 		const char *name;
-- 
2.39.2

