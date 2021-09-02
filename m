Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768C83FEF4C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 16:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E926E570;
	Thu,  2 Sep 2021 14:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE576E584
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 14:21:10 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 u15-20020a05600c19cf00b002f6445b8f55so1514332wmq.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 07:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kHxySUBarwyq+uIoraBDAn2647tAv51/ZjGNoHPr4nw=;
 b=M42Yiuoksq0nnwVBIVl2+j+fs62frRSpcc+KsFvNaWF6P6yzhrSa236Ni5LNQQZC6h
 n7ocLx5paBNaLrEp3gi/ho2Mr7QVakblKZhiBNdXaiuR9R443mz5ntP36ijfQV6Zgdf0
 5Ma3M94B84cMItaTPazY0s5pmyfo8DYha4rYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kHxySUBarwyq+uIoraBDAn2647tAv51/ZjGNoHPr4nw=;
 b=aFg01/jTnCDWoxJjDnqDdWc4bSVruEyrq+qqlObGai2NtrFMmcWbeV2yXlq/PSJ3jx
 +b2YfNg0x+yb48ewn5PLaLo5VEdazsRwhquKydf6BLsJwGWbR+D/m7+XF07xDMZDVd0g
 gq+1kmtWunmhoAfZQBXQOSjIUwF6i5kJPzJY3ND5k4aIEng/8tLVWNJTXK0whMoKhGVT
 bcLUejOgNDPlVANRu9gsH/V570MzyXG2WF0JJJi4IpudLIaclnZlzphlYIRcTgKShubj
 EYNcmB6iboUb5xxRCctG7azh5w24p4A6h35fy+hUAHD0N6sRNTe8Dkoey7xuhkICNvg4
 jh6Q==
X-Gm-Message-State: AOAM532V0QsaEwW5KiR4fT7dxHEE4i6zPc+icPrwtE2ZKIHJs4kzJ1nr
 Q2n5XCd5H5ixYeRdFdNG4y6gD8/+CmcRmw==
X-Google-Smtp-Source: ABdhPJylHoit35om1yQP1kEQKTl1YJ1rCZ1Q3cSeQDCgdEXVHYW4IG43dm+xw2rZ8CBWUMGZIFOHDQ==
X-Received: by 2002:a05:600c:206:: with SMTP id
 6mr3468587wmi.178.1630592468733; 
 Thu, 02 Sep 2021 07:21:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l2sm1841811wmi.1.2021.09.02.07.21.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 07:21:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>
Date: Thu,  2 Sep 2021 16:20:48 +0200
Message-Id: <20210902142057.929669-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Release ctx->syncobj on final
 put, not on ctx close
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

We could fix the bug by holding ctx->mutex in execbuf and clear the
pointer (again while holding the mutex) context_close, but it's
cleaner to just make the context object actually invariant over its
_entire_ lifetime. This way any other ioctl that's potentially racing,
but holding a full reference, can still rely on ctx->syncobj being
an immutable pointer. Which without this change, is not the case.

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
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
index 051bc357ff65..5a053cf14948 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -994,6 +994,9 @@ static void i915_gem_context_release_work(struct work_struct *work)
 	trace_i915_context_free(ctx);
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
+	if (ctx->syncobj)
+		drm_syncobj_put(ctx->syncobj);
+
 	mutex_destroy(&ctx->engines_mutex);
 	mutex_destroy(&ctx->lut_mutex);
 
@@ -1220,9 +1223,6 @@ static void context_close(struct i915_gem_context *ctx)
 	if (vm)
 		i915_vm_close(vm);
 
-	if (ctx->syncobj)
-		drm_syncobj_put(ctx->syncobj);
-
 	ctx->file_priv = ERR_PTR(-EBADF);
 
 	/*
-- 
2.33.0

