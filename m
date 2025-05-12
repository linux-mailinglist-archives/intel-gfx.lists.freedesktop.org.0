Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEEBAB3071
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 09:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1C710E2E8;
	Mon, 12 May 2025 07:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="YurClAh2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6A410E2E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 07:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NZZYL+ssKUV+Jp3A/XUtqO8evf4R3Ww//f+Q4n536OQ=; b=YurClAh2zb5VggXs4wva7h3ERI
 D5u8BuL622V9l6/8cPcfUyFZf0O975kCDQ+b7y11nT5qymRl6whYznnYms/4l1/Qe6UW/gRht+LpX
 BhGQL5S3iyzpwyRq3k6x8KbBkAE8GJNZXd5fIb7/2YTnETIFKxKkf0kJTWPp0Hg75WGQldXpvnA/X
 nA4DeV0CMq65CEM5WEeNLIqNGi2DKRSMu9xNWJ83qlw1HvyAVLShTPzGvsUX6h/Wajgrxa3ChL+cM
 aOqZmexDExI9ghZkXLskIrnpXXB61RUh3XiP9EGNb9zclzcHpAUSowd34wJEBdWQ+i1E1pErx1ztS
 q+D2yg2g==;
Received: from [81.79.92.254] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1uENNq-006wlM-HA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 09:20:47 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI] drm/i915: Use provided dma_fence_is_chain
Date: Mon, 12 May 2025 08:20:47 +0100
Message-ID: <20250512072047.56851-1-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.48.0
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

Replace open-coded helper with the subsystem one.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 7127e90c1a8f..991666fd9f85 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -106,11 +106,6 @@ static void fence_set_priority(struct dma_fence *fence,
 	rcu_read_unlock();
 }
 
-static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
-{
-	return fence->ops == &dma_fence_chain_ops;
-}
-
 void i915_gem_fence_wait_priority(struct dma_fence *fence,
 				  const struct i915_sched_attr *attr)
 {
@@ -126,7 +121,7 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
 
 		for (i = 0; i < array->num_fences; i++)
 			fence_set_priority(array->fences[i], attr);
-	} else if (__dma_fence_is_chain(fence)) {
+	} else if (dma_fence_is_chain(fence)) {
 		struct dma_fence *iter;
 
 		/* The chain is ordered; if we boost the last, we boost all */
-- 
2.48.0

