Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95278B3F98D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 11:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8D610E607;
	Tue,  2 Sep 2025 09:04:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="ZR4avsZ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AEC710E607
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Sep 2025 09:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GyJeKvVveQgxcJ3mAEVffDP7d63foIklqxRmJY6F+1Q=; b=ZR4avsZ90arrk8cn2EChjY1IMu
 XDj/Slm8GhgiPMT1ZGc1FWefI3p87DI82byg3fmVPNIYIEYnqs0QuiGv/X3wjmLcF0zN+Y8mf7l2W
 MKqsFY8dqV/roiHhAgAdSRj5YZGiHXJpdcELAN/fbQt0UlT1Ussbj0sFQ62Zj2CCU+GNcQ3I9lCyW
 t9/qUy08tlXPlN4qBRln0bkyECq2J3aWRNWUftiwkrNrs79E3L657kTVQevJmKv/NjzH9JyGYMrja
 2riQ7sHwperb9Kxzt2tC8lR+kmuEIM+vi8JctY3DN6lACNzH+YsC34phVuZaC/StOoCdqADgWd9Z9
 ZPCvw0vQ==;
Received: from [84.66.36.92] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1utMwP-005clb-9Y
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Sep 2025 11:04:37 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI] drm/i915: Replace kmalloc() + copy_from_user() with memdup_user()
Date: Tue,  2 Sep 2025 10:04:36 +0100
Message-ID: <20250902090436.42806-1-tvrtko.ursulin@igalia.com>
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

From: Thorsten Blum <thorsten.blum@linux.dev>

Replace kmalloc() followed by copy_from_user() with memdup_user() to
improve and simplify set_context_image(), and to silence the following
Coccinelle/coccicheck warning reported by memdup_user.cocci:

  WARNING opportunity for memdup_user

No functional changes intended.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 15835952352e..ed6599694835 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2158,18 +2158,12 @@ static int set_context_image(struct i915_gem_context *ctx,
 		goto out_ce;
 	}
 
-	state = kmalloc(ce->engine->context_size, GFP_KERNEL);
-	if (!state) {
-		ret = -ENOMEM;
+	state = memdup_user(u64_to_user_ptr(user.image), ce->engine->context_size);
+	if (IS_ERR(state)) {
+		ret = PTR_ERR(state);
 		goto out_ce;
 	}
 
-	if (copy_from_user(state, u64_to_user_ptr(user.image),
-			   ce->engine->context_size)) {
-		ret = -EFAULT;
-		goto out_state;
-	}
-
 	shmem_state = shmem_create_from_data(ce->engine->name,
 					     state, ce->engine->context_size);
 	if (IS_ERR(shmem_state)) {
-- 
2.48.0

