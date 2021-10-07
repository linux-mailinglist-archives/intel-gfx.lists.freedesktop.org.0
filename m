Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91542425F8D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 23:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A426F4F6;
	Thu,  7 Oct 2021 21:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 067EA6F4F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 21:50:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289872186"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289872186"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 14:50:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="478734249"
Received: from unknown (HELO szeng-NUC.jf.intel.com) ([10.165.21.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 14:50:50 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Oct 2021 15:55:53 -0700
Message-Id: <20211007225553.571381-1-oak.zeng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Check function return in
 live_nop_switch
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

Fail this test earlier if i915_request_await_dma_fence
fails.

Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b32f7fed2d9c..c0b85e861014 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -82,7 +82,14 @@ static int live_nop_switch(void *arg)
 				goto out_file;
 			}
 			if (rq) {
-				i915_request_await_dma_fence(this, &rq->fence);
+				if (i915_request_await_dma_fence(this,
+					&rq->fence)) {
+					pr_err("Failed to populate %ld contexts\n", n);
+					intel_gt_set_wedged(to_gt(i915));
+					i915_request_put(rq);
+					err = -EIO;
+					goto out_file;
+				}
 				i915_request_put(rq);
 			}
 			rq = i915_request_get(this);
-- 
2.25.1

