Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20433E030F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252C16EA82;
	Wed,  4 Aug 2021 14:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7E36EA87
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:31 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 e25-20020a05600c4b99b0290253418ba0fbso1591790wmp.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VqZRQ+c8SxDVpAU3bLWG1pPTG4VXpxPAuTx45jDOor0=;
 b=JhlOXa5UinmLWyFLtbsE4mCNj6UAS8udwKsovFv8f9UvRj3VnCVP+R70puSkCNpkuI
 DQNSxmqEd3fYZLSud9lsg6pt627ls4qyqvpeT3Lp/31kexCv4ivF9fef/hGYU/LarY3U
 VQi6U0N7+WOOuiUUkBhwfkv0TBWqYxrpMyu4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqZRQ+c8SxDVpAU3bLWG1pPTG4VXpxPAuTx45jDOor0=;
 b=UHJUXRgy4Qmj/Z4PgkqRggoY6jirDqRRpmCG1/BwAYp4EyX20NnQWPrDZTqF1/oSkS
 1aApa4pfQN77e1X/xg5TrTbYd8uTLzKflbu9pVT6C2L2QOxdngivqKySeDV2nKAA0nyO
 xX87h35OnFESF6cKLKPKCaTt/on11v5k5DgIc5TyFTzQTFYoRlo4EKE4wglTEc6Wn++k
 ZBSX8mDV7FWSh2JEQXX8CFh4KT52513pBhqoO4ZrkZ2/XwK0pV9BZApzGCbff8NHu4A4
 1G7bvkoTO0uSE7DebKvuyNchHTylW6Bm7jzbXipy06LAKqD0YmLffdfD8PHe7UpoArYo
 NYvA==
X-Gm-Message-State: AOAM533Wyucf5UqsIygTOJ7uQufCGDWzJL2WV3JP1YDYGkHV9ir0mlCh
 6DGS+sPTVC7gwxrJlJl/UaOy+uqEUAjEfw==
X-Google-Smtp-Source: ABdhPJyhwDpLUFvk6flbRvs/0bsYmLZrTsMvni6+b3bZ3yrSetSTiOLPwjl8wcCU1KFm8btYyE6f5A==
X-Received: by 2002:a05:600c:4101:: with SMTP id
 j1mr27627204wmi.110.1628087130372; 
 Wed, 04 Aug 2021 07:25:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:29 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
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
Date: Wed,  4 Aug 2021 16:25:14 +0200
Message-Id: <20210804142522.4113021-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Drop code to handle set-vm
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

