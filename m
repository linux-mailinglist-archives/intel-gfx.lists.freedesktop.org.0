Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFE1FBE13
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 20:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8326E1B7;
	Tue, 16 Jun 2020 18:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A136E186
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 18:31:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21517249-1500050 
 for multiple; Tue, 16 Jun 2020 19:31:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 19:31:39 +0100
Message-Id: <20200616183139.4061-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark up inline getters as taking a
 const i915_request
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

Since these inline routines only return from the i915_request to return
the desired pointer (after checking the preconditions for acquiring said
pointer), they can be const.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 118ab6650d1f..590762820761 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -561,7 +561,7 @@ static inline void i915_request_clear_hold(struct i915_request *rq)
 }
 
 static inline struct intel_timeline *
-i915_request_timeline(struct i915_request *rq)
+i915_request_timeline(const struct i915_request *rq)
 {
 	/* Valid only while the request is being constructed (or retired). */
 	return rcu_dereference_protected(rq->timeline,
@@ -569,14 +569,14 @@ i915_request_timeline(struct i915_request *rq)
 }
 
 static inline struct i915_gem_context *
-i915_request_gem_context(struct i915_request *rq)
+i915_request_gem_context(const struct i915_request *rq)
 {
 	/* Valid only while the request is being constructed (or retired). */
 	return rcu_dereference_protected(rq->context->gem_context, true);
 }
 
 static inline struct intel_timeline *
-i915_request_active_timeline(struct i915_request *rq)
+i915_request_active_timeline(const struct i915_request *rq)
 {
 	/*
 	 * When in use during submission, we are protected by a guarantee that
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
