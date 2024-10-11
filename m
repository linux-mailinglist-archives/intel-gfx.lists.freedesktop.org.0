Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A793C99AEEB
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940DF10EB27;
	Fri, 11 Oct 2024 22:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0ZgyYg7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F308C10E2F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bCFYcrWX0SgVUaFsI3Uobc+i2ISz46PTsXMxUz3KOi0=;
 b=c0ZgyYg7+xvTOrKn4q5yH8Q+qVf6PPso3lphA8bTszamSXOMs5E6FraJ
 lbT50kP2bCSFVbqN9FiZf0MIMuP71loNvwL8edO5tyN0ci58ANIQMEiQz
 u05KeRDnvrQFY+f2nIADdOsrc90myLRJp3a9K8nQ1O1cXyQbK0rwRjAw5
 /tpvDdJxSmye/Sz8lFhukG1mzLFes80XsEN5pfnu39gL5ARbrw4mX8eFp
 ieMMNMXTVrVNSnSZYh2S/SWwN/yfJ9MfBlVU7PYwJgWl8hsLNSEQnzJRJ
 yMw98bjTtHADlrMlJlmHkD4f+rGmDJchcDO7+LWn0tNDkifY96eZ2UJxR g==;
X-CSE-ConnectionGUID: 2HGdbTvIQ/iGRgPJg/uzxA==
X-CSE-MsgGUID: u3Ph+IDkTmuagOKBGRjtqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519743"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519743"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:12 -0700
X-CSE-ConnectionGUID: FHPKlllzQo25t7/Urux1HQ==
X-CSE-MsgGUID: amuRU+xYRSG7WgmU8m1PAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040404"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 1/8] squashed series -
 20241008183501.1354695-1-lucas.demarchi@intel.com
Date: Fri, 11 Oct 2024 15:54:23 -0700
Message-ID: <20241011225430.1219345-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Patches 2 and 3 of https://lore.kernel.org/all/20241008183501.1354695-1-lucas.demarchi@intel.com/
with the unused module var removed (pending for v2 after review).

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 include/linux/perf_event.h | 12 ++++++++++++
 kernel/events/core.c       | 37 ++++++++++++++++++++++++++++++++-----
 2 files changed, 44 insertions(+), 5 deletions(-)

diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index fb908843f2092..d6983dbf5a45b 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -561,6 +561,17 @@ struct pmu {
 	 * Check period value for PERF_EVENT_IOC_PERIOD ioctl.
 	 */
 	int (*check_period)		(struct perf_event *event, u64 value); /* optional */
+
+	/*
+	 * Optional: get a reference. Typically needed by PMUs that are bound to a device
+	 * that can be hotplugged, either physically or through sysfs' bind/unbind. When provided,
+	 * pmu::put() is mandatory and it's driver responsibility to call perf_pmu_free() when
+	 * resources can be released.
+	 */
+	struct pmu *(*get)		(struct pmu *pmu);
+
+	/* Optional: put a reference. See pmu::get() */
+	 void (*put)			(struct pmu *pmu);
 };
 
 enum perf_addr_filter_action_t {
@@ -1104,6 +1115,7 @@ extern void perf_event_itrace_started(struct perf_event *event);
 
 extern int perf_pmu_register(struct pmu *pmu, const char *name, int type);
 extern void perf_pmu_unregister(struct pmu *pmu);
+extern void perf_pmu_free(struct pmu *pmu);
 
 extern void __perf_event_task_sched_in(struct task_struct *prev,
 				       struct task_struct *task);
diff --git a/kernel/events/core.c b/kernel/events/core.c
index 3b8b85adb10a9..2d39005ba6d9c 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -5319,6 +5319,20 @@ static void perf_pending_task_sync(struct perf_event *event)
 	rcuwait_wait_event(&event->pending_work_wait, !event->pending_work, TASK_UNINTERRUPTIBLE);
 }
 
+static void pmu_module_put(struct pmu **ppmu)
+{
+	struct pmu *pmu = *ppmu;
+	struct module *module = pmu->module;
+
+	if (pmu->put)
+		pmu->put(pmu);
+
+	module_put(module);
+
+	/* Can't touch pmu anymore/ */
+	*ppmu = NULL;
+}
+
 static void _free_event(struct perf_event *event)
 {
 	irq_work_sync(&event->pending_irq);
@@ -5374,7 +5388,8 @@ static void _free_event(struct perf_event *event)
 		put_ctx(event->ctx);
 
 	exclusive_event_destroy(event);
-	module_put(event->pmu->module);
+
+	pmu_module_put(&event->pmu);
 
 	call_rcu(&event->rcu_head, free_event_rcu);
 }
@@ -11512,10 +11527,12 @@ static int perf_event_idx_default(struct perf_event *event)
 	return 0;
 }
 
-static void free_pmu_context(struct pmu *pmu)
+void perf_pmu_free(struct pmu *pmu)
 {
 	free_percpu(pmu->cpu_pmu_context);
+	free_percpu(pmu->pmu_disable_count);
 }
+EXPORT_SYMBOL_GPL(perf_pmu_free);
 
 /*
  * Let userspace know that this PMU supports address range filtering:
@@ -11749,6 +11766,11 @@ int perf_pmu_register(struct pmu *pmu, const char *name, int type)
 		goto free_pdc;
 	}
 
+	if (WARN_ONCE((!!pmu->get) ^ (!!pmu->put), "Can not register a pmu with only get or put defined.\n")) {
+		ret = -EINVAL;
+		goto free_pdc;
+	}
+
 	pmu->name = name;
 
 	if (type >= 0)
@@ -11845,7 +11867,6 @@ void perf_pmu_unregister(struct pmu *pmu)
 	synchronize_srcu(&pmus_srcu);
 	synchronize_rcu();
 
-	free_percpu(pmu->pmu_disable_count);
 	idr_remove(&pmu_idr, pmu->type);
 	if (pmu_bus_running && pmu->dev && pmu->dev != PMU_NULL_DEV) {
 		if (pmu->nr_addr_filters)
@@ -11853,8 +11874,11 @@ void perf_pmu_unregister(struct pmu *pmu)
 		device_del(pmu->dev);
 		put_device(pmu->dev);
 	}
-	free_pmu_context(pmu);
+
 	mutex_unlock(&pmus_lock);
+
+	if (!pmu->put)
+		perf_pmu_free(pmu);
 }
 EXPORT_SYMBOL_GPL(perf_pmu_unregister);
 
@@ -11888,6 +11912,9 @@ static int perf_try_init_event(struct pmu *pmu, struct perf_event *event)
 		BUG_ON(!ctx);
 	}
 
+	if (pmu->get)
+		pmu->get(pmu);
+
 	event->pmu = pmu;
 	ret = pmu->event_init(event);
 
@@ -11924,7 +11951,7 @@ static int perf_try_init_event(struct pmu *pmu, struct perf_event *event)
 	}
 
 	if (ret)
-		module_put(pmu->module);
+		pmu_module_put(&pmu);
 
 	return ret;
 }
-- 
2.47.0

