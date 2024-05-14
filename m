Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E428C5866
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 16:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4DEB10E8A3;
	Tue, 14 May 2024 14:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="PSRbay4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2830710E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 14:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BBde5bazlhLJQWQKzgVneE1HHq5ceRvGxWBLiYM9Kw8=; b=PSRbay4MrGnRdK4tQiAzAR4zfh
 if0863ebnZuz4lkeFTPC1vj64o/yjnlheRm+wLN9/FgpYJVPjZkR61nWyr0R4kH8bB9sPT/V8GfOk
 zcEfp2kFQeu8FdlCYdjc+gm2vAtcD/XI2Rn56l7+r3tIKcrLPfMi9ri1KMJ0TKEsUo+yZkVfso6dA
 oqdlfK/3xrinh89xPcHn06hOv2X9UY+oq8XP47evsoGY6xXCSUvxUKA9AhmwXhEVlcRDZcLJAmn2s
 hUKRYs/A0IpVFt4RJaKAauL0GTNkVBCQk/ZGbwSwSJGuXedt1NNz2lBMO803cqwjrvFORA5CocJTE
 Gzb4u88A==;
Received: from [84.69.19.168] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1s6td1-00815G-3n; Tue, 14 May 2024 16:59:43 +0200
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Carlos Santa <carlos.santa@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@igalia.com>
Subject: [CI 1/2] drm/i915: Shadow default engine context image in the context
Date: Tue, 14 May 2024 15:59:38 +0100
Message-ID: <20240514145939.87427-1-tursulin@igalia.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

To enable adding override of the default engine context image let us start
shadowing the per engine state in the context.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Carlos Santa <carlos.santa@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tvrtko Ursulin <tursulin@igalia.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h   | 2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 7 ++++---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 7 ++++---
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ed95a7b57cbb..6ae8abfeccdb 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -99,6 +99,8 @@ struct intel_context {
 	struct i915_address_space *vm;
 	struct i915_gem_context __rcu *gem_context;
 
+	struct file *default_state;
+
 	/*
 	 * @signal_lock protects the list of requests that need signaling,
 	 * @signals. While there are any requests that need signaling,
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b387146ede98..d4ffb352403c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1017,9 +1017,8 @@ void lrc_init_state(struct intel_context *ce,
 
 	set_redzone(state, engine);
 
-	if (engine->default_state) {
-		shmem_read(engine->default_state, 0,
-			   state, engine->context_size);
+	if (ce->default_state) {
+		shmem_read(ce->default_state, 0, state, engine->context_size);
 		__set_bit(CONTEXT_VALID_BIT, &ce->flags);
 		inhibit = false;
 	}
@@ -1131,6 +1130,8 @@ int lrc_alloc(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	GEM_BUG_ON(ce->state);
 
+	ce->default_state = engine->default_state;
+
 	vma = __lrc_alloc_state(ce, engine);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 92085ffd23de..8625e88e785f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -474,8 +474,7 @@ static int ring_context_init_default_state(struct intel_context *ce,
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
-	shmem_read(ce->engine->default_state, 0,
-		   vaddr, ce->engine->context_size);
+	shmem_read(ce->default_state, 0, vaddr, ce->engine->context_size);
 
 	i915_gem_object_flush_map(obj);
 	__i915_gem_object_release_map(obj);
@@ -491,7 +490,7 @@ static int ring_context_pre_pin(struct intel_context *ce,
 	struct i915_address_space *vm;
 	int err = 0;
 
-	if (ce->engine->default_state &&
+	if (ce->default_state &&
 	    !test_bit(CONTEXT_VALID_BIT, &ce->flags)) {
 		err = ring_context_init_default_state(ce, ww);
 		if (err)
@@ -570,6 +569,8 @@ static int ring_context_alloc(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
 
+	ce->default_state = engine->default_state;
+
 	/* One ringbuffer to rule them all */
 	GEM_BUG_ON(!engine->legacy.ring);
 	ce->ring = engine->legacy.ring;
-- 
2.44.0

