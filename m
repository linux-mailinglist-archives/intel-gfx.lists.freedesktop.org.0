Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1611B7CACD6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBEE10E212;
	Mon, 16 Oct 2023 15:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DE110E206
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697468546; x=1729004546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kH71c7G79c47Sqh7bzx0cMksFEIF8JepRxBiIrAt+fk=;
 b=cuV6PiZnKIE3jrtnIjE4sPTsYMb+Gr7g3QIL8U2eaiVpTf4oDumSH6Ni
 O18Rzl+iaF/svJgINmE26bGVHEAXS3bFVmGEtHXddG9DZ6hNR+Rc1hnAk
 eO+Zmfto9Ii7ie/H55kHNTy3LOOrYQk3JuZT82PLiBWKEByvCmePFawbt
 OYA3zV1IsLRDoj4bLaMe3JcCS1kSf6eXM8EAxMyYhMTa9nmARQm07xyYm
 JG5zkgQQx4LxMRzTOwFxG9BYqsj1nIY0XfoqE8oxk8J7ozc1cidA8vMdm
 GVGElcMw9NLubi8UNWcn8y09gUTlIoT6DV54iRSutXmT7pFM50Ms+vMRY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="389408250"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="389408250"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759429291"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="759429291"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:54 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 07:51:08 -0700
Message-Id: <20231016145109.2843611-7-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v16 6/7] drm/i915/gt: Increase sleep in gt_tlb
 selftest sanitycheck
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the gt_tlb live selftest, when operating on the GSC engine,
increase the timeout from 10 ms to 200 ms because the GSC
engine is a bit slower than the rest.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 7e41f69fc818f..00b872b6380b1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -136,8 +136,15 @@ pte_tlbinv(struct intel_context *ce,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	/* Short sleep to sanitycheck the batch is spinning before we begin */
-	msleep(10);
+	/*
+	 * Short sleep to sanitycheck the batch is spinning before we begin.
+	 * FIXME: Why is GSC so slow?
+	 */
+	if (ce->engine->class == OTHER_CLASS)
+		msleep(200);
+	else
+		msleep(10);
+
 	if (va == vb) {
 		if (!i915_request_completed(rq)) {
 			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
-- 
2.25.1

