Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 787CF3CAF40
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E395C6E49D;
	Thu, 15 Jul 2021 22:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65B26E455
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:10 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 21so7015107pfp.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AXY3KUSW9Nh3jlxZEN6OgRLzanV/GR5AneGVxHmy0Rg=;
 b=kqUpwV6SpnVPxpNNHUoiua+b0BFXa7TwcPp0f2fdqwmRAxuYmILKe3TS2/6yKzXpJw
 9D7ohHP2eJz6O4a7ZQ6sQ3K4uUG9J+elfYONhpfWCshkDUNGFAPfUuJlUjKVcAJeHuUD
 UiXkQqWxju1BfFv8dwcjtHjxDXn/Z3gA2/Dgys+hnG/pd5lWZjkdO/zhzQngwBOBQWp0
 G2EJujXaPeNxbUKU6Bh9H6RHOfL6cZHTqYnoowBZzE9qNvMd+z9JDZFNLlMJrbDS/1er
 LSexYes86mgbfMmTEquCmw2L/OaG0zJ7Lvyj/k7Kg+RCY/RtYZysJ2gef0ggWzcwycmY
 ixkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AXY3KUSW9Nh3jlxZEN6OgRLzanV/GR5AneGVxHmy0Rg=;
 b=Sy4nl3yjMmgAIDSZldlWxdzGA+q2cZCXJLrmErzVXosxwSgIgxOsAh9mLn1OEcDKxe
 6zyk4kt9q2XQMgv9Gts1jaUYsII0QBqBnyiNmQa7vmbHz+ZquURmqXvW5C62NNnfxJQt
 xLCy2oIxJimmsJNABHDLrWJemzPvYOOjVlUFeBMTki7hwszCzFDb20IAuhoYp+7tAFkv
 7Ties6o9YNXEpaULA1A+pJHRzJy07bIMaYEx/9cfaYL7YK/Tib8yAAgeNtqMhCdEQCvu
 ztQUKsqVgw1ru4tkyDkzz3yV+qkUd+uwOm16h5hY19qG8orTHDxOVP5y2vfbOWOliWdz
 c6og==
X-Gm-Message-State: AOAM533ayP0dhY73fToTO21rrDaLaT3Ce7E6WTydTNn+eMD87Jt0rQDy
 FzcEiGZTquAOPy3Hmn7sEu2Ojl0ikS3vGw==
X-Google-Smtp-Source: ABdhPJzQX8E8UVcB1zrEXImj+Oi23KhE7NSH48pEGzl3eTjznEtBZhLoKoF8NeAqcahNMD2b+QdbZQ==
X-Received: by 2002:a05:6a00:1582:b029:333:a366:fe47 with SMTP id
 u2-20020a056a001582b0290333a366fe47mr2470827pfk.0.1626388749378; 
 Thu, 15 Jul 2021 15:39:09 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:09 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:54 -0500
Message-Id: <20210715223900.1840576-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715223900.1840576-1-jason@jlekstrand.net>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/gem: Check object_can_migrate from
 object_migrate
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We don't roll them together entirely because there are still a couple
cases where we want a separate can_migrate check.  For instance, the
display code checks that you can migrate a buffer to LMEM before it
accepts it in fb_create.  The dma-buf import code also uses it to do an
early check and return a different error code if someone tries to attach
a LMEM-only dma-buf to another driver.

However, no one actually wants to call object_migrate when can_migrate
has failed.  The stated intention is for self-tests but none of those
actually take advantage of this unsafe migration.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel@ffwll.ch>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c        | 13 ++-----------
 .../gpu/drm/i915/gem/selftests/i915_gem_migrate.c | 15 ---------------
 2 files changed, 2 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 9da7b288b7ede..f2244ae09a613 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -584,12 +584,6 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
  * completed yet, and to accomplish that, i915_gem_object_wait_migration()
  * must be called.
  *
- * This function is a bit more permissive than i915_gem_object_can_migrate()
- * to allow for migrating objects where the caller knows exactly what is
- * happening. For example within selftests. More specifically this
- * function allows migrating I915_BO_ALLOC_USER objects to regions
- * that are not in the list of allowable regions.
- *
  * Note: the @ww parameter is not used yet, but included to make sure
  * callers put some effort into obtaining a valid ww ctx if one is
  * available.
@@ -616,11 +610,8 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
 	if (obj->mm.region == mr)
 		return 0;
 
-	if (!i915_gem_object_evictable(obj))
-		return -EBUSY;
-
-	if (!obj->ops->migrate)
-		return -EOPNOTSUPP;
+	if (!i915_gem_object_can_migrate(obj, id))
+		return -EINVAL;
 
 	return obj->ops->migrate(obj, mr);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index 0b7144d2991ca..28a700f08b49a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -61,11 +61,6 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
 		if (err)
 			continue;
 
-		if (!i915_gem_object_can_migrate(obj, dst)) {
-			err = -EINVAL;
-			continue;
-		}
-
 		err = i915_gem_object_migrate(obj, &ww, dst);
 		if (err)
 			continue;
@@ -114,11 +109,6 @@ static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
 		return err;
 
 	if (i915_gem_object_is_lmem(obj)) {
-		if (!i915_gem_object_can_migrate(obj, INTEL_REGION_SMEM)) {
-			pr_err("object can't migrate to smem.\n");
-			return -EINVAL;
-		}
-
 		err = i915_gem_object_migrate(obj, ww, INTEL_REGION_SMEM);
 		if (err) {
 			pr_err("Object failed migration to smem\n");
@@ -137,11 +127,6 @@ static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
 		}
 
 	} else {
-		if (!i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM)) {
-			pr_err("object can't migrate to lmem.\n");
-			return -EINVAL;
-		}
-
 		err = i915_gem_object_migrate(obj, ww, INTEL_REGION_LMEM);
 		if (err) {
 			pr_err("Object failed migration to lmem\n");
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
