Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8B48DC5F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988FD10E562;
	Thu, 13 Jan 2022 16:59:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D202210E233;
 Thu, 13 Jan 2022 16:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093187; x=1673629187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9EznIQLHpQFrXe9lvnaKPxYp3hlicwPfOseR0PbeIRc=;
 b=gy5HqjA29Bi6rxqvU26XaQo4TAuVjOBdlaGHUw98X0OO7E1X1EHoJ6NK
 Ew1tX/ay1x6/4WYJQJL9y5llcpK9wXX0ek/W2NRZDrOnc2qxklNZkguBy
 iEeSQ7ij3LeI5tS8q8pUyjckzyiO/uyqocBwUwhqSd6tZPe6lPG3rHiMg
 e0Bna/hRSYwVlS2w7YvZRfEoQvgO1n2wwtLJkyWLT0Y51s72C9Fp69gmL
 YaRQoq3/i0A4S49e1kt0oVEORXu+VYhmiArzZm/0wnCZS6kkUO9nElJ/B
 kpHE68tvn46q6p4vQgJO2ADLEzIJHwMvf8oLdVh5wB+/K1NZ8QrxQKEJg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396639"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396639"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999184"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:45 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:42 -0800
Message-Id: <20220113165944.1414015-14-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 13/15] lib/i915: Add helper for
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

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/i915/gem_engine_topology.c | 39 ++++++++++++++++++++++++++++++++++
 lib/i915/gem_engine_topology.h |  9 ++++++++
 2 files changed, 48 insertions(+)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 729f42b0a..3f6a861d3 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -488,6 +488,45 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
 	return ret;
 }
 
+/* Ensure fast hang detection */
+void gem_engine_properties_configure(int fd, struct gem_engine_properties *params)
+{
+	int ret;
+	struct gem_engine_properties write = *params;
+
+	ret = gem_engine_property_scanf(fd, write.engine->name,
+					"preempt_timeout_ms",
+					"%d", &params->preempt_timeout);
+	igt_assert_eq(ret, 1);
+	ret = gem_engine_property_scanf(fd, write.engine->name,
+					"heartbeat_interval_ms",
+					"%d", &params->heartbeat_interval);
+	igt_assert_eq(ret, 1);
+
+	ret = gem_engine_property_printf(fd, write.engine->name,
+					 "preempt_timeout_ms", "%d",
+					 write.preempt_timeout);
+	igt_assert_lt(0, ret);
+	ret = gem_engine_property_printf(fd, write.engine->name,
+					 "heartbeat_interval_ms", "%d",
+					 write.heartbeat_interval);
+	igt_assert_lt(0, ret);
+}
+
+void gem_engine_properties_restore(int fd, const struct gem_engine_properties *saved)
+{
+	int ret;
+
+	ret = gem_engine_property_printf(fd, saved->engine->name,
+					 "preempt_timeout_ms", "%d",
+					 saved->preempt_timeout);
+	igt_assert_lt(0, ret);
+	ret = gem_engine_property_printf(fd, saved->engine->name,
+					 "heartbeat_interval_ms", "%d",
+					 saved->heartbeat_interval);
+	igt_assert_lt(0, ret);
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

