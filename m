Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398843E12C7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C716E58A;
	Thu,  5 Aug 2021 10:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8F96E578
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:39:23 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id y7so7676527eda.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OLapkgrouu6XaESfbyHy/JJUr4UWMSd5aiOH2DnBwAQ=;
 b=i3HfHAt6gfn64+1IFp4gkrvswt1i8DLZbxP6q6k92eb/GxminxlXHfCRMp9tAB2JJ4
 VhkTM+DvW6wvVocXxr3dQpSoqc405u0aJpOek5slm0jLcdpOtOzdI4ANy5kYYpqyrVro
 pDc5BQuFwuwAmWCTK6O01BE3rfHzxGuY/G8gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OLapkgrouu6XaESfbyHy/JJUr4UWMSd5aiOH2DnBwAQ=;
 b=pUjt7l7yjY5YxTxdPvAUA4nCLwj2AtZeja7mquCfYpEKMs6rzW9XvMZHTn8Yt02D4+
 lGzt48FxHxLB71Ht8d4p1UQl75rL0M4CDNTEjUEjAb7wrsPrOE4Cqyo+AEZTCAsibSa9
 EEquuaOQYOLvtSYcuz9UZp7l/mkB2ae+1+KN/JW8JHsEGHCX1rLHPX/GNgHuuVaoAqtB
 36KQ0sdxAPvKzLAp0l/jJktWi2xAEsWCPdH25LnfBnCuq+QQcrJMooyhLuiFFo4BZT85
 lQx1G9SyY4pl7qW8LGzIVHlVQq/ByJC4GscWFruKNlt/MTnR1Oe0EED91X6ifrp6z4pe
 t0kw==
X-Gm-Message-State: AOAM533axJyDfPQWSAa8i+1cxIPJXzbz4+ZyKxIENwogoPU0I6FLNl8z
 fzHdiUOGYp992pQXpQwusQR/bJhxNIZgCA==
X-Google-Smtp-Source: ABdhPJy/GIQOHNW6BgdmX0ZCmvMfKmwikHL5WmLhv9NaOjd5nTQtyOlfeafRVSb/neW8HcP2YnBN+Q==
X-Received: by 2002:a05:6402:18c1:: with SMTP id
 x1mr5555717edy.145.1628159962443; 
 Thu, 05 Aug 2021 03:39:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm1593727ejt.11.2021.08.05.03.39.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:39:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  5 Aug 2021 12:39:09 +0200
Message-Id: <20210805103916.860853-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
References: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/8] drm/i915: Drop code to handle set-vm
 races from execbuf
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
index e809aca00f72..905b1cbd22d5 100644
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

