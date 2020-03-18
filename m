Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102EB189A2B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE416E8CD;
	Wed, 18 Mar 2020 11:02:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A829A6E8D0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 11:02:11 +0000 (UTC)
IronPort-SDR: 06poJVfc2u4UZ0RNgRh4IFHpay7vSPh6xpgXWwVH+47gbsdo653bLQIAxcQ9WwuaM1ehQtGCj6
 OHHF6nP0G51Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 04:02:11 -0700
IronPort-SDR: LSQW7FuL0dDavQ3YDaGbq7IcYJmQZeDTQPMjYdsS8i3yw14F8qZmbSwMxP85YTxBmbB1v/DRwh
 763KvnGUybVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="244791067"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 04:02:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 11:01:46 +0000
Message-Id: <20200318110146.22339-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
References: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Prefer software tracked context
 busyness
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When available prefer context tracked context busyness because it provides
visibility into currently executing contexts as well.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 68 ++++++++++++++++++++++++--
 1 file changed, 63 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 485a2b75d3e1..31f0d373caae 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -96,6 +96,61 @@ show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
 	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
 }
 
+static u64
+sw_busy_add(struct i915_gem_context *ctx, unsigned int class)
+{
+	struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+	u32 period_ns = RUNTIME_INFO(ctx->i915)->cs_timestamp_period_ns;
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	u64 total = 0;
+
+	for_each_gem_engine(ce, engines, it) {
+		struct intel_context_stats *stats;
+		unsigned int seq;
+		u64 t;
+
+		if (ce->engine->uabi_class != class)
+			continue;
+
+		stats = &ce->stats;
+
+		do {
+			seq = read_seqbegin(&stats->lock);
+			t = ce->stats.runtime.total * period_ns;
+			t += intel_context_get_active_time(ce);
+		} while (read_seqretry(&stats->lock, seq));
+
+		total += t;
+	}
+
+	return total;
+}
+
+static ssize_t
+show_client_sw_busy(struct device *kdev,
+		    struct device_attribute *attr,
+		    char *buf)
+{
+	struct i915_engine_busy_attribute *i915_attr =
+		container_of(attr, typeof(*i915_attr), attr);
+	unsigned int class = i915_attr->engine_class;
+	struct i915_drm_client *client = i915_attr->client;
+	u32 period_ns = RUNTIME_INFO(i915_attr->i915)->cs_timestamp_period_ns;
+	u64 total = atomic64_read(&client->past_runtime[class]) * period_ns;
+	struct list_head *list = &client->ctx_list;
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, list, client_link) {
+		total += atomic64_read(&ctx->past_runtime[class]) * period_ns +
+			 sw_busy_add(ctx, class);
+	}
+	rcu_read_unlock();
+
+	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
+}
+
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "0",
 	[I915_ENGINE_CLASS_COPY] = "1",
@@ -109,6 +164,8 @@ __client_register_sysfs_busy(struct i915_drm_client *client)
 	struct i915_drm_clients *clients = client->clients;
 	struct drm_i915_private *i915 =
 		container_of(clients, typeof(*i915), clients);
+	bool sw_stats = i915->caps.scheduler &
+			I915_SCHEDULER_CAP_ENGINE_BUSY_STATS;
 	unsigned int i;
 	int ret = 0;
 
@@ -135,18 +192,19 @@ __client_register_sysfs_busy(struct i915_drm_client *client)
 
 		attr->attr.name = uabi_class_names[i];
 		attr->attr.mode = 0444;
-		attr->show = show_client_busy;
+		attr->show = sw_stats ?
+			     show_client_sw_busy : show_client_busy;
 
 		ret = sysfs_create_file(client->busy_root,
 					(struct attribute *)attr);
 		if (ret)
-			goto err;
+			goto out;
 	}
 
-	return 0;
+out:
+	if (ret)
+		kobject_put(client->busy_root);
 
-err:
-	kobject_put(client->busy_root);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
