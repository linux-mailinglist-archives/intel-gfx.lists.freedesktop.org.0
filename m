Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 440937C03ED
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6F910E3CA;
	Tue, 10 Oct 2023 18:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7CF410E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964246; x=1728500246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aya2YuM5tbecZPP1LDqLzQtR+v0iUIvsUP0HUO5HGSk=;
 b=nn5hUfhN+z02VDwQ/O2ALy10PdGZZ3bnakKMuY/871TRGJjKVh90Y4kr
 L3D2ChugWQ7Jkl+HO9u5pfo/N/4K3lPhRuCZNfs9lM1uLIuF6vzbbDqkE
 RCDebwKOFuYqS3BrD/RVZb3yJrmJ4cTv7nmSD3voW4KWyNKIB5CAbFiD5
 7+555X/JOHAB0W38ipemxjlWFOrqFqSCdTbXhHGRU9wdq85goXemT0fQj
 CGVD7j0PW4/hUrV53uOdJcV6ptiad8OXl0w1UfaD+9HXbGd4HrHegMi7L
 cBOTCM0pz0cCDaV5ctPgsACARqAQFoyBybB4IMKi2/ZpfiN0818MgU2mU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830088"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830088"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802295"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802295"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:25 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:37 -0700
Message-Id: <20231010184641.2119129-7-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 06/10] drm/i915/gt: Increase sleep in gt_tlb
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the gt_tlb live selftest, when operating on the GSC engine,
increase the timeout from 10 ms to 200 ms because the GSC
engine is a bit slower than the rest.

Additionally, increase the default timeout from 10 ms to 20 ms
because msleep < 20ms can sleep for up to 20ms.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 7e41f69fc818f..24beb94aa7a37 100644
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
+		msleep(20);
+
 	if (va == vb) {
 		if (!i915_request_completed(rq)) {
 			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
-- 
2.25.1

