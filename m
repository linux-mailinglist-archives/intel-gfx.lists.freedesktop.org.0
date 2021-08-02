Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EC23DDCC0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78166E52A;
	Mon,  2 Aug 2021 15:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CE76E1EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 15:48:43 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id gn26so31641509ejc.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Aug 2021 08:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EtY8w55rWgTu3+ITCZzz1nxFZlO+pftQJE9iliktvAg=;
 b=UDvcYbcBaK9eMQLh9SpR15r7rdx+G8ZZs5hha5sQQ0LXPKAwC9zTTi+9TTS5/05Vsu
 INBzXGyyThKmD8q/AqWFoeE61mhiXe8FvMeGcbSputbVg7kiMrlNg/G6rGcv0E3VVVPY
 s+ju5QxYaCu6P5l18f7m7Dd0SoHVghvUo6zA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EtY8w55rWgTu3+ITCZzz1nxFZlO+pftQJE9iliktvAg=;
 b=sX6lCg+bXbmYiI8rWEU5HbkF6VpNzucqdtmOU0NCRtHgtNf3dr57Bm5vNR/QrD81n1
 ltq5Ufye53CPDjTzGTr8zWueSg+IAsQOVdxgRegQgnGevNXKayJWgSpi6NhguK2acvuP
 bo7lruGhFv9ZSuAlJ+B6JmzIv9DMsES+XuqFt+Zoh3u0hIrIpEzO/GN2GqKxVjwdFf2g
 OC1QODP4vQEBjXV8uj4MhmVgy7WArw6Ztp2m9xsLtiFlakEzsq9FFXC8y/rTrdZ101Da
 6J92Ab65gnxThrBVxgFyCp+KJIcpYge/8fS2yVgm6AiO05NLr9Mr3bTvr/0AYUUXyAat
 yB8Q==
X-Gm-Message-State: AOAM5307sZOcEEDpYvd5B48CtuOhy4BP0innqFj4Zp00KHsFd1cvFi0D
 t41JnhLrXFetWuMX0wPYAMC6nw==
X-Google-Smtp-Source: ABdhPJwmAAfYvytE61p9zwY4VN15PYWyWTOYGEzvGNiBhYP/hssKwRTeRStehHunLONGnbouQQ2tCQ==
X-Received: by 2002:a17:907:6289:: with SMTP id
 nd9mr15905488ejc.384.1627919321696; 
 Mon, 02 Aug 2021 08:48:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m20sm5064020edv.67.2021.08.02.08.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 08:48:41 -0700 (PDT)
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
Date: Mon,  2 Aug 2021 17:48:02 +0200
Message-Id: <20210802154806.3710472-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
References: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Use i915_gem_context_get_eb_vm in
 intel_context_set_gem
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

Since

commit ccbc1b97948ab671335e950271e39766729736c3
Author: Jason Ekstrand <jason@jlekstrand.net>
Date:   Thu Jul 8 10:48:30 2021 -0500

    drm/i915/gem: Don't allow changing the VM on running contexts (v4)

the gem_ctx->vm can't change anymore. Plus we always set the
intel_context->vm, so might as well use the helper we have for that.

This makes it very clear that we always overwrite intel_context->vm
for userspace contexts, since the default is gt->vm, which is
explicitly reserved for kernel context use. It would be good to split
things up a bit further and avoid any possibility for an accident
where we run kernel stuff in userspace vm or the other way round.

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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a80b06c98dba..fd24a1236682 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -784,16 +784,8 @@ static int intel_context_set_gem(struct intel_context *ce,
 
 	ce->ring_size = SZ_16K;
 
-	if (rcu_access_pointer(ctx->vm)) {
-		struct i915_address_space *vm;
-
-		rcu_read_lock();
-		vm = context_get_vm_rcu(ctx); /* hmm */
-		rcu_read_unlock();
-
-		i915_vm_put(ce->vm);
-		ce->vm = vm;
-	}
+	i915_vm_put(ce->vm);
+	ce->vm = i915_gem_context_get_eb_vm(ctx);
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
 	    intel_engine_has_timeslices(ce->engine) &&
-- 
2.32.0

