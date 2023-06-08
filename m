Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5D728173
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 15:36:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DA010E5B5;
	Thu,  8 Jun 2023 13:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88AA10E5B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686231368; x=1717767368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTDUoAf1ezP+vvIaji0Us5Ui5nLBKAsrXbbWLSAQ/v0=;
 b=EUP7gfP2Y7Cch27MNhI5nXeksQWnAA7jhyyGdit9ZyGkdMgxhZCNLtCo
 4CU1Bvso0nCqjvWV3N9b1200Fj5nyYOdq1nANnxtZ1KxmWP9sLIUXk933
 K5zkZd337YDJJErgv/KSseNnZEmRiyp4vzy86BVg9Frsh3ECZz4lN7Ni2
 gNvf2LX1tFmbz9SnrIz+8tYWatFtSPxreXTeBmnVR+d3LeMC0d2iebUOW
 XBOh6cnV7EsYNqcWUTPhoXQnaPe6q1A8CahyrWwzqWZfocwRiowdp5vZM
 MADFuBDbPpbBphz5o5kMdOBYEjlkZ+nOqr0zRnqWgobiWqY5dtTGxmMJ7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354795639"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="354795639"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 06:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="779859593"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="779859593"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 06:36:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 16:35:46 +0300
Message-Id: <313f4a713053c2b4896ced5b0e9ff456eb85fe57.1686231190.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1686231190.git.jani.nikula@intel.com>
References: <cover.1686231190.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915/selftests: add local workqueue
 for SW fence selftest
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
Cc: jani.nikula@intel.com, Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 luciano.coelho@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luca Coelho <luciano.coelho@intel.com>

Instead of using a global workqueue for the SW fence selftest,
allocate a separate one temporarily only while running the test.

Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_sw_fence.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
index daa985e5a19b..8f5ce71fa453 100644
--- a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
@@ -523,12 +523,19 @@ static void task_ipc(struct work_struct *work)
 static int test_ipc(void *arg)
 {
 	struct task_ipc ipc;
+	struct workqueue_struct *wq;
 	int ret = 0;
 
+	wq = alloc_workqueue("i1915-selftest", 0, 0);
+	if (wq == NULL)
+		return -ENOMEM;
+
 	/* Test use of i915_sw_fence as an interprocess signaling mechanism */
 	ipc.in = alloc_fence();
-	if (!ipc.in)
-		return -ENOMEM;
+	if (!ipc.in) {
+		ret = -ENOMEM;
+		goto err_work;
+	}
 	ipc.out = alloc_fence();
 	if (!ipc.out) {
 		ret = -ENOMEM;
@@ -540,7 +547,7 @@ static int test_ipc(void *arg)
 
 	ipc.value = 0;
 	INIT_WORK_ONSTACK(&ipc.work, task_ipc);
-	schedule_work(&ipc.work);
+	queue_work(wq, &ipc.work);
 
 	wait_for_completion(&ipc.started);
 
@@ -563,6 +570,9 @@ static int test_ipc(void *arg)
 	free_fence(ipc.out);
 err_in:
 	free_fence(ipc.in);
+err_work:
+	destroy_workqueue(wq);
+
 	return ret;
 }
 
-- 
2.39.2

