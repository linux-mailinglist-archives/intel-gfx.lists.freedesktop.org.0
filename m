Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7166129AE3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20D18993B;
	Mon, 23 Dec 2019 20:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296168993B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 20:44:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19676351-1500050 
 for multiple; Mon, 23 Dec 2019 20:44:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 20:44:10 +0000
Message-Id: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add spaces before compound
 GEM_TRACE
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

Add a space between the prefixed format and the users format so that the
join are not mistakenly combined into one long word.

Fixes: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h | 2 +-
 drivers/gpu/drm/i915/i915_request.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 1d4a1b1357cf..0f5ae4ff3b10 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -19,7 +19,7 @@
 
 #define CE_TRACE(ce, fmt, ...) do {					\
 	const struct intel_context *ce__ = (ce);			\
-	ENGINE_TRACE(ce__->engine, "context:%llx" fmt,			\
+	ENGINE_TRACE(ce__->engine, "context:%llx " fmt,			\
 		     ce__->timeline->fence_context,			\
 		     ##__VA_ARGS__);					\
 } while (0)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 565322640378..9784421a3b4d 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -51,7 +51,7 @@ struct i915_capture_list {
 
 #define RQ_TRACE(rq, fmt, ...) do {					\
 	const struct i915_request *rq__ = (rq);				\
-	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d" fmt,	\
+	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d " fmt,	\
 		     rq__->fence.context, rq__->fence.seqno,		\
 		     hwsp_seqno(rq__), ##__VA_ARGS__);			\
 } while (0)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
