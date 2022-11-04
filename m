Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92DA6195C4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 13:04:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EABC10E0A9;
	Fri,  4 Nov 2022 12:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FF510E0A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 12:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667563445; x=1699099445;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EcIaNWf0sN2thqMF0CJgFwd+MatEmV3YG3M+VrFq/sE=;
 b=hUAccSrxkfs8liCXgtG57ODkZt6i2y+OckYRgDiYaQPeZgjRmbDPuhOV
 OMj2OlamkuGpKCyIYtObMuISLk1Owupwmsb2fMfT/vx5v7yX8SbMnSNzc
 4LWG6jNS2dvDDJCSQeznsxiiLIc8N843nCWe0PLoJrg0tc4Zjc4zJgCLr
 kSS/6YaNTD4UJgJULj3uu9BH2XEHAEuhmDNFKTatGS4KsllEE+KRv860m
 9eZwzcR51IYXFh7Cef+PmJsNngp2Kgzo3zgjaFGCX7lF6G8BA1lwqoflx
 tSpLDLoxDqE1gGRuK6joWSqwXZsNHuJhKnY+vIdKMoy5QKIq2z27ooVub w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="289667367"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="289667367"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 05:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="637562330"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="637562330"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 04 Nov 2022 05:04:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Nov 2022 14:04:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Nov 2022 14:04:01 +0200
Message-Id: <20221104120402.5677-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 1/2] Revert "freezer,
 sched: Rewrite core freezer logic fix"
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This reverts commit f3387d5883ad92e9a54306fa3dff97d4f0581d78.
---
 kernel/sched/core.c | 49 ++++++++++++++++-----------------------------
 1 file changed, 17 insertions(+), 32 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index f519f44cd4c7..cb2aa2b54c7a 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4200,37 +4200,6 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
 	return success;
 }
 
-static bool __task_needs_rq_lock(struct task_struct *p)
-{
-	unsigned int state = READ_ONCE(p->__state);
-
-	/*
-	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
-	 * the task is blocked. Make sure to check @state since ttwu() can drop
-	 * locks at the end, see ttwu_queue_wakelist().
-	 */
-	if (state == TASK_RUNNING || state == TASK_WAKING)
-		return true;
-
-	/*
-	 * Ensure we load p->on_rq after p->__state, otherwise it would be
-	 * possible to, falsely, observe p->on_rq == 0.
-	 *
-	 * See try_to_wake_up() for a longer comment.
-	 */
-	smp_rmb();
-	if (p->on_rq)
-		return true;
-
-#ifdef CONFIG_SMP
-	smp_rmb();
-	if (p->on_cpu)
-		return true;
-#endif
-
-	return false;
-}
-
 /**
  * task_call_func - Invoke a function on task in fixed state
  * @p: Process for which the function is to be invoked, can be @current.
@@ -4248,12 +4217,28 @@ static bool __task_needs_rq_lock(struct task_struct *p)
 int task_call_func(struct task_struct *p, task_call_f func, void *arg)
 {
 	struct rq *rq = NULL;
+	unsigned int state;
 	struct rq_flags rf;
 	int ret;
 
 	raw_spin_lock_irqsave(&p->pi_lock, rf.flags);
 
-	if (__task_needs_rq_lock(p))
+	state = READ_ONCE(p->__state);
+
+	/*
+	 * Ensure we load p->on_rq after p->__state, otherwise it would be
+	 * possible to, falsely, observe p->on_rq == 0.
+	 *
+	 * See try_to_wake_up() for a longer comment.
+	 */
+	smp_rmb();
+
+	/*
+	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
+	 * the task is blocked. Make sure to check @state since ttwu() can drop
+	 * locks at the end, see ttwu_queue_wakelist().
+	 */
+	if (state == TASK_RUNNING || state == TASK_WAKING || p->on_rq)
 		rq = __task_rq_lock(p, &rf);
 
 	/*
-- 
2.37.4

