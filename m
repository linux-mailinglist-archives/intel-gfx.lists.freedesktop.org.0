Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59C42FB602
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 13:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B6B6E86D;
	Tue, 19 Jan 2021 12:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3FF6E23D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 12:10:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23638411-1500050 
 for multiple; Tue, 19 Jan 2021 12:10:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:10:17 +0000
Message-Id: <20210119121017.6888-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119121017.6888-1-chris@chris-wilson.co.uk>
References: <20210119121017.6888-1-chris@chris-wilson.co.uk>
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When available prefer context tracked context busyness because it provides
visibility into currently executing contexts as well.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 64 ++++++++++++++++++++++++--
 1 file changed, 59 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 5b94d2dcfa4c..ee9732ccd3c2 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -96,6 +96,58 @@ show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
 	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
 }
 
+static u64 sw_busy_add(struct i915_gem_context *ctx, unsigned int class)
+{
+	struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+	u32 period_ns = ctx->i915->gt.clock_period_ns;
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
+	const u32 period_ns = client->clients->i915->gt.clock_period_ns;
+	u64 total = atomic64_read(&client->past_runtime[class]) * period_ns;
+	struct list_head *list = &client->ctx_list;
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, list, client_link)
+		total += sw_busy_add(ctx, class);
+	rcu_read_unlock();
+
+	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
+}
+
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "0",
 	[I915_ENGINE_CLASS_COPY] = "1",
@@ -106,6 +158,8 @@ static const char * const uabi_class_names[] = {
 static int __client_register_sysfs_busy(struct i915_drm_client *client)
 {
 	struct i915_drm_clients *clients = client->clients;
+	bool sw_stats = clients->i915->caps.scheduler &
+			I915_SCHEDULER_CAP_ENGINE_BUSY_STATS;
 	unsigned int i;
 	int ret = 0;
 
@@ -131,18 +185,18 @@ static int __client_register_sysfs_busy(struct i915_drm_client *client)
 
 		attr->attr.name = uabi_class_names[i];
 		attr->attr.mode = 0444;
-		attr->show = show_client_busy;
+		attr->show = sw_stats ? show_client_sw_busy : show_client_busy;
 
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
