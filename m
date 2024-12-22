Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD32A0433C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE9D510EAF1;
	Tue,  7 Jan 2025 14:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=treblig.org header.i=@treblig.org header.b="QZi3wpmO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF9210E1F8;
 Sun, 22 Dec 2024 18:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=cGpiET8V2SEgGZKlBxnY7fyLDHhWkwvfc6UTNuy732w=; b=QZi3wpmOjV64klKR
 h6zD71dFK8W7Sd5DbOsBXyel/Qgn7ocFw5C9lgyJHGoRVoZlZqzZC8BQtCTSvPW0SymDaERuXVcSx
 CZNMDlNYPjpisNwQXg900XItTCu8beRAncYsF6BbLk/oDUSX29/J+zeEX/qosqTBnXkl4+be9790S
 qXZMtT3Qvm8PP7wkq376DGJba4iIayDv4mL1SomRt1ZKUEO6+MiEJ8I6KLgSb4HmETQQBo+maHWTS
 b19bz9YUiNuFUckEWoM2blKZgLryyi9VhVRT79SpqNdvStJl9m+ASnEO7Ss69OcH1ANFiXDThavPx
 UD46bMdE0NjSAR/d2A==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tPQMJ-006mf6-2L;
 Sun, 22 Dec 2024 18:07:19 +0000
From: linux@treblig.org
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net,
 intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>
Subject: [PATCH] drm/i915: Remove unused intel_ring_cacheline_align
Date: Sun, 22 Dec 2024 18:07:16 +0000
Message-ID: <20241222180716.244537-2-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241222180716.244537-1-linux@treblig.org>
References: <20241222180716.244537-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

