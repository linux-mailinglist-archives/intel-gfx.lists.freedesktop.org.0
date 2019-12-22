Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E3C128FE3
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 21:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B52E6E0B6;
	Sun, 22 Dec 2019 20:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5340A89A1E
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 20:55:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19665803-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 20:55:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 20:54:58 +0000
Message-Id: <20191222205459.2012189-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: Avoid cross-contanimation of
 intel_wakeref.work lockdep
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

Separate out the lockclass for the embedded work for intel_wakeref to
avoid cross-contamination between different wakerefs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/intel_wakeref.c | 6 ++++--
 drivers/gpu/drm/i915/intel_wakeref.h | 8 +++++---
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 59aa1b6f1827..aca661cf872f 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -95,16 +95,18 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct intel_runtime_pm *rpm,
 			  const struct intel_wakeref_ops *ops,
-			  struct lock_class_key *key)
+			  struct lock_class_key *mkey,
+			  struct lock_class_key *wkey)
 {
 	wf->rpm = rpm;
 	wf->ops = ops;
 
-	__mutex_init(&wf->mutex, "wakeref", key);
+	__mutex_init(&wf->mutex, "wakeref", mkey);
 	atomic_set(&wf->count, 0);
 	wf->wakeref = 0;
 
 	INIT_WORK(&wf->work, __intel_wakeref_put_work);
+	lockdep_init_map(&wf->work.lockdep_map, "wakeref.work", wkey, 0);
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 8d945db94b7a..a6baac08cc85 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -47,11 +47,13 @@ struct intel_wakeref {
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct intel_runtime_pm *rpm,
 			  const struct intel_wakeref_ops *ops,
-			  struct lock_class_key *key);
+			  struct lock_class_key *mkey,
+			  struct lock_class_key *wkey);
 #define intel_wakeref_init(wf, rpm, ops) do {				\
-	static struct lock_class_key __key;				\
+	static struct lock_class_key __mkey;				\
+	static struct lock_class_key __wkey;				\
 									\
-	__intel_wakeref_init((wf), (rpm), (ops), &__key);		\
+	__intel_wakeref_init((wf), (rpm), (ops), &__mkey, &__wkey);	\
 } while (0)
 
 int __intel_wakeref_get_first(struct intel_wakeref *wf);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
