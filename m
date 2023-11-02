Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76B37DF6B5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D4610E907;
	Thu,  2 Nov 2023 15:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D0D10E907
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939796; x=1730475796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pO6kFc1l3b4mDAi+zLbBlkuMSbXMMeHwFZ9U5AojGOA=;
 b=PFXM6rTEpupjyfIs3O3F9xzC3cal3ZGAr2SGUygsJGwRxi1uogd1E/mf
 Q5akTcN+oDhELft3YqDIw+KKcM+a+u+dRoiwRnF3Tx3pwNaKwHvtBpauS
 W+AX/SDzKezPwBc6Nyq5j1nsbk11z0nocBGu7mWghrctbaROgZRUlvH/1
 DjS7387eAH3udfU7SbJuR/mjxkP1xvgy6v3iHYV3eYESdVt/y6tsiwyd3
 GcuGDWWKFylv52SiEjjHC1WnjBDphqOHd34ga9E7ha2YU2NkQQQ1X4NEg
 7t3bpvfazfIa/ZlmslCyOWFtGlmGMGMC4OpD6ovuCkL9zALTbtb1TJvva A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368087444"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368087444"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878294695"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878294695"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:28 +0200
Message-Id: <6fbdcf084dfa4dbc2ba92c73a4a72ae36c170e0f.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
References: <cover.1698939671.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/pmu: change attr_group allocation
 and initialization
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

Prepare for dynamically allocating struct i915_pmu by changing the
allocation and initialization of the attr_group. With pmu allocated
dynamically, pmu->events_attr_group can't be used for local attr_group
array initialization.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 21ef76a11ed7..3c6191b7fc82 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1242,13 +1242,7 @@ static bool is_igp(struct drm_i915_private *i915)
 void i915_pmu_register(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
-	const struct attribute_group *attr_groups[] = {
-		&i915_pmu_format_attr_group,
-		&pmu->events_attr_group,
-		&i915_pmu_cpumask_attr_group,
-		NULL
-	};
-
+	const struct attribute_group **attr_groups;
 	int ret = -ENOMEM;
 
 	if (GRAPHICS_VER(i915) <= 2) {
@@ -1281,11 +1275,17 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (!pmu->events_attr_group.attrs)
 		goto err_name;
 
-	pmu->base.attr_groups = kmemdup(attr_groups, sizeof(attr_groups),
-					GFP_KERNEL);
-	if (!pmu->base.attr_groups)
+	attr_groups = kcalloc(4, sizeof(struct attribute_group *), GFP_KERNEL);
+	if (!attr_groups)
 		goto err_attr;
 
+	attr_groups[0] = &i915_pmu_format_attr_group;
+	attr_groups[1] = &pmu->events_attr_group;
+	attr_groups[2] = &i915_pmu_cpumask_attr_group;
+	attr_groups[3] = NULL; /* sentinel */
+
+	pmu->base.attr_groups = attr_groups;
+
 	pmu->base.module	= THIS_MODULE;
 	pmu->base.task_ctx_nr	= perf_invalid_context;
 	pmu->base.event_init	= i915_pmu_event_init;
-- 
2.39.2

