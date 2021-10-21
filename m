Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEA1436D2F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 23:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00446E4CB;
	Thu, 21 Oct 2021 21:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC6F6E4CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 21:58:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="292615913"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="292615913"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 14:58:50 -0700
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="495368185"
Received: from szeng-nuc.jf.intel.com ([10.165.21.212])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 14:58:50 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris@chris-wilson.co.uk
Date: Thu, 21 Oct 2021 16:04:09 -0700
Message-Id: <20211021230409.938844-1-oak.zeng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: print exact error code
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

Print the exact error code in test live_nop_switch,
instead of -EIO. If the test fails, we will know
the exact reason.

Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b32f7fed2d9c..5b26cf5f58ad 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -88,11 +88,12 @@ static int live_nop_switch(void *arg)
 			rq = i915_request_get(this);
 			i915_request_add(this);
 		}
-		if (i915_request_wait(rq, 0, HZ) < 0) {
-			pr_err("Failed to populated %d contexts\n", nctx);
+		err = i915_request_wait(rq, 0, HZ);
+		if (err < 0) {
+			pr_err("Failed to populated %d contexts with error %d\n",
+				nctx, err);
 			intel_gt_set_wedged(&i915->gt);
 			i915_request_put(rq);
-			err = -EIO;
 			goto out_file;
 		}
 		i915_request_put(rq);
-- 
2.25.1

