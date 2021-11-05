Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4CF446570
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 16:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B55E6EB79;
	Fri,  5 Nov 2021 15:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D676EB74
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 15:05:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231756613"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="231756613"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 08:01:56 -0700
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="730548416"
Received: from inechita-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.167])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 08:01:55 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Nov 2021 16:01:46 +0100
Message-Id: <20211105150146.834052-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
References: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] HAX: drm/i915/selftest: Temporarily
 avoid tainting the kernel on engine reset failure
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

The taint aborts the CI test runner. Skip the affected GEM_TRACE_DUMP()
that taints the kernel to allow CI to proceed.

There has been a suggestion to also remove the intel_gt_set_wedged() and
return -EINTR to allow also skipped subtests to proceed but that might and
would probably clash with the GuC global reset.

v2:
- Comment out GEM_TRACE_DUMP() also active_request_put().
v3:
- Condition the workaround on DG1.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index e5ad4d5a91c0..7fd31dd33e87 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -887,7 +887,9 @@ static int active_request_put(struct i915_request *rq)
 			  rq->engine->name,
 			  rq->fence.context,
 			  rq->fence.seqno);
-		GEM_TRACE_DUMP();
+		/* Temporary workaround to allow CI to proceed */
+		if (!IS_DG1(rq->context->engine->i915))
+			GEM_TRACE_DUMP();
 
 		intel_gt_set_wedged(rq->engine->gt);
 		err = -EIO;
@@ -1115,7 +1117,12 @@ static int __igt_reset_engines(struct intel_gt *gt,
 					       rq->fence.seqno, rq->context->guc_id.id);
 					i915_request_put(rq);
 
-					GEM_TRACE_DUMP();
+					/*
+					 * Temporary workaround to allow CI
+					 * to proceed.
+					 */
+					if (!IS_DG1(gt->i915))
+						GEM_TRACE_DUMP();
 					intel_gt_set_wedged(gt);
 					err = -EIO;
 					goto restore;
-- 
2.31.1

