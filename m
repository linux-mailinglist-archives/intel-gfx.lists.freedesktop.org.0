Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4473604ED1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2198B10EB44;
	Wed, 19 Oct 2022 17:34:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49ECF10EB47
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200857; x=1697736857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7rJx5gTjnj7urPJTsmnnJY+QejvZumuwu5CnaP5NC0E=;
 b=Kj1iKgDX1wsIM9N7t5cYfTuwQAma3Bc7Uf6XFFVYuMQBp+VnBtHFBIyo
 fCD9YsgHFnhObDvO/Ne3oB1Ej3lsVoQn+yD7T47lo7k3hjHzJTbjOFADk
 0/E1krAFX4FmO1s6ysgTAqqTvtqIEgQ6FXaQgRwYufXm3TjP+MUoyx1sG
 xxk7/oQ9H1E7L+BbStsjU2QBw3g7UB4o2DT0EXLDn/hE8rIgW9PCni1pf
 NgdncGzc8AF8iFkBJr9KCl8nz5Qo/T1X0xY8Dw2iD4JCRY11Q4Z9hCLlL
 VTxA8nVQmvKyRvlsnKJHNhdBe/vmyUA3sCzwFckVLLEAR1goa5ERqsUEH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201819"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201819"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:34:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204941"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204941"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:34:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:54 +0100
Message-Id: <20221019173254.3361334-18-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 17/17] drm/i915: Implement cgroup controller over
 budget throttling
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When notified by the drm core we are over our allotted time budget, i915
instance will check if any of the GPU engines it is reponsible for is
fully saturated. If it is, and the client in question is using that
engine, it will throttle it.

For now throttling is done simplistically by lowering the scheduling
priority while client is throttled.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 22 ++++-
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drm_client.c        | 93 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h        |  9 ++
 4 files changed, 123 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 391c5b5c80be..efcbd827f6a0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -8,6 +8,7 @@
 #include <linux/dma-resv.h>
 #include <linux/highmem.h>
 #include <linux/minmax.h>
+#include <linux/prandom.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
 
@@ -3018,15 +3019,32 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
 }
 
 #ifdef CONFIG_CGROUP_DRM
