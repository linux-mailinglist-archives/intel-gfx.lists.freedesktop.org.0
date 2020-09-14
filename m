Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDA1268BED
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82116E4A6;
	Mon, 14 Sep 2020 13:13:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F83F6E49D
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:13:20 +0000 (UTC)
IronPort-SDR: pKxoWzXrud3/zM+J7DafMihYTy3Ic9EU0pjl53JTbTuC+FBkAP/1D1tVCckkRuD0z0nqA7KsBu
 z8m/aT2iBdYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="159113446"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="159113446"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:20 -0700
IronPort-SDR: y6KJVqtFjc8+Eo7ULVQHu1ZRYzeMFFTUD3IWFnmT2pJ+FnsmtyDm/oQ+wIyPJon+LUo6qGL3Gz
 0kzO0efx4XVA==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="507136419"
Received: from matancoh-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.198.45])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Sep 2020 14:12:56 +0100
Message-Id: <20200914131256.89465-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
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
index 93265d1afaef..0ba8e5974ed1 100644
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
+			t += __intel_context_get_active_time(ce);
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
