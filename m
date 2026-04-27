Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP3vLgJ772kmBwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 17:04:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4360E474DA2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 17:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8088710E7AA;
	Mon, 27 Apr 2026 15:04:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7ry9Pgn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7939710E25D;
 Mon, 27 Apr 2026 15:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777302266; x=1808838266;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0BhzXUUIU7HN7as12xXj3YX45vmTFz5zx1OZ1jxI/e0=;
 b=h7ry9PgnRpoNPsQ7fpmD44XyLsSifgDaG4K5efjMmKkY7n98EIjKS5O/
 6Qt5QtsLtXJb9RM1+9KQ4iB93Gt6gga23btIwdroayjYccLSZpH8VBNuf
 cDMTcUUTU2iMNi6842dbshzMKDra4dM0jPsD8g50mY31XnUvFGpkE2eCw
 Bdq2gXrFmx+BvAWJN29czGoZrRSTTH8VtUv9BKasHJJD7BOMKJGZb72Wi
 Gr+kEmkEo5vIKQrmtqORQuo2h8FVla/wX3TWrEqOYDl0OFrWgyagxyPE/
 /evO728tgYzYSdy91xxSlIqKq887/bx1psq/Z5yc73c7H7HVAttDx+LkE w==;
X-CSE-ConnectionGUID: 43Bi8Fs5SeaRHQTkZ/vjRA==
X-CSE-MsgGUID: n+0zBwfDRlGBEYWTVAzCwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81800127"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="81800127"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 08:04:26 -0700
X-CSE-ConnectionGUID: XnNgI77QRJGHZUhMTC29lg==
X-CSE-MsgGUID: Z65SQDR9RHOsq/koKG9fuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="227142233"
Received: from guc-pnp-dev-box-1.fm.intel.com ([10.1.39.24])
 by fmviesa009.fm.intel.com with ESMTP; 27 Apr 2026 08:04:24 -0700
From: Zhanjun Dong <zhanjun.dong@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: matthew.brost@intel.com,
	Zhanjun Dong <zhanjun.dong@intel.com>
Subject: [PATCH 1/1] drm/i915/guc: Avoid tasklet_kill hang after submission
 deadlock
Date: Mon, 27 Apr 2026 11:04:23 -0400
Message-Id: <20260427150423.642543-1-zhanjun.dong@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 4360E474DA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhanjun.dong@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MAILSPIKE_FAIL(0.00)[131.252.210.177:query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

A wedged GuC submission path can leave the sched_engine tasklet
disabled with TASKLET_STATE_SCHED still set. In that state
tasklet_kill() waits forever for the scheduled bit to clear, but
softirq processing cannot drain the tasklet because it is still
disabled.

Keep the existing deadlock semantics in guc_dequeue_one_context() by
continuing to disable submission with callback = NULL and
tasklet_disable_nosync().

Fix teardown in guc_sched_engine_destroy() by installing a safe nop
callback, re-enabling the tasklet until its disable count reaches
zero, and only then calling tasklet_kill(). That lets softirq clear
the scheduled state and avoids the uninterruptible wait.

Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
Signed-off-by: Zhanjun Dong <zhanjun.dong@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 788e59cdfac9..d793196223e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4614,6 +4614,10 @@ static inline void guc_default_irqs(struct intel_engine_cs *engine)
 	intel_engine_set_irq_handler(engine, cs_irq_handler);
 }
 
+static void guc_submission_tasklet_nop(struct tasklet_struct *t)
+{
+}
+
 static void guc_sched_engine_destroy(struct kref *kref)
 {
 	struct i915_sched_engine *sched_engine =
@@ -4621,7 +4625,20 @@ static void guc_sched_engine_destroy(struct kref *kref)
 	struct intel_guc *guc = sched_engine->private_data;
 
 	guc->sched_engine = NULL;
-	tasklet_kill(&sched_engine->tasklet); /* flush the callback */
+
+	/*
+	 * The tasklet may have been left disabled (with TASKLET_STATE_SCHED
+	 * still set) if the GT was wedged; intel_guc_submission_reset_finish
+	 * skips enable_submission() in that case. tasklet_kill() waits for
+	 * SCHED to clear, but softirq only clears it when the tasklet is
+	 * enabled (count == 0) and can actually run.
+	 * Force-enable and install a safe no-op callback so tasklet_kill()
+	 * can make progress.
+	 */
+	sched_engine->tasklet.callback = guc_submission_tasklet_nop;
+	while (!__tasklet_is_enabled(&sched_engine->tasklet))
+		tasklet_enable(&sched_engine->tasklet);
+	tasklet_kill(&sched_engine->tasklet);
 	kfree(sched_engine);
 }
 
-- 
2.34.1

