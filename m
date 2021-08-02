Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5023F3DDCB5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D426E09C;
	Mon,  2 Aug 2021 15:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828DE6E040
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 15:48:39 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id b7so25137295edu.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Aug 2021 08:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VqZRQ+c8SxDVpAU3bLWG1pPTG4VXpxPAuTx45jDOor0=;
 b=Zqu1ltir0Dkaau/5sC7rh83VXxC9fR6cbRE/K+59DlSJhToaHDuWQJsYquqqDl4zE6
 b0cfocV9EQO1dZTkPwRjYQzub6z8DasRiNExiMDzH3G1df1D8Sm860MnTPuTRXdnhXTk
 vApZV6dj1kWhj/pt57q8yZC2CDRC4DGRFlsfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqZRQ+c8SxDVpAU3bLWG1pPTG4VXpxPAuTx45jDOor0=;
 b=BQNDnJAx+NA/W+sUuffwsoXkT0zSZjnFSPYE62/Y2AOSAll7tmj/r7Ecy2eDbPAZRd
 cGo6cvawcV7jUNIb6SBy5yot0dS89uU7Vu7/5vJlkmpx0Woo4K18GrxXeuoSwNhAspNl
 Qg1arcmm++FEXjK1m6WNiosOKo+fS2S0prMZySHtP4zQK7IlFeaownM+fLoFfQFr9Qui
 VWTFUlkrI72fcCkjtzDgX+9euHKuuzZ/T4Wsd/JPKwJ5A8dg4neJBqotU8QtNp3PJktX
 XtcGU+/kE9Fx5PFAp6gEe5FpIztfJtH9KGrBGavaTQmsnAdkanZQ6E2vvGKg9U3o2Pnq
 NqKg==
X-Gm-Message-State: AOAM532dkZn2mCQHeqo857V46ArVA0pr/1fZ+xxqDl9TpZ1WqlCDZxNh
 u+9lgRMRa0V7A51XCIgE8Abb4+E4ptzH8Q==
X-Google-Smtp-Source: ABdhPJwj25z0W56BiUvxc5ST1S/fnirdC0YGIJkXR2IW2y2pPsIbftLzTOpfXYrvCXPEZ6A2wysk2A==
X-Received: by 2002:a05:6402:1396:: with SMTP id
 b22mr20159747edv.380.1627919318089; 
 Mon, 02 Aug 2021 08:48:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m20sm5064020edv.67.2021.08.02.08.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 08:48:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Mon,  2 Aug 2021 17:47:58 +0200
Message-Id: <20210802154806.3710472-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
References: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Drop code to handle set-vm races
 from execbuf
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

Changing the vm from a finalized gem ctx is no longer possible, which
means we don't have to check for that anymore.

I was pondering whether to keep the check as a WARN_ON, but things go
boom real bad real fast if the vm of a vma is wrong. Plus we'd need to
also get the ggtt vm for !full-ppgtt platforms. Ditching it all seemed
like a better idea.

References: ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 538d9d2e52b7..69e47b97d786 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -775,11 +775,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 	/* Check that the context hasn't been closed in the meantime */
 	err = -EINTR;
 	if (!mutex_lock_interruptible(&ctx->lut_mutex)) {
-		struct i915_address_space *vm = rcu_access_pointer(ctx->vm);
-
-		if (unlikely(vm && vma->vm != vm))
-			err = -EAGAIN; /* user racing with ctx set-vm */
-		else if (likely(!i915_gem_context_is_closed(ctx)))
+		if (likely(!i915_gem_context_is_closed(ctx)))
 			err = radix_tree_insert(&ctx->handles_vma, handle, vma);
 		else
 			err = -ENOENT;
-- 
2.32.0

