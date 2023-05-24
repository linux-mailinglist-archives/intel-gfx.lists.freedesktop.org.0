Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FF270F1D1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 11:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F94A10E5BF;
	Wed, 24 May 2023 09:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7591310E5BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684919362; x=1716455362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wC6ursTuNTRiiIqEaWAllf7wwUeb0Gq/ZXgyBrmQzH0=;
 b=XK2pDa+5ErvH97nL2hj86OQaW4INb8IP5KZI3m4hYxCA1mT4jLL6O9ur
 abfDiiOgRhjwT829KTtLUo0YnFVKF3w/bojFPwAwNjLEF/yDpKJGQa+mD
 AcV4DyErnCpZJdO81EOP4krU90Z2V0f7Z592qC2XmW6Onff5fPi8zi5Fi
 qS5JDs9bT+nWmjgflaSdwTmQiFivZfvsl9habzm16xLtLswFWq1reAiZT
 QYZjBdEZHpr/Bii3i04HL+Bqd6TRbkCPx/L/EHNQw/BzPZHGpurwRieUZ
 nxHCK3nBn5dskF9iLfyG1PH1C/i1A09PtTU5n9jfHtdsztxJ1o3OyKcxh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="439862999"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="439862999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681821457"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="681821457"
Received: from johnbyrn-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.249.39.102])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:05:48 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 12:05:21 +0300
Message-Id: <20230524090521.596399-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524090521.596399-1-luciano.coelho@intel.com>
References: <20230524090521.596399-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/selftests: add local workqueue
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of using a global workqueue for the SW fence selftest,
allocate a separate one temporarily only while running the test.

Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
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

