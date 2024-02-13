Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668085395D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B6910E575;
	Tue, 13 Feb 2024 18:03:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1Shu+OE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A803B10E604
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707847397; x=1739383397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xvW9KQM9m6yH9Qo/uAP/g7pA5BOMcdlZP5qhdt1oh3k=;
 b=j1Shu+OEUgpjoZG/ZwOZsKOJxTXNtbN6YcU31czqUkwDKev3rSjAfNzu
 rDfbAb4JMtmIGYO2B96xd+WgpARTTHLxcQ/RMrAZ+aKB1jWeHaZ/hCJ6d
 dCohRaPZuAwW3KtcksB9lV+7fnIHZCT1eIEcU6k1KTQRn2K48TWpGzr4O
 kQHCfga8gR1RPYjfcUmEMAXdNs21Regi3x2ruLXRNgNgVZ3RNtq0m+J9g
 GE3UHxPPY0qwnin8v7sWFUMVuTwe76QqMLNoqm83tbb+v00N0gUxnXlV5
 DzCshEaV+cSAqDHl85tpu1MWo1cEItIkROlD9rD6x1+wZvd756m6ICaGo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5689391"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5689391"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911852946"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="911852946"
Received: from dut7231atsm.jf.intel.com ([10.98.51.28])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
Date: Tue, 13 Feb 2024 10:03:02 -0800
Message-Id: <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

Once a user opens an fd for a perf event, if the driver undergoes a
function level reset (FLR), the resources are not cleaned up as
expected. For this discussion FLR is defined as a PCI unbind followed by
a bind. perf_pmu_unregister() would cleanup everything, but when the user
closes the perf fd, perf_release is executed and we encounter null
pointer dereferences and/or list corruption in that path which require a
reboot to recover.

The only approach that worked to resolve this was to close the file
associated with the event such that the relevant cleanup happens w.r.t.
the open file. To do so, use the event->owner task and find the file
relevant to the event and close it. This relies on the
file->private_data matching the event object.

Note:
- Closing the event file is a delayed work that gets queued to system_wq.
The close is seen to happen when kernel returns to user space following
the unbind.

- perf framework will access the pmu object after the last event has
been destroyed. The drm device is refcounted in the init and destroy
hooks, so this causes a use after free if we are releasing the drm
device reference after unbind has been called. To work around this, we
take an extra reference in the unbind path and release it using a
delayed work in the destroy patch. The delayed work is queued to
system_wq.

Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab

Opens:
- Synchronization may be needed between i915_pmu_unregister and
i915_pmu_event_destroy to avoid any races.

- If unbind and bind happen from the same process the event fd is closed
after bind completes. This means that the cleanup would not happen
until bind completes. In this case, i915 loads fine, but pmu
registration fails with an error that the sysfs entries are already
present. There is no solution feasible here. Since this is not a fatal
error (reloading i915 works fine) and the usual case is to have bind and
unbind in separate processes, there is no intention to solve this.

Other solutions/aspects tried:
- Call perf_event_disable() followed by perf_event_release_kernel() in
the unbind path to clean up the events. This still causes issues when
user closes the fd since perf_event_release_kernel() is called again and
fails requiring reboot.

- Close all event fds in unbind and wait for the close to complete by
checking if list is empty. This wait does not work since the files
are actually closed when unbind returns to user space.

Testing:
- New IGT tests have been added for this and are run with KASAN and
  kmemleak enabled.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_pmu.h | 15 ++++++
 2 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 4d2a289f848a..2f365c7f5db7 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -4,6 +4,8 @@
  * Copyright © 2017-2018 Intel Corporation
  */
 
+#include <linux/fdtable.h>
+#include <linux/fs.h>
 #include <linux/pm_runtime.h>
 
 #include "gt/intel_engine.h"
@@ -573,9 +575,21 @@ static void i915_pmu_event_destroy(struct perf_event *event)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+	struct i915_event *e = event->pmu_private;
 
 	drm_WARN_ON(&i915->drm, event->parent);
 
+	if (e) {
+		event->pmu_private = NULL;
+		list_del(&e->link);
+		kfree(e);
+	}
+
+	if (i915->pmu.closed && list_empty(&i915->pmu.initialized_events)) {
+		pmu_teardown(&i915->pmu);
+		mod_delayed_work(system_wq, &i915->pmu.work, 50);
+	}
+
 	drm_dev_put(&i915->drm);
 }
 
