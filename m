Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C246D17E73A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 19:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6A96E50D;
	Mon,  9 Mar 2020 18:31:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495576E4D2
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 18:31:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 11:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="231027971"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 11:31:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:31:28 +0000
Message-Id: <20200309183129.2296-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 11/12] drm/i915: Prefer software tracked context
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
 drivers/gpu/drm/i915/i915_drm_client.c | 83 +++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drm_client.h |  2 +
 2 files changed, 84 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 6df5a21f5d4e..c6b463650ba2 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -91,6 +91,46 @@ show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
 	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
 }
 
+static u64
+sw_busy_add(struct i915_gem_context *ctx, unsigned int class)
+{
+	struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	ktime_t total = 0;
+
+	for_each_gem_engine(ce, engines, it) {
+		if (ce->engine->uabi_class == class)
+			total = ktime_add(total,
+					  intel_context_get_busy_time(ce));
+	}
+
+	return ktime_to_ns(total);
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
+	u64 total = atomic64_read(&client->past_sw_runtime[class]);
+	struct list_head *list = &client->ctx_list;
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, list, client_link) {
+		total += atomic64_read(&ctx->past_sw_runtime[class]);
+		total += sw_busy_add(ctx, class);
+	}
+	rcu_read_unlock();
+
+	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
+}
+
 static const char *uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "0",
 	[I915_ENGINE_CLASS_COPY] = "1",
@@ -146,11 +186,39 @@ __i915_drm_client_register(struct i915_drm_client *client,
 		goto err_attr;
 
 	if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
+		struct intel_engine_cs *engine;
+		bool sw_stats = true;
+
 		client->busy_root =
 			kobject_create_and_add("busy", client->root);
 		if (!client->busy_root)
 			goto err_attr;
 
+		/* Enable busy stats on all engines. */
+		i = 0;
+		for_each_uabi_engine(engine, i915) {
+			ret = intel_enable_engine_stats(engine);
+			if (ret) {
+				int j;
+
+				/* Unwind if not available. */
+				j = 0;
+				for_each_uabi_engine(engine, i915) {
+					if (j++ == i)
+						break;
+
+					intel_disable_engine_stats(engine);
+				}
+
+				sw_stats = false;
+				dev_notice_once(i915->drm.dev,
+						"Engine busy stats not available! (%d)",
+						ret);
+				break;
+			}
+			i++;
+		}
+
 		for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++) {
 			struct i915_engine_busy_attribute *i915_attr =
 				&client->attr.busy[i];
@@ -168,13 +236,17 @@ __i915_drm_client_register(struct i915_drm_client *client,
 
 			attr->attr.name = uabi_class_names[i];
 			attr->attr.mode = 0444;
-			attr->show = show_client_busy;
+			attr->show = sw_stats ?
+				     show_client_sw_busy :
+				     show_client_busy;
 
 			ret = sysfs_create_file(client->busy_root,
 						(struct attribute *)attr);
 			if (ret)
 				goto err_busy;
 		}
+
+		client->sw_busy = sw_stats;
 	}
 
 	return 0;
@@ -200,6 +272,15 @@ __i915_drm_client_unregister(struct i915_drm_client *client)
 	if (!client->root)
 		return; /* fbdev client or error during drm open */
 
+	if (client->busy_root && client->sw_busy) {
+		struct drm_i915_private *i915 =
+			container_of(client->clients, typeof(*i915), clients);
+		struct intel_engine_cs *engine;
+
+		for_each_uabi_engine(engine, i915)
+			intel_disable_engine_stats(engine);
+	}
+
 	kobject_put(fetch_and_zero(&client->busy_root));
 	kobject_put(fetch_and_zero(&client->root));
 }
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index aa1e446d0376..bc15f371715f 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -62,6 +62,8 @@ struct i915_drm_client {
 		struct i915_engine_busy_attribute busy[MAX_ENGINE_CLASS + 1];
 	} attr;
 
+	bool sw_busy;
+
 	/**
 	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
 	 */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
