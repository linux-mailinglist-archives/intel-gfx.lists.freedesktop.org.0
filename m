Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393587C9040
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Oct 2023 00:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467B610E642;
	Fri, 13 Oct 2023 22:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FBD10E072
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697235959; x=1728771959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kH71c7G79c47Sqh7bzx0cMksFEIF8JepRxBiIrAt+fk=;
 b=PJZl/RLLuLVywTvfssyGmac8HFPQj4BCOKX52yfpKdyAzSow5FfxXqUU
 BBZ8OX3gkwl/dcmI+OuGZc7DyslyhSzdCuFtu0Tr37/oftqztlyF9Q5Bc
 mlyzdFe7rACqRA+9SNq2RDm/besyEPlJmczkH880SHb6QOMBcyjJ5RavL
 QNXK0urYki0fXvlLnQ+5heWEIVMtxiZLYAljB4X0gdPP5liiU7v46DrlI
 Z40gZ7DPyKN6kO4N5rhiNCF7dXGGC/R1IKAG8AjVOV9HO5c1wiZpBcOeV
 3z8ubcCFuk08iyJEsoxxgOTa8JYebpf+ZfPeNJUYH0LEbyS0KFsNAXEXe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="385115689"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="385115689"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 15:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="845641480"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="845641480"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 15:25:04 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 15:14:18 -0700
Message-Id: <20231013221419.2710833-7-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
References: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 6/7] drm/i915/gt: Increase sleep in gt_tlb
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

