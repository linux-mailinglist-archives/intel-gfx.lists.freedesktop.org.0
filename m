Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E17724957
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 18:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2AD10E385;
	Tue,  6 Jun 2023 16:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0268010E37B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 16:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686069604; x=1717605604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ht7/fN+/RaaJDQ1aapZ6PMdIlLaZy8unEu/HNmIET2Y=;
 b=UpwEo689TMjqNWJsyYQVJa7g5hntshmc9e1mrx4QNz745m0pfTSrJnQv
 jMU3Z+AoPMYosnIQvfEhwPAsPhwK5QdZGuKhTDwEfqedMvKlFOQUw/PNR
 9L6cv5GY7o89G57fH41pRQcoQbMx+F58nn1Pb0TRkXmq3c2zBENsJStnd
 ZaDJxt+FIkt+7/eDCjT1TcVXhR/7/WiRZoTVWr8KCTBlpStQLKkS9kdiD
 hcJNJoisA5TdufuRnYdVuxEhjzEbYtm8WQeVGFqRNGR/TyRTiz9SxCcc/
 DLfHjT9qysoahLbUk908kxgKbu2NKcxhlWrRdbrYWb6DIBX/+idAOCT+P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="355588616"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="355588616"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:40:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709134990"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709134990"
Received: from tburszty-mobl2.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.244])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:40:01 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 19:39:42 +0300
Message-Id: <20230606163942.330052-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230606163942.330052-1-luciano.coelho@intel.com>
References: <20230606163942.330052-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/selftests: add local workqueue
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
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

