Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 006AC49B378
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 13:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA6A10F38E;
	Tue, 25 Jan 2022 12:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C860B10F386;
 Tue, 25 Jan 2022 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643112173; x=1674648173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nhdLC/SGDVUHX70mCFFv083iZPnFNfG5oX4MnzzuuYs=;
 b=JkiJdWnfxKlk/Cw9jYuIjx1FlYT9l3FnwuFfGib/XmowTA7krVH7RZHI
 BqHnN26r5SVqp1W8pr6HaCIIomy22h5R68sdOWFufqLMNOpchypA0zWVc
 6iaAxfQUaG6YGaxMBJPEwtbTkpX2NcfmBclyD7T2FmBIzTwf7p1VPQbSz
 7nc0i8Yu8b7GgBXRODNHb40HjQvHIpMt31RtsKarEKWac15B+1wUGN6fN
 xyNy1ykaL/ycS3NcXX5Gk/bvoteQSm8sE/PFfzeak8BTxiZ5b/C0VIQGs
 KJ6xiuF+WukSBysrfrvl1uFfvODkRk+dD2srXrLEEVILrUUBXAfC01SsE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="332639046"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="332639046"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 04:02:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="563012555"
Received: from pkhedeka-mobl2.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.239.95])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 04:02:51 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 12:02:45 +0000
Message-Id: <20220125120245.2925308-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix error handling in
 guc_steal_ids
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ensure we drop the reference to the last rq, otherwise we are leaking
the context etc. Also don't zero the previous valid context.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
index d3327b802b76..b170f6b6e729 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
@@ -190,7 +190,6 @@ static int intel_guc_steal_guc_ids(void *arg)
 		ce[++context_index] = intel_context_create(engine);
 		if (IS_ERR(ce[context_index])) {
 			ret = PTR_ERR(ce[context_index--]);
-			ce[context_index] = NULL;
 			pr_err("Failed to create context: %d\n", ret);
 			goto err_spin_rq;
 		}
@@ -226,6 +225,7 @@ static int intel_guc_steal_guc_ids(void *arg)
 	/* Wait for last request */
 	ret = i915_request_wait(last, 0, HZ * 30);
 	i915_request_put(last);
+	last = NULL;
 	if (ret < 0) {
 		pr_err("Last request failed to complete: %d\n", ret);
 		goto err_spin_rq;
@@ -271,6 +271,8 @@ static int intel_guc_steal_guc_ids(void *arg)
 		igt_spinner_fini(&spin);
 		intel_gt_wait_for_idle(gt, HZ * 30);
 	}
+	if (last)
+		i915_request_put(last);
 err_contexts:
 	for (; context_index >= 0 && ce[context_index]; --context_index)
 		intel_context_put(ce[context_index]);
-- 
2.34.1