+static unsigned int
+__get_class(struct drm_i915_file_private *fpriv, const struct i915_request *rq)
+{
+	unsigned int class;
+
+	class = rq->context->engine->uabi_class;
+
+	if (WARN_ON_ONCE(class >= ARRAY_SIZE(fpriv->client->throttle)))
+		class = 0;
+
+	return class;
+}
+
 static void copy_priority(struct i915_sched_attr *attr,
-			  const struct i915_execbuffer *eb)
+			  const struct i915_execbuffer *eb,
+			  const struct i915_request *rq)
 {
+	struct drm_i915_file_private *file_priv = eb->file->driver_priv;
 	const int scale = DIV_ROUND_CLOSEST(DRM_CGROUP_PRIORITY_MAX,
 					    I915_CONTEXT_MAX_USER_PRIORITY);
 	int prio;
 
 	*attr = eb->gem_context->sched;
 	prio = attr->priority * scale + eb->file->drm_cgroup_priority;
+	if (file_priv->client->throttle[__get_class(file_priv, rq)])
+		prio -= 1 + prandom_u32_max(-DRM_CGROUP_PRIORITY_MIN / 2);
 	prio = DIV_ROUND_UP(prio, scale);
 	attr->priority = clamp(prio,
 			       I915_CONTEXT_MIN_USER_PRIORITY,
@@ -3056,7 +3074,7 @@ static int eb_request_add(struct i915_execbuffer *eb, struct i915_request *rq,
 
 	/* Check that the context wasn't destroyed before submission */
 	if (likely(!intel_context_is_closed(eb->context))) {
-		copy_priority(&attr, eb);
+		copy_priority(&attr, eb, rq);
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
 		i915_request_set_error_once(rq, -ENOENT);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b949fd715202..abac9bb5bf27 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1897,6 +1897,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 static const struct drm_cgroup_ops i915_drm_cgroup_ops = {
 	.priority_levels = i915_drm_priority_levels,
 	.active_time_us = i915_drm_cgroup_get_active_time_us,
+	.signal_budget = i915_drm_cgroup_signal_budget,
 };
 #endif
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 8527fe80d449..ce497055cc3f 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/ktime.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 
@@ -173,6 +174,98 @@ u64 i915_drm_cgroup_get_active_time_us(struct drm_file *file)
 
 	return busy;
 }
+
+int i915_drm_cgroup_signal_budget(struct drm_file *file, u64 usage, u64 budget)
+{
+	struct drm_i915_file_private *fpriv = file->driver_priv;
+	u64 class_usage[I915_LAST_UABI_ENGINE_CLASS + 1];
+	u64 class_last[I915_LAST_UABI_ENGINE_CLASS + 1];
+	struct drm_i915_private *i915 = fpriv->dev_priv;
+	struct i915_drm_client *client = fpriv->client;
+	struct intel_engine_cs *engine;
+	bool over = usage > budget;
+	unsigned int i;
+	ktime_t unused;
+	int ret = 0;
+	u64 t;
+
+	if (!supports_stats(i915))
+		return -EINVAL;
+
+	if (usage == 0 && budget == 0)
+		return 0;
+
+printk("i915_drm_cgroup_signal_budget client-id=%u over=%u (%llu/%llu) <%u>\n",
+       client->id, over, usage, budget, client->over_budget);
+
+	if (over) {
+		client->over_budget++;
+		if (!client->over_budget)
+			client->over_budget = 2;
+	} else {
+		client->over_budget = 0;
+		memset(client->class_last, 0, sizeof(client->class_last));
+		memset(client->throttle, 0, sizeof(client->throttle));
+		return 0;
+	}
+
+	memset(class_usage, 0, sizeof(class_usage));
+	for_each_uabi_engine(engine, i915)
+		class_usage[engine->uabi_class] +=
+			ktime_to_ns(intel_engine_get_busy_time(engine, &unused));
+
+	memcpy(class_last, client->class_last, sizeof(class_last));
+	memcpy(client->class_last, class_usage, sizeof(class_last));
+
+	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
+		class_usage[i] -= class_last[i];
+
+	t = client->last;
+	client->last = ktime_get_raw_ns();
+	t = client->last - t;
+
+	if (client->over_budget == 1)
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++) {
+		u64 client_class_usage[I915_LAST_UABI_ENGINE_CLASS + 1];
+		unsigned int capacity;
+
+		if (!i915->engine_uabi_class_count[i])
+			continue;
+
+		t = DIV_ROUND_UP_ULL(t, 1000);
+		class_usage[i] = DIV_ROUND_CLOSEST_ULL(class_usage[i], 1000);
+		usage = DIV_ROUND_CLOSEST_ULL(class_usage[i] * 100ULL,
+					      t *
+					      i915->engine_uabi_class_count[i]);
+		if (usage <= 95) {
+			/* class not oversubsribed */
+			if (client->throttle[i]) {
+				client->throttle[i] = false;
+printk("  UN-throttling class%u (phys=%lld%%)\n",
+       i, usage);
+			}
+			continue;
+		}
+
+		client_class_usage[i] =
+			get_class_active_ns(client, i, &capacity);
+
+		if (client_class_usage[i] && !client->throttle[i]) {
+			ret |= 1;
+			client->throttle[i] = true;
+			/*
+			 * QQQ maybe apply "strength" of throttling based on
+			 * usage/budget?
+			 */
+printk("  THROTTLING class%u (phys=%lld%% client=%lluus)\n",
+       i, usage, client_class_usage[i] / 1000);
+		}
+	}
+
+	return ret;
+}
 #endif
 
 #ifdef CONFIG_PROC_FS
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 99b8ae01c183..b05afe01e68e 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -40,6 +40,13 @@ struct i915_drm_client {
 	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
 	 */
 	atomic64_t past_runtime[I915_LAST_UABI_ENGINE_CLASS + 1];
+
+#ifdef CONFIG_CGROUP_DRM
+	bool throttle[I915_LAST_UABI_ENGINE_CLASS + 1];
+	unsigned int over_budget;
+	u64 last;
+	u64 class_last[I915_LAST_UABI_ENGINE_CLASS + 1];
+#endif
 };
 
 void i915_drm_clients_init(struct i915_drm_clients *clients,
@@ -70,5 +77,7 @@ void i915_drm_clients_fini(struct i915_drm_clients *clients);
 unsigned int i915_drm_priority_levels(struct drm_file *file);
 
 u64 i915_drm_cgroup_get_active_time_us(struct drm_file *file);
+int i915_drm_cgroup_signal_budget(struct drm_file *file,
+				  u64 usage, u64 budget);
 
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.34.1

