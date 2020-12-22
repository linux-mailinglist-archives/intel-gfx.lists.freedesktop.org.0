Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02CE2E09C2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 12:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A436E858;
	Tue, 22 Dec 2020 11:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC136E858
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 11:35:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23401251-1500050 
 for multiple; Tue, 22 Dec 2020 11:35:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 11:35:36 +0000
Message-Id: <20201222113536.3775-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201222113536.3775-1-chris@chris-wilson.co.uk>
References: <20201222113536.3775-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftest: Be paranoid and flush
 the tasklet before checking status
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When waiting for the submit, before checking the status of the request,
kick the tasklet to make sure we are processing the submission. This
speeds up submission if we are using any tasklet suppression for
secondary requests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_execlists.c | 3 +++
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 2d0d7e17f042..fa51cf6d840a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -43,6 +43,9 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   struct i915_request *rq,
 			   unsigned long timeout)
 {
+	/* Ignore our own attempts to suppress excess tasklets */
+	tasklet_hi_schedule(&engine->execlists.tasklet);
+
 	timeout += jiffies;
 	do {
 		bool done = time_after(jiffies, timeout);
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6b069bb1ddcc..d55421f6a250 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -48,6 +48,9 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   struct i915_request *rq,
 			   unsigned long timeout)
 {
+	/* Ignore our own attempts to suppress excess tasklets */
+	tasklet_hi_schedule(&engine->execlists.tasklet);
+
 	timeout += jiffies;
 	do {
 		bool done = time_after(jiffies, timeout);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
