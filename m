Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA03421248
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 17:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371696EA1B;
	Mon,  4 Oct 2021 15:07:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FAC6EA13;
 Mon,  4 Oct 2021 15:07:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="222904826"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="222904826"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 07:37:10 -0700
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="622303603"
Received: from shearne-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.208.122])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 07:37:08 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
Date: Mon,  4 Oct 2021 15:36:43 +0100
Message-Id: <20211004143650.699120-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211004143650.699120-1-tvrtko.ursulin@linux.intel.com>
References: <20211004143650.699120-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/8] sched: Add nice value change notifier
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Implement a simple notifier chain via which interested parties can track
when process nice value changes. Simple because it is global so each user
would have to track which tasks it is interested in.

First intended use case are GPU drivers using task nice as priority hint
when scheduling GPU contexts belonging to respective clients.

To use register_user_nice_notifier and unregister_user_nice_notifier
functions are provided and new nice value and pointer to task_struct
being modified passed to the callbacks.

v2:
 * Move the notifier chain outside task_rq_lock. (Peter)

Opens:
 * Security. Would some sort of a  per process mechanism be better and
   feasible?
     x Peter Zijlstra thinks it may be passable now that it is outside
       core scheduler locks.
 * Put it all behind kconfig to be selected by interested drivers?

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Juri Lelli <juri.lelli@redhat.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
---
 include/linux/sched.h |  5 +++++
 kernel/sched/core.c   | 37 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index c1a927ddec64..1fcec88e5dbc 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -2309,4 +2309,9 @@ static inline void sched_core_free(struct task_struct *tsk) { }
 static inline void sched_core_fork(struct task_struct *p) { }
 #endif
 
+struct notifier_block;
+
+extern int register_user_nice_notifier(struct notifier_block *);
+extern int unregister_user_nice_notifier(struct notifier_block *);
+
 #endif
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 1bba4128a3e6..fc90b603bb6f 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -6864,10 +6864,42 @@ static inline int rt_effective_prio(struct task_struct *p, int prio)
 }
 #endif
 
+ATOMIC_NOTIFIER_HEAD(user_nice_notifier_list);
+
+/**
+ * register_user_nice_notifier - Register function to be called when task nice changes
+ * @nb: Info about notifier function to be called
+ *
+ * Registers a function with the list of functions to be called when task nice
+ * value changes.
+ *
+ * Currently always returns zero, as atomic_notifier_chain_register()
+ * always returns zero.
+ */
+int register_user_nice_notifier(struct notifier_block *nb)
+{
+	return atomic_notifier_chain_register(&user_nice_notifier_list, nb);
+}
+EXPORT_SYMBOL(register_user_nice_notifier);
+
+/**
+ * unregister_user_nice_notifier - Unregister previously registered user nice notifier
+ * @nb: Hook to be unregistered
+ *
+ * Unregisters a previously registered user nice notifier function.
+ *
+ * Returns zero on success, or %-ENOENT on failure.
+ */
+int unregister_user_nice_notifier(struct notifier_block *nb)
+{
+	return atomic_notifier_chain_unregister(&user_nice_notifier_list, nb);
+}
+EXPORT_SYMBOL(unregister_user_nice_notifier);
+
 void set_user_nice(struct task_struct *p, long nice)
 {
 	bool queued, running;
-	int old_prio;
+	int old_prio, ret;
 	struct rq_flags rf;
 	struct rq *rq;
 
@@ -6915,6 +6947,9 @@ void set_user_nice(struct task_struct *p, long nice)
 
 out_unlock:
 	task_rq_unlock(rq, p, &rf);
+
+	ret = atomic_notifier_call_chain(&user_nice_notifier_list, nice, p);
+	WARN_ON_ONCE(ret != NOTIFY_DONE);
 }
 EXPORT_SYMBOL(set_user_nice);
 
-- 
2.30.2

