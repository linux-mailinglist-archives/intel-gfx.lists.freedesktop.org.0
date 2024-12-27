Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367449FD3DF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37AF10E3B8;
	Fri, 27 Dec 2024 11:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="M8ZkaiPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC1310E3C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 11:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cGpiET8V2SEgGZKlBxnY7fyLDHhWkwvfc6UTNuy732w=; b=M8ZkaiPtUsMTyw5soxV3orsdVm
 doIyFHzc2mJmZPv64rbDnIb2JabpqQY8MxE/SWaTeNXW4dBvSpYYktde7gvfD7T5HVU/jg8DqcSvg
 KV82IQCKfrj00z5JLHrPvulb54sTv1s9/f+eH1xuKQXIif0bHRGfoMgYHGoKZVvF9gRryRBtMwI7v
 AozYMJY+0vzGECCPT8OOGOBBKQRDfYGFm4ePyo9K5GnwObT9fPLTMAV1o9X+8RlZEKvguLkfQDwBv
 iw+DsZVhvLd1/lN3iYo4dK1n/JjfghsvFcNA+DW25WOXK7tucsMj3KOmXUr7+hIJdtgVrrvcR4cXw
 xF3jRjGg==;
Received: from [90.241.98.187] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1tR8fE-008EUF-9h
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 12:37:56 +0100
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Remove unused intel_ring_cacheline_align
Date: Fri, 27 Dec 2024 11:37:54 +0000
Message-ID: <20241227113754.25871-3-tursulin@igalia.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241227113754.25871-1-tursulin@igalia.com>
References: <20241227113754.25871-1-tursulin@igalia.com>
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The last use of intel_ring_cacheline_align() was removed in 2017 by
commit afa8ce5b3080 ("drm/i915: Nuke legacy flip queueing code")

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/gpu/drm/i915/gt/intel_ring.c | 24 ------------------------
 drivers/gpu/drm/i915/gt/intel_ring.h |  1 -
 2 files changed, 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 59da4b7bd262..b74d9205c0f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -308,30 +308,6 @@ u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
 	return cs;
 }
 
-/* Align the ring tail to a cacheline boundary */
-int intel_ring_cacheline_align(struct i915_request *rq)
-{
-	int num_dwords;
-	void *cs;
-
-	num_dwords = (rq->ring->emit & (CACHELINE_BYTES - 1)) / sizeof(u32);
-	if (num_dwords == 0)
-		return 0;
-
-	num_dwords = CACHELINE_DWORDS - num_dwords;
-	GEM_BUG_ON(num_dwords & 1);
-
-	cs = intel_ring_begin(rq, num_dwords);
-	if (IS_ERR(cs))
-		return PTR_ERR(cs);
-
-	memset64(cs, (u64)MI_NOOP << 32 | MI_NOOP, num_dwords / 2);
-	intel_ring_advance(rq, cs + num_dwords);
-
-	GEM_BUG_ON(rq->ring->emit & (CACHELINE_BYTES - 1));
-	return 0;
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_ring.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index 1b32dadfb8c3..64b322e25f36 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -16,7 +16,6 @@ struct intel_ring *
 intel_engine_create_ring(struct intel_engine_cs *engine, int size);
 
 u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords);
-int intel_ring_cacheline_align(struct i915_request *rq);
 
 unsigned int intel_ring_update_space(struct intel_ring *ring);
 
-- 
2.47.1

