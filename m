Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63FA1F79EE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 16:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177F66E97B;
	Fri, 12 Jun 2020 14:44:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1FA76E97B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 14:44:57 +0000 (UTC)
IronPort-SDR: dkwvZre3NWRiJTGugO2ufRKJ6FuyEnFVuZcWq8OMsm2YRnDroRqDE9KJrjpFMUOBex+x5QX3vD
 EwHbXvGtrrtA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 07:44:56 -0700
IronPort-SDR: xdv2n0BCZt9G8BXHAgxWG/nRrRyOkCcryzvIo7qTXO6Dm7bjT6guF17hO7fdK0NGefGGl0jbd+
 QT5+DOnemNRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="315146150"
Received: from yravenna-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.202.53])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2020 07:44:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 15:44:51 +0100
Message-Id: <20200612144451.9081-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Move test flush to outside
 vm->mutex
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As per our locking rules it is not allowed to wait on requests while
holding locks. In this case we were trying to idle the GPU while holding
the vm->mutex.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_evict.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 028baae9631f..67f4497c8224 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -498,8 +498,6 @@ static int igt_evict_contexts(void *arg)
 
 	mutex_lock(&ggtt->vm.mutex);
 out_locked:
-	if (igt_flush_test(i915))
-		err = -EIO;
 	while (reserved) {
 		struct reserved *next = reserved->next;
 
@@ -513,6 +511,9 @@ static int igt_evict_contexts(void *arg)
 	mutex_unlock(&ggtt->vm.mutex);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
+	if (igt_flush_test(i915))
+		err = -EIO;
+
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
