Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l6rEE8N6OWr9uAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3E96B1BBE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=RDcaYZ+8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E94F10E840;
	Mon, 22 Jun 2026 18:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F3610E837;
 Mon, 22 Jun 2026 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151853;
 bh=zgWc6CdMfk4NiQZZCTWOUXHX/knUgl/37EPaPM3oaDE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RDcaYZ+8d110BlrGAzLbYTAR3FE//p82wClWJkiJmE/6/WVFhaaYlt1DFsKan01Rj
 5GTARyKv2+lAFbWM2AITGrfqbDxrcHdPGSedGloROoW6ox+OGMUu4h2i3WgdPD3RD1
 e/9NbVY3f48nOWEhllvQ9KW52UGtbDSAzuCi46XG9XkuT9A0Ce7NXvtmIUrF5Slw9x
 z4T4LBx4Hk6YkncV9Hn8+rQ3/emGBzRu57k/pVdUc6T70GacoohUIlJxfneqnY3ET2
 6vgAnkosLG1nuqnKAZ6CH+eGwGJxk0/XsMdfaTAH2rScy9psNiW19ixsh9LR1F+vNO
 7C8ELkuuOVC3A==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 30/30] drm/i915/guc: Make timestamp.lock a raw spinlock
Date: Mon, 22 Jun 2026 20:10:43 +0200
Message-ID: <20260622181044.39335-31-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
References: <20260622181044.39335-1-dev@lankhorst.se>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF3E96B1BBE

Because the timestamp.lock is called from the perf lock,
it has to be converted to a raw spinlock too.

This fixes another splat with a similar trace
to the previous commit in perf_pmu.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 +++++++++----------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index b25fa8f4dc4bd..7f8feb0a9b97f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -252,7 +252,7 @@ struct intel_guc {
 		 * @timestamp.lock: Lock protecting the below fields and
 		 * the engine stats.
 		 */
-		spinlock_t lock;
+		raw_spinlock_t lock;
 
 		/**
 		 * @timestamp.gt_stamp: 64-bit extended value of the GT
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 788e59cdfac9b..a3aee2daade7d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1330,7 +1330,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	bool in_reset;
 	intel_wakeref_t wakeref;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 
 	/*
 	 * If a reset happened, we risk reading partially updated engine
@@ -1378,7 +1378,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	if (total > stats->total)
 		stats->total = total;
 
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 
 	return ns_to_ktime(stats->total);
 }
@@ -1442,7 +1442,7 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 	unsigned long flags;
 	ktime_t unused;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 
 	guc_update_pm_timestamp(guc, &unused);
 	for_each_engine(engine, gt, id) {
@@ -1463,7 +1463,7 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 		stats->running = 0;
 	}
 
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static void __update_guc_busyness_running_state(struct intel_guc *guc)
@@ -1473,10 +1473,10 @@ static void __update_guc_busyness_running_state(struct intel_guc *guc)
 	enum intel_engine_id id;
 	unsigned long flags;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 	for_each_engine(engine, gt, id)
 		engine->stats.guc.running = false;
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static void __update_guc_busyness_stats(struct intel_guc *guc)
@@ -1489,13 +1489,13 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 
 	guc->timestamp.last_stat_jiffies = jiffies;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 
 	guc_update_pm_timestamp(guc, &unused);
 	for_each_engine(engine, gt, id)
 		guc_update_engine_gt_clks(engine);
 
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static void __guc_context_update_stats(struct intel_context *ce)
@@ -1503,9 +1503,9 @@ static void __guc_context_update_stats(struct intel_context *ce)
 	struct intel_guc *guc = ce_to_guc(ce);
 	unsigned long flags;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 	lrc_update_runtime(ce);
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static void guc_context_update_stats(struct intel_context *ce)
@@ -1661,9 +1661,9 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 	if (!guc_submission_initialized(guc))
 		return;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	raw_spin_lock_irqsave(&guc->timestamp.lock, flags);
 	guc_update_pm_timestamp(guc, &unused);
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	raw_spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 	guc_enable_busyness_worker(guc);
 }
 
@@ -4865,7 +4865,7 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
 	INIT_WORK(&guc->submission_state.reset_fail_worker,
 		  reset_fail_worker_func);
 
-	spin_lock_init(&guc->timestamp.lock);
+	raw_spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 
 	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
-- 
2.53.0

