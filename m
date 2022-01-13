Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E6048DE7A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D4310E597;
	Thu, 13 Jan 2022 19:59:59 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25FE410E4BB;
 Thu, 13 Jan 2022 19:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103991; x=1673639991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XH+K7d6DGVBoZ02EaARWsp6oDNye/F+FQt/WCpafT7o=;
 b=VtkVQIUVmOEBu12f2BCI16uLyH7HhLF7H6Pasd75iuYMBuJB83ehgU/F
 rtZQq70JbeEcI8TzlC3Pb0VqjDs0nQL1DYZCbYuYU2cdYWRKFhz0Ys727
 ExE8ZfvHg2d4s8lUI7GzrhwKpEScyuZDXQuXSElvo2Uk0oRP8OltTz1XB
 jZ+1V8hpHUfha5spTdtaw4rVAauT4i6DnH8lSxeueRFuM6I9k5k6Z/Hj4
 HpgnvnYRrY0VlKMCdkWYcVxkPHbX1tMkUX4hri00L2e47V0osKgI0GDoi
 K6fecojpL3y3bW4VDVxQMxzEgytI6/FHqE9KrKE9diTuboa+FN6ahDkaF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244056001"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244056001"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477494"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:48 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:45 -0800
Message-Id: <20220113195947.1536897-14-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 13/15] lib/i915: Add helper for
 non-destructive engine property updates
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various tests want to configure engine properties such as pre-emption
timeout and heartbeat interval. Some don't bother to restore the
original values again afterwards. So, add a helper to make it easier
to do this.

v2: Fix for platforms with no pre-emption capability.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/i915/gem_engine_topology.c | 46 ++++++++++++++++++++++++++++++++++
 lib/i915/gem_engine_topology.h |  9 +++++++
 2 files changed, 55 insertions(+)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 729f42b0a..bd12d0bc9 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -488,6 +488,52 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
 	return ret;
 }
 
+/* Ensure fast hang detection */
+void gem_engine_properties_configure(int fd, struct gem_engine_properties *params)
+{
+	int ret;
+	struct gem_engine_properties write = *params;
+
+	ret = gem_engine_property_scanf(fd, write.engine->name,
+					"heartbeat_interval_ms",
+					"%d", &params->heartbeat_interval);
+	igt_assert_eq(ret, 1);
+
+	ret = gem_engine_property_printf(fd, write.engine->name,
+					 "heartbeat_interval_ms", "%d",
+					 write.heartbeat_interval);
+	igt_assert_lt(0, ret);
+
+	if (gem_scheduler_has_preemption(fd)) {
+		ret = gem_engine_property_scanf(fd, write.engine->name,
+						"preempt_timeout_ms",
+						"%d", &params->preempt_timeout);
+		igt_assert_eq(ret, 1);
+
+		ret = gem_engine_property_printf(fd, write.engine->name,
+						 "preempt_timeout_ms", "%d",
+						 write.preempt_timeout);
+		igt_assert_lt(0, ret);
+	}
+}
+
+void gem_engine_properties_restore(int fd, const struct gem_engine_properties *saved)
+{
+	int ret;
+
+	ret = gem_engine_property_printf(fd, saved->engine->name,
+					 "heartbeat_interval_ms", "%d",
+					 saved->heartbeat_interval);
+	igt_assert_lt(0, ret);
+
+	if (gem_scheduler_has_preemption(fd)) {
+		ret = gem_engine_property_printf(fd, saved->engine->name,
+						 "preempt_timeout_ms", "%d",
+						 saved->preempt_timeout);
+		igt_assert_lt(0, ret);
+	}
+}
+
 uint32_t gem_engine_mmio_base(int i915, const char *engine)
 {
 	unsigned int mmio = 0;
diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
index 4cfab560b..b413aa8ab 100644
--- a/lib/i915/gem_engine_topology.h
+++ b/lib/i915/gem_engine_topology.h
@@ -115,6 +115,15 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
 	     ((e__) = intel_get_current_physical_engine(&i__##e__)); \
 	     intel_next_engine(&i__##e__))
 
+struct gem_engine_properties {
+	const struct intel_execution_engine2 *engine;
+	int preempt_timeout;
+	int heartbeat_interval;
+};
+
+void gem_engine_properties_configure(int fd, struct gem_engine_properties *params);
+void gem_engine_properties_restore(int fd, const struct gem_engine_properties *saved);
+
 __attribute__((format(scanf, 4, 5)))
 int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
 			      const char *fmt, ...);
-- 
2.25.1

