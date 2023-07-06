Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C6F74A0AE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 17:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD87910E41E;
	Thu,  6 Jul 2023 15:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C6810E41E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 15:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688656599; x=1720192599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ki3YrkIEsA/xx7d/WkvWfpBVEu/pXSZH1e5Hx/usyvE=;
 b=Cb+s1O1bWGnfj9ENsi5ys6vmw7AiQvsfCa9kMKYepYfzAgB2XdS7PKSi
 jM20B9KdbA/I55IIBvDcungMmyAyeCBXkKakA3pL7wNZ5G2lS8exP+UHJ
 DTQ+R9iGxkY9eRBV+QMRVWAj3DkTcpXAPwoe3qAsv+wN1pe7R7in5BJte
 O7irLA8Uu3e6vRqz7qDJ5R7QTpgwv9RGq6LUUrSPaGszy/ZMCniErZwJI
 rj3RtftqieY1IK+YiuGmbqfHJx61A4urs8vRZC9q0b5GOI0VQXiTLqCwq
 Rypr8oPrZzgryLwYupmlS5pc6Dc8gHQjtuzV+/KO9hdL0FPV/K12kkRK1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="366207222"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366207222"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 08:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="1050128313"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="1050128313"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 08:16:36 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jul 2023 17:16:11 +0200
Message-Id: <20230706151611.1024576-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705160848.988464-1-andrzej.hajda@intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine before
 removing virtual GuC engine
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GuC virtual engines can be removed before request removal. On the other
side driver expects rq->engine to be a valid pointer for a whole life of
request. Setting rq->engine to an always valid engine should solve
the issue.

The patch fixes bug detected by KASAN with following signature:
i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
BUG: KASAN: slab-use-after-free in i915_fence_release+0x2a2/0x2f0 [i915]
Read of size 4 at addr ffff88813ffda6e8 by task kworker/u32:10/157
...
Allocated by task 1184:
...
guc_create_virtual+0x4d/0x1160 [i915]
i915_gem_create_context+0x11ee/0x18c0 [i915]
...
Freed by task 151:
...
intel_guc_deregister_done_process_msg+0x324/0x6d0 [i915]
...

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d246..2c877ea5eda6f0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
 static void remove_from_context(struct i915_request *rq)
 {
 	struct intel_context *ce = request_to_scheduling_context(rq);
+	struct intel_engine_cs *engine;
+	intel_engine_mask_t tmp;
 
 	GEM_BUG_ON(intel_context_is_child(ce));
 
@@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
 
 	atomic_dec(&ce->guc_id.ref);
 	i915_request_notify_execute_cb_imm(rq);
+
+	/*
+	 * GuC virtual engine can disappear after this call, so let's assign
+	 * something valid, as driver expects this to be always valid pointer.
+	 */
+	for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
+		rq->engine = engine;
+		break;
+	}
 }
 
 static const struct intel_context_ops guc_context_ops = {
-- 
2.34.1

