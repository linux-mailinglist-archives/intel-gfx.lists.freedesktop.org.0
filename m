Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32653136E15
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839A46EA12;
	Fri, 10 Jan 2020 13:31:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A676EA12
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:31:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:31:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216666385"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 05:31:04 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 13:30:49 +0000
Message-Id: <20200110133049.2705-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 8/8] drm/i915: Fallback to hw context runtime when
 sw tracking is not available
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

In GuC mode we are not receiving the context switch interrupts to be able
to accurately track context runtimes.

We can fallback to using PPHWSP counter updated by the GPU on context save.

QQQ
Downsides are: 1) we do not see currently executing batch and 2) with a
12MHz command streamer timestamp timer frequency the 32-bit counter wraps
every ~358 seconds. This makes endless OpenCL batches with hearbeats
turned off also a problem.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 34 ++++++++++++++++++++------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 55b2f86cc4c1..0b84ae528dcc 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -58,6 +58,24 @@ sw_busy_add(struct i915_gem_context *ctx, unsigned int engine_class)
 	return total;
 }
 
+static u64
+hw_busy_add(struct i915_gem_context *ctx, unsigned int engine_class)
+{
+	struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	u64 total = 0;
+
+	for_each_gem_engine(ce, engines, it) {
+		if (ce->engine->uabi_class != engine_class)
+			continue;
+
+		total += intel_context_get_hw_runtime_ns(ce);
+	}
+
+	return total;
+}
+
 static ssize_t
 show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
 {
@@ -68,12 +86,14 @@ show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
 	struct i915_gem_context *ctx;
 	u64 total = 0;
 
-	if (i915_attr->no_busy_stats)
-		return -ENODEV;
-
 	rcu_read_lock();
-	list_for_each_entry_rcu(ctx, list, client_link)
-		total += sw_busy_add(ctx, engine_class);
+	if (i915_attr->no_busy_stats) {
+		list_for_each_entry_rcu(ctx, list, client_link)
+			total += hw_busy_add(ctx, engine_class);
+	} else {
+		list_for_each_entry_rcu(ctx, list, client_link)
+			total += sw_busy_add(ctx, engine_class);
+	}
 	rcu_read_unlock();
 
 	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
@@ -164,7 +184,7 @@ __i915_drm_client_register(struct i915_drm_client *client,
 			if (ret) {
 				int j, k;
 
-				/* Unwind if not available. */
+				/* Unwind and fallback if not available. */
 				j = 0;
 				for_each_uabi_engine(engine, i915) {
 					if (j++ == i)
@@ -181,7 +201,7 @@ __i915_drm_client_register(struct i915_drm_client *client,
 				}
 
 				dev_notice_once(i915->drm.dev,
-						"Engine busy stats not available! (%d)",
+						"Reduced accuracy context runtime mode (%d)",
 						ret);
 				break;
 			}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
