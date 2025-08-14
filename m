Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BAB25C0F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 08:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1627910E7F5;
	Thu, 14 Aug 2025 06:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="NT81lk+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6A610E7F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Aug 2025 06:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9PJCwaDEg66kUEEtyla4kYO9MX1zI3i0cR8hxtfYRyY=; b=NT81lk+ZvytXCPk+TLe+hJCk4F
 SRXfTEWhPade9EfkFGD9AJNarx/nhA6uLRo3DY5NSn81dwdnqGnW+0cd8QOQWYJztnm858IPaHoR2
 QhU0L+Lo/AwdbSHWeDnS1nk8hu5zGFiOaHfR7Zo1WZxEb1ty4S74zsmaLCZC7K/ElEvmstgcNzYP4
 Jyt0ee5E/SR9IeswL8lI//6PwNfzYwBKKV3mzHvIFI2jBQ3teJxgt4eyUCJyNOlUtQjQCoFrFPYUu
 7BPbmfzRpkaGncMZ+/BbGWjHomcNlIoFUKXWQka8pkJcy2m1H8NjOv38t34XDeWgjvdDAdvACRwJS
 DnBkDBjw==;
Received: from [84.66.36.92] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1umRgZ-00E06o-Ri
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Aug 2025 08:43:39 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI] drm/i915/active: Use try_cmpxchg64() in __active_lookup()
Date: Thu, 14 Aug 2025 07:43:26 +0100
Message-ID: <20250814064326.95519-1-tvrtko.ursulin@igalia.com>
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

From: Uros Bizjak <ubizjak@gmail.com>

Replace this pattern in __active_lookup():

    cmpxchg64(*ptr, old, new) == old

... with the simpler and faster:

    try_cmpxchg64(*ptr, &old, new)

The x86 CMPXCHG instruction returns success in the ZF flag,
so this change saves a compare after the CMPXCHG.

The patch also improves the explanation of what the code really
does. cmpxchg64() will *succeed* for the winner of the race and
try_cmpxchg64() nicely documents this fact.

No functional change intended.

Signed-off-by: Uros Bizjak <ubizjak@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
---
 drivers/gpu/drm/i915/i915_active.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 0dbc4e289300..6b0c1162505a 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -257,10 +257,9 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
 		 * claimed the cache and we know that is does not match our
 		 * idx. If, and only if, the timeline is currently zero is it
 		 * worth competing to claim it atomically for ourselves (for
-		 * only the winner of that race will cmpxchg return the old
-		 * value of 0).
+		 * only the winner of that race will cmpxchg succeed).
 		 */
-		if (!cached && !cmpxchg64(&it->timeline, 0, idx))
+		if (!cached && try_cmpxchg64(&it->timeline, &cached, idx))
 			return it;
 	}
 
-- 
2.48.0

