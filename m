Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E51583E3044
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 22:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218AF6EC2F;
	Fri,  6 Aug 2021 20:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED216EC2C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Aug 2021 20:19:00 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 m28-20020a05600c3b1cb02902b5a8c22575so6701497wms.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Aug 2021 13:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JzNYMrnlk25kaqg3GJt4v8XpQcz3cvah8/eHxHOAK/c=;
 b=jEeWJ7CW+Kl28i/SOQgNmEI2KT/qFMPFChEsk/2Myvg6SmCnkGuj5YhwjT81eMvzsJ
 Dh5brCjb1blAVcaHnfFmbVeLUPoLUZpcWFbGnVTzztXWYSiHPQ7v2yzr6ldTzExptYvd
 YSAIdvmeUGcYmvccYIC1HYZvsfSzQtXHyHlm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JzNYMrnlk25kaqg3GJt4v8XpQcz3cvah8/eHxHOAK/c=;
 b=mePQzrx8U6WG6jYPkR6LJ7NtFcUXhrR1hSzgzy9PO7UcIvAyhzLOuEIjZKWYeIPndG
 VU7EKVnz5qbNXw/OtWAig+Shwg1FStorWJ74wkaISdCdab0988S17WD48y4PnGgZHzDX
 vyRns29ZWVvr8j1hQqfBCALXSO56SxRHGbArWGt0EHuBTNJ5gtiI2QXxiMqWDEx7ulNW
 +H4xBoKNn3oqURHpDq0BKynrb9EfYcSBc9xaSGlvaBqLuRh60qntDFRU06tWLKwn7pwE
 Fj2VE2jn8QJ5ICio28DCEWWrxKTlBCWqH4d05XLvCoQurCMZfPxl0tm375DZN0hNMfMj
 2cbw==
X-Gm-Message-State: AOAM533atPUqryoDyDp5TTcgyauMflR+ymA+xt9s290V5Izjk0HYszWj
 k8Zz7yZUyEsHwqmdSj6eR4zwOu0n9j7g5w==
X-Google-Smtp-Source: ABdhPJx444izl8xf50OEfuubagJ0v+nHguK+/zcJR6dQ7UGhYt7upiwuRFnlDjRZk32suzg5QgyNeQ==
X-Received: by 2002:a05:600c:1ca7:: with SMTP id
 k39mr4964799wms.162.1628281138700; 
 Fri, 06 Aug 2021 13:18:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 19sm12888354wmj.48.2021.08.06.13.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 13:18:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>
Date: Fri,  6 Aug 2021 22:18:52 +0200
Message-Id: <20210806201852.1345184-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Release ctx->syncobj on final put,
 not on ctx close
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

gem context refcounting is another exercise in least locking design it
seems, where most things get destroyed upon context closure (which can
race with anything really). Only the actual memory allocation and the
locks survive while holding a reference.

This tripped up Jason when reimplementing the single timeline feature
in

commit 00dae4d3d35d4f526929633b76e00b0ab4d3970d
Author: Jason Ekstrand <jason@jlekstrand.net>
Date:   Thu Jul 8 10:48:12 2021 -0500

    drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)

We could fix the bug by holding ctx->mutex, but it's cleaner to just
make the context object actually invariant over its _entire_ lifetime.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Fixes: 00dae4d3d35d ("drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)")
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: "Thomas Hellström" <thomas.hellstrom@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 754b9b8d4981..93ba0197d70a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -940,6 +940,9 @@ void i915_gem_context_release(struct kref *ref)
 	trace_i915_context_free(ctx);
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
+	if (ctx->syncobj)
+		drm_syncobj_put(ctx->syncobj);
+
 	mutex_destroy(&ctx->engines_mutex);
 	mutex_destroy(&ctx->lut_mutex);
 
@@ -1159,9 +1162,6 @@ static void context_close(struct i915_gem_context *ctx)
 	if (vm)
 		i915_vm_close(vm);
 
-	if (ctx->syncobj)
-		drm_syncobj_put(ctx->syncobj);
-
 	ctx->file_priv = ERR_PTR(-EBADF);
 
 	/*
-- 
2.32.0

