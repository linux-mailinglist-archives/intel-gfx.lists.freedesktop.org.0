Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DA4197E7D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06C36E3FE;
	Mon, 30 Mar 2020 14:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFC06E3F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:35:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 16:35:25 +0200
Message-Id: <20200330143545.4371-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200330143545.4371-1-maarten.lankhorst@linux.intel.com>
References: <20200330143545.4371-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/22] perf/core: Only copy-to-user after
 completely unlocking all locks. (CI test)
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

We inadvertently create a dependency on mmap_sem with a whole chain.

This breaks any user who wants to take a lock and call rcu_barrier(),
while also taking that lock inside mmap_sem:

<4> [604.892532] ======================================================
<4> [604.892534] WARNING: possible circular locking dependency detected
<4> [604.892536] 5.6.0-rc7-CI-Patchwork_17096+ #1 Tainted: G     U
<4> [604.892537] ------------------------------------------------------
<4> [604.892538] kms_frontbuffer/2595 is trying to acquire lock:
<4> [604.892540] ffffffff8264a558 (rcu_state.barrier_mutex){+.+.}, at: rcu_barrier+0x23/0x190
<4> [604.892547]
but task is already holding lock:
<4> [604.892547] ffff888484716050 (reservation_ww_class_mutex){+.+.}, at: i915_gem_object_pin_to_display_plane+0x89/0x270 [i915]
<4> [604.892592]
which lock already depends on the new lock.
<4> [604.892593]
the existing dependency chain (in reverse order) is:
<4> [604.892594]
-> #6 (reservation_ww_class_mutex){+.+.}:
<4> [604.892597]        __ww_mutex_lock.constprop.15+0xc3/0x1090
<4> [604.892598]        ww_mutex_lock+0x39/0x70
<4> [604.892600]        dma_resv_lockdep+0x10e/0x1f5
<4> [604.892602]        do_one_initcall+0x58/0x300
<4> [604.892604]        kernel_init_freeable+0x17b/0x1dc
<4> [604.892605]        kernel_init+0x5/0x100
<4> [604.892606]        ret_from_fork+0x24/0x50
<4> [604.892607]
-> #5 (reservation_ww_class_acquire){+.+.}:
<4> [604.892609]        dma_resv_lockdep+0xec/0x1f5
<4> [604.892610]        do_one_initcall+0x58/0x300
<4> [604.892610]        kernel_init_freeable+0x17b/0x1dc
<4> [604.892611]        kernel_init+0x5/0x100
<4> [604.892612]        ret_from_fork+0x24/0x50
<4> [604.892613]
-> #4 (&mm->mmap_sem#2){++++}:
<4> [604.892615]        __might_fault+0x63/0x90
<4> [604.892617]        _copy_to_user+0x1e/0x80
<4> [604.892619]        perf_read+0x200/0x2b0
<4> [604.892621]        vfs_read+0x96/0x160
<4> [604.892622]        ksys_read+0x9f/0xe0
<4> [604.892623]        do_syscall_64+0x4f/0x220
<4> [604.892624]        entry_SYSCALL_64_after_hwframe+0x49/0xbe
<4> [604.892625]
-> #3 (&cpuctx_mutex){+.+.}:
<4> [604.892626]        __mutex_lock+0x9a/0x9c0
<4> [604.892627]        perf_event_init_cpu+0xa4/0x140
<4> [604.892629]        perf_event_init+0x19d/0x1cd
<4> [604.892630]        start_kernel+0x362/0x4e4
<4> [604.892631]        secondary_startup_64+0xa4/0xb0
<4> [604.892631]
-> #2 (pmus_lock){+.+.}:
<4> [604.892633]        __mutex_lock+0x9a/0x9c0
<4> [604.892633]        perf_event_init_cpu+0x6b/0x140
<4> [604.892635]        cpuhp_invoke_callback+0x9b/0x9d0
<4> [604.892636]        _cpu_up+0xa2/0x140
<4> [604.892637]        do_cpu_up+0x61/0xa0
<4> [604.892639]        smp_init+0x57/0x96
<4> [604.892639]        kernel_init_freeable+0x87/0x1dc
<4> [604.892640]        kernel_init+0x5/0x100
<4> [604.892642]        ret_from_fork+0x24/0x50
<4> [604.892642]
-> #1 (cpu_hotplug_lock.rw_sem){++++}:
<4> [604.892643]        cpus_read_lock+0x34/0xd0
<4> [604.892644]        rcu_barrier+0xaa/0x190
<4> [604.892645]        kernel_init+0x21/0x100
<4> [604.892647]        ret_from_fork+0x24/0x50
<4> [604.892647]
-> #0 (rcu_state.barrier_mutex){+.+.}:
<4> [604.892649]        __lock_acquire+0x1328/0x15d0
<4> [604.892650]        lock_acquire+0xa7/0x1c0
<4> [604.892651]        __mutex_lock+0x9a/0x9c0
<4> [604.892652]        rcu_barrier+0x23/0x190
<4> [604.892680]        i915_gem_object_unbind+0x29d/0x3f0 [i915]
<4> [604.892707]        i915_gem_object_pin_to_display_plane+0x141/0x270 [i915]
<4> [604.892737]        intel_pin_and_fence_fb_obj+0xec/0x1f0 [i915]
<4> [604.892767]        intel_plane_pin_fb+0x3f/0xd0 [i915]
<4> [604.892797]        intel_prepare_plane_fb+0x13b/0x5c0 [i915]
<4> [604.892798]        drm_atomic_helper_prepare_planes+0x85/0x110
<4> [604.892827]        intel_atomic_commit+0xda/0x390 [i915]
<4> [604.892828]        drm_atomic_helper_set_config+0x57/0xa0
<4> [604.892830]        drm_mode_setcrtc+0x1c4/0x720
<4> [604.892830]        drm_ioctl_kernel+0xb0/0xf0
<4> [604.892831]        drm_ioctl+0x2e1/0x390
<4> [604.892833]        ksys_ioctl+0x7b/0x90
<4> [604.892835]        __x64_sys_ioctl+0x11/0x20
<4> [604.892835]        do_syscall_64+0x4f/0x220
<4> [604.892836]        entry_SYSCALL_64_after_hwframe+0x49/0xbe
<4> [604.892837]

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 kernel/events/core.c | 59 +++++++++++++++++++++++---------------------
 1 file changed, 31 insertions(+), 28 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 085d9263d595..8b95a6512e31 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -4926,20 +4926,20 @@ static int __perf_read_group_add(struct perf_event *leader,
 }
 
 static int perf_read_group(struct perf_event *event,
-				   u64 read_format, char __user *buf)
+				   u64 read_format, char __user *buf,
+				   u64 **values)
 {
 	struct perf_event *leader = event->group_leader, *child;
 	struct perf_event_context *ctx = leader->ctx;
 	int ret;
-	u64 *values;
 
 	lockdep_assert_held(&ctx->mutex);
 
-	values = kzalloc(event->read_size, GFP_KERNEL);
-	if (!values)
+	*values = kzalloc(event->read_size, GFP_KERNEL);
+	if (!*values)
 		return -ENOMEM;
 
-	values[0] = 1 + leader->nr_siblings;
+	*values[0] = 1 + leader->nr_siblings;
 
 	/*
 	 * By locking the child_mutex of the leader we effectively
@@ -4947,47 +4947,42 @@ static int perf_read_group(struct perf_event *event,
 	 */
 	mutex_lock(&leader->child_mutex);
 
-	ret = __perf_read_group_add(leader, read_format, values);
+	ret = __perf_read_group_add(leader, read_format, *values);
 	if (ret)
 		goto unlock;
 
 	list_for_each_entry(child, &leader->child_list, child_list) {
-		ret = __perf_read_group_add(child, read_format, values);
+		ret = __perf_read_group_add(child, read_format, *values);
 		if (ret)
 			goto unlock;
 	}
 
-	mutex_unlock(&leader->child_mutex);
-
 	ret = event->read_size;
-	if (copy_to_user(buf, values, event->read_size))
-		ret = -EFAULT;
-	goto out;
-
 unlock:
 	mutex_unlock(&leader->child_mutex);
-out:
-	kfree(values);
+	if (ret < 0)
+		kfree(*values);
 	return ret;
 }
 
 static int perf_read_one(struct perf_event *event,
-				 u64 read_format, char __user *buf)
+				 u64 read_format, char __user *buf,
+				 u64 **values)
 {
 	u64 enabled, running;
-	u64 values[4];
 	int n = 0;
 
-	values[n++] = __perf_event_read_value(event, &enabled, &running);
+	*values = kzalloc(sizeof(**values) * 4, GFP_KERNEL);
+	if (!*values)
+		return -ENOMEM;
+
+	*values[n++] = __perf_event_read_value(event, &enabled, &running);
 	if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
-		values[n++] = enabled;
+		*values[n++] = enabled;
 	if (read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
-		values[n++] = running;
+		*values[n++] = running;
 	if (read_format & PERF_FORMAT_ID)
-		values[n++] = primary_event_id(event);
-
-	if (copy_to_user(buf, values, n * sizeof(u64)))
-		return -EFAULT;
+		*values[n++] = primary_event_id(event);
 
 	return n * sizeof(u64);
 }
@@ -5009,7 +5004,8 @@ static bool is_event_hup(struct perf_event *event)
  * Read the performance event - simple non blocking version for now
  */
 static ssize_t
-__perf_read(struct perf_event *event, char __user *buf, size_t count)
+__perf_read(struct perf_event *event, char __user *buf,
+		    size_t count, u64 **values)
 {
 	u64 read_format = event->attr.read_format;
 	int ret;
@@ -5027,9 +5023,9 @@ __perf_read(struct perf_event *event, char __user *buf, size_t count)
 
 	WARN_ON_ONCE(event->ctx->parent_ctx);
 	if (read_format & PERF_FORMAT_GROUP)
-		ret = perf_read_group(event, read_format, buf);
+		ret = perf_read_group(event, read_format, buf, values);
 	else
-		ret = perf_read_one(event, read_format, buf);
+		ret = perf_read_one(event, read_format, buf, values);
 
 	return ret;
 }
@@ -5039,6 +5035,7 @@ perf_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
 {
 	struct perf_event *event = file->private_data;
 	struct perf_event_context *ctx;
+	u64 *values;
 	int ret;
 
 	ret = security_perf_event_read(event);
@@ -5046,9 +5043,15 @@ perf_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
 		return ret;
 
 	ctx = perf_event_ctx_lock(event);
-	ret = __perf_read(event, buf, count);
+	ret = __perf_read(event, buf, count, &values);
 	perf_event_ctx_unlock(event, ctx);
 
+	if (ret > 0) {
+		if (copy_to_user(buf, values, ret))
+			ret = -EFAULT;
+		kfree(values);
+	}
+
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
