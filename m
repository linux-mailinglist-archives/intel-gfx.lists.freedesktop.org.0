Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AE21D0A2B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 09:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB526E996;
	Wed, 13 May 2020 07:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CC16E995
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 07:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21182456-1500050 
 for multiple; Wed, 13 May 2020 08:48:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 08:48:01 +0100
Message-Id: <20200513074809.18194-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/24] drm/i915/selftests: Always call the
 provided engine->emit_init_breadcrumb
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

While this does not appear to fix any issues, the backend itself knows
when it wants to emit a breadcrumb, so let it make the final call.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_perf.c   | 3 +--
 drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 5608fab98d5d..ca0c9dbab713 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -221,8 +221,7 @@ static int live_noa_delay(void *arg)
 		goto out;
 	}
 
-	if (rq->engine->emit_init_breadcrumb &&
-	    i915_request_timeline(rq)->has_initial_breadcrumb) {
+	if (rq->engine->emit_init_breadcrumb) {
 		err = rq->engine->emit_init_breadcrumb(rq);
 		if (err) {
 			i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 9ad4ab088466..e35ba5f9e73f 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -169,8 +169,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	intel_gt_chipset_flush(engine->gt);
 
-	if (engine->emit_init_breadcrumb &&
-	    i915_request_timeline(rq)->has_initial_breadcrumb) {
+	if (engine->emit_init_breadcrumb) {
 		err = engine->emit_init_breadcrumb(rq);
 		if (err)
 			goto cancel_rq;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
