Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5963B131185
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 12:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03D56E279;
	Mon,  6 Jan 2020 11:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC4E6E26C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 11:42:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19783446-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jan 2020 11:42:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jan 2020 11:42:34 +0000
Message-Id: <20200106114234.2529613-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
References: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915/gt: Use memset_p to clear the ports
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

Put memset_p to use to clear the array of pointers used for tracking the
ELSP.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 28c05e7a1510..9813a977bb9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1744,6 +1744,11 @@ static void set_preempt_timeout(struct intel_engine_cs *engine)
 		     active_preempt_timeout(engine));
 }
 
+static inline void clear_ports(struct i915_request **ports, int count)
+{
+	memset_p((void **)ports, NULL, count);
+}
+
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -2104,10 +2109,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			goto skip_submit;
 		}
+		clear_ports(port + 1, last_port - port);
 
-		memset(port + 1, 0, (last_port - port) * sizeof(*port));
 		execlists_submit_ports(engine);
-
 		set_preempt_timeout(engine);
 	} else {
 skip_submit:
@@ -2122,13 +2126,14 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 
 	for (port = execlists->pending; *port; port++)
 		execlists_schedule_out(*port);
-	memset(execlists->pending, 0, sizeof(execlists->pending));
+	clear_ports(execlists->pending, ARRAY_SIZE(execlists->pending));
 
 	/* Mark the end of active before we overwrite *active */
 	for (port = xchg(&execlists->active, execlists->pending); *port; port++)
 		execlists_schedule_out(*port);
-	WRITE_ONCE(execlists->active,
-		   memset(execlists->inflight, 0, sizeof(execlists->inflight)));
+	clear_ports(execlists->inflight, ARRAY_SIZE(execlists->inflight));
+
+	WRITE_ONCE(execlists->active, execlists->inflight);
 }
 
 static inline void
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