@@ -684,6 +698,14 @@ static int i915_pmu_event_init(struct perf_event *event)
 		return ret;
 
 	if (!event->parent) {
+		struct i915_event *e = kzalloc(sizeof(*e), GFP_KERNEL);
+
+		if (!e)
+			return -ENOMEM;
+
+		e->event = event;
+		list_add(&e->link, &pmu->initialized_events);
+		event->pmu_private = e;
 		drm_dev_get(&i915->drm);
 		event->destroy = i915_pmu_event_destroy;
 	}
@@ -1256,6 +1278,14 @@ void i915_pmu_exit(void)
 		cpuhp_remove_multi_state(cpuhp_slot);
 }
 
+static void i915_pmu_release(struct work_struct *work)
+{
+	struct i915_pmu *pmu = container_of(work, typeof(*pmu), work.work);
+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+
+	drm_dev_put(&i915->drm);
+}
+
 void i915_pmu_register(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
@@ -1313,6 +1343,9 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	pmu->base.read		= i915_pmu_event_read;
 	pmu->base.event_idx	= i915_pmu_event_event_idx;
 
+	INIT_LIST_HEAD(&pmu->initialized_events);
+	INIT_DELAYED_WORK(&pmu->work, i915_pmu_release);
+
 	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
 	if (ret)
 		goto err_groups;
@@ -1337,6 +1370,64 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	drm_notice(&i915->drm, "Failed to register PMU!\n");
 }
 
+/* Ref: close_fd() */
+static unsigned int __open_files(struct fdtable *fdt)
+{
+	unsigned int size = fdt->max_fds;
+	unsigned int i;
+
+	for (i = size / BITS_PER_LONG; i > 0; ) {
+		if (fdt->open_fds[--i])
+			break;
+	}
+	return (i + 1) * BITS_PER_LONG;
+}
+
+static void close_event_file(struct perf_event *event)
+{
+	unsigned int max_open_fds, fd;
+	struct files_struct *files;
+	struct task_struct *task;
+	struct fdtable *fdt;
+
+	task = event->owner;
+	if (!task)
+		return;
+
+	files = task->files;
+	if (!files)
+		return;
+
+	spin_lock(&files->file_lock);
+	fdt = files_fdtable(files);
+	max_open_fds = __open_files(fdt);
+	for (fd = 0; fd < max_open_fds; fd++) {
+		struct file *file = fdt->fd[fd];
+
+		if (!file || file->private_data != event)
+			continue;
+
+		rcu_assign_pointer(fdt->fd[fd], NULL);
+		__clear_bit(fd, fdt->open_fds);
+		__clear_bit(fd / BITS_PER_LONG, fdt->full_fds_bits);
+		if (fd < files->next_fd)
+			files->next_fd = fd;
+		filp_close(file, files);
+		break;
+	}
+	spin_unlock(&files->file_lock);
+}
+
+static void cleanup_events(struct i915_pmu *pmu)
+{
+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	struct i915_event *e, *tmp;
+
+	drm_dev_get(&i915->drm);
+	list_for_each_entry_safe(e, tmp, &pmu->initialized_events, link)
+		close_event_file(e->event);
+}
+
 void i915_pmu_unregister(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
@@ -1354,5 +1445,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 
 	hrtimer_cancel(&pmu->timer);
 
-	pmu_teardown(pmu);
+	if (list_empty(&pmu->initialized_events))
+		pmu_teardown(pmu);
+	else
+		cleanup_events(pmu);
 }
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 41af038c3738..6f62e820f34d 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -55,6 +55,11 @@ struct i915_pmu_sample {
 	u64 cur;
 };
 
+struct i915_event {
+	struct perf_event *event;
+	struct list_head link;
+};
+
 struct i915_pmu {
 	/**
 	 * @cpuhp: Struct used for CPU hotplug handling.
@@ -152,6 +157,16 @@ struct i915_pmu {
 	 * @pmu_attr: Memory block holding device attributes.
 	 */
 	void *pmu_attr;
+
+	/**
+	 * @initialized_events: List of initialized events
+	 */
+	struct list_head initialized_events;
+
+	/**
+	 * @work: worker to delay release of drm device reference 
+	 */
+	struct delayed_work work;
 };
 
 #ifdef CONFIG_PERF_EVENTS
-- 
2.34.1

