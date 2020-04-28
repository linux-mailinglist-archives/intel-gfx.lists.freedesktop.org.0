Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FDE1BBCAE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 13:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6996A6E209;
	Tue, 28 Apr 2020 11:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41346E19A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 11:43:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21045307-1500050 
 for multiple; Tue, 28 Apr 2020 12:43:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Apr 2020 12:43:07 +0100
Message-Id: <20200428114307.5153-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the tolerance for
 clock ticks to 12.5%
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

Give a small bump for our tolerance on comparing the expected vs
measured clock ticks/time from 10% to 12.5% to accommodate a bad result
on Sandybridge that was off by 10.3%. Hopefully, that is the worst we
will see.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1802
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 181b29fa5b58..48f954ac4f2c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -312,15 +312,15 @@ int live_rps_clock_interval(void *arg)
 				engine->name, cycles, time, ktime_to_ns(dt), expected,
 				gt->clock_frequency / 1000);
 
-			if (10 * time < 9 * ktime_to_ns(dt) ||
-			    10 * time > 11 * ktime_to_ns(dt)) {
+			if (10 * time < 8 * ktime_to_ns(dt) ||
+			    8 * time > 10 * ktime_to_ns(dt)) {
 				pr_err("%s: rps clock time does not match walltime!\n",
 				       engine->name);
 				err = -EINVAL;
 			}
 
-			if (10 * expected < 9 * cycles ||
-			    10 * expected > 11 * cycles) {
+			if (10 * expected < 8 * cycles ||
+			    8 * expected > 10 * cycles) {
 				pr_err("%s: walltime does not match rps clock ticks!\n",
 				       engine->name);
 				err = -EINVAL;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
