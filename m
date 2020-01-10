Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E8136E13
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005E06EA0C;
	Fri, 10 Jan 2020 13:31:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6327C6EA0C
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:31:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216666353"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 05:31:02 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 13:30:48 +0000
Message-Id: <20200110133049.2705-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 7/8] drm/i915: Track hw reported context runtime
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
Cc: kui.wen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

GPU saves accumulated context runtime (in CS timestamp units) in PPHWSP
which will be useful for us in cases when we are not able to track context
busyness ourselves (like with GuC). Keep a copy of this in struct
intel_context from where it can be easily read even if the context is not
pinned.

QQQ: Do we want to make this accounting conditional / able to turn on/off?

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h       | 7 +++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h | 5 +++++
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 9 +++++++++
 drivers/gpu/drm/i915/intel_device_info.c      | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h      | 1 +
 5 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 30f0268fcc9a..389a05736fc7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 
 #include "i915_active.h"
+#include "i915_drv.h"
 #include "intel_context_types.h"
 #include "intel_engine_types.h"
 #include "intel_ring_types.h"
@@ -235,4 +236,10 @@ __intel_context_stats_start(struct intel_context_stats *stats, ktime_t now)
 
 ktime_t intel_context_get_busy_time(struct intel_context *ce);
 
+static inline u64 intel_context_get_hw_runtime_ns(struct intel_context *ce)
+{
+	return ce->total_runtime *
+	       RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
+}
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 963d33dc5289..7b08bf87fb82 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -69,6 +69,11 @@ struct intel_context {
 	u64 lrc_desc;
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
+	/* Time on GPU as tracked by the hw. */
+	u32 last_runtime;
+	u64 total_runtime;
+	u32 *pphwsp;
+
 	unsigned int active_count; /* protected by timeline->mutex */
 
 	atomic_t pin_count;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index dd559547500f..26999b43e5a1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1289,6 +1289,7 @@ __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
 	struct intel_context *ce = rq->context;
+	u32 old, new;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1309,6 +1310,13 @@ __execlists_schedule_out(struct i915_request *rq,
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
+	old = ce->last_runtime;
+	ce->last_runtime = new = ce->pphwsp[16];
+	if (new > old)
+		ce->total_runtime += new - old;
+	else
+		ce->total_runtime += (~0UL - old) + new + 1;
+
 	/*
 	 * If this is part of a virtual engine, its next request may
 	 * have been blocked waiting for access to the active context.
@@ -2608,6 +2616,7 @@ __execlists_context_pin(struct intel_context *ce,
 
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
+	ce->pphwsp = vaddr + LRC_PPHWSP_PN * PAGE_SIZE;
 	__execlists_update_reg_state(ce, engine);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 6670a0763be2..7732748e1939 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -1042,6 +1042,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 	/* Initialize command stream timestamp frequency */
 	runtime->cs_timestamp_frequency_khz = read_timestamp_frequency(dev_priv);
+	runtime->cs_timestamp_period_ns =
+		div_u64(1e6, runtime->cs_timestamp_frequency_khz);
 }
 
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 2725cb7fc169..9ec816dbc418 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -216,6 +216,7 @@ struct intel_runtime_info {
 	struct sseu_dev_info sseu;
 
 	u32 cs_timestamp_frequency_khz;
+	u32 cs_timestamp_period_ns;
 
 	/* Media engine access to SFC per instance */
 	u8 vdbox_sfc_access;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
