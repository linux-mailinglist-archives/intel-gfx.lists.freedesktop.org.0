Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577703C167C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B596E922;
	Thu,  8 Jul 2021 15:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31336E91E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:07 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 x139-20020a4a41910000b0290257bad81ed5so1487364ooa.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fzrs0HNgzTuGspn9Tc180zOQAYlO+PrToKth9qfWMe0=;
 b=b2yeBbhaII8afT4IPz2WhQ/E3MGBqT6GfdpqzAMFLsLeffJ6/ZuX0hCBKEpDJ/KSjx
 RblV14iNgaCvTKbJPrjaCEXuZPJbR3Q219hiYXN0esDffGHXQXY6CkURexkxx5oBf+hd
 LXuTrDPA01LWpotpggjxutoYhwm1zscuxbJZMZT/OBfwFWHOGaKeHgA630kGne2BkM92
 RJGAOlx4wCfnT6xbZaoOk1IjlamCdCPiVdiJ18dUaYA8rvdAh/n4K53Y2e7E/pNXKOKF
 D/usjyVjnW6udeSNrMZhIs/SptSS5zwB0A6B1WVVWddWUFBKOcc5vINaksE69Qwl4d2b
 nEVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fzrs0HNgzTuGspn9Tc180zOQAYlO+PrToKth9qfWMe0=;
 b=k66s679AQ2jxaCyo/5WnJd0zqNL7Ql9gnQUZhSfCoQ/kaS1KYeyx1P68e9zxZWft2J
 ap2lus4/69nUF3OLgJDhFnirSDEGlawXPtzXFc6P4ZqPOzQsUT48WUYqAvXqPGJsxYA6
 ZYlzmm7c/j25F509ROWm/zc5iP0ZKC/2QBIHpjSk2rkpHcFrrOGkFy+mNv/CM+57dTjp
 Z6rpivNNKHtEX1ypQSB6aLXt5mBhLzF0svm4coLoHHoIJ1cXxbPfo/Gwjb9V7pz5I5ed
 XDmm+Dn03YCFi9JQC4OWvnyPCdRyr5miZ/DURpwt/7DtUHc5CTIIPXjg0BIW1t7jTzKZ
 sDoQ==
X-Gm-Message-State: AOAM532/ZfGNyyb5pvqyJCF6NpzwSgTjeyBqTCe12G/c3Y/bNOQ9HE4Z
 ypW+gPG6kYHVOCc94QD6T+Msde2Lq9d7aw==
X-Google-Smtp-Source: ABdhPJywhjiPAJgY+N9PKEe4reGuFIuJTGtNoeOimFgaSY2ogJHg16JMDF4+wrrzzhCH7PbuNtjf7w==
X-Received: by 2002:a4a:b189:: with SMTP id c9mr22645083ooo.30.1625759346872; 
 Thu, 08 Jul 2021 08:49:06 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:05 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:28 -0500
Message-Id: <20210708154835.528166-24-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/30] drm/i915/gt: Drop
 i915_address_space::file (v2)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's a big comment saying how useful it is but no one is using this
for anything anymore.

It was added in 2bfa996e031b ("drm/i915: Store owning file on the
i915_address_space") and used for debugfs at the time as well as telling
the difference between the global GTT and a PPGTT.  In f6e8aa387171
("drm/i915: Report the number of closed vma held by each context in
debugfs") we removed one use of it by switching to a context walk and
comparing with the VM in the context.  Finally, VM stats for debugfs
were entirely nuked in db80a1294c23 ("drm/i915/gem: Remove per-client
stats from debugfs/i915_gem_objects")

v2 (Daniel Vetter):
 - Delete a struct drm_i915_file_private pre-declaration
 - Add a comment to the commit message about history

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  9 ---------
 drivers/gpu/drm/i915/gt/intel_gtt.h         | 11 -----------
 drivers/gpu/drm/i915/selftests/mock_gtt.c   |  1 -
 3 files changed, 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7045e3afa7113..5a1402544d48d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1453,17 +1453,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 				u32 *id)
 {
 	struct drm_i915_private *i915 = ctx->i915;
-	struct i915_address_space *vm;
 	int ret;
 
 	ctx->file_priv = fpriv;
 
-	mutex_lock(&ctx->mutex);
-	vm = i915_gem_context_vm(ctx);
-	if (vm)
-		WRITE_ONCE(vm->file, fpriv); /* XXX */
-	mutex_unlock(&ctx->mutex);
-
 	ctx->pid = get_task_pid(current, PIDTYPE_PID);
 	snprintf(ctx->name, sizeof(ctx->name), "%s[%d]",
 		 current->comm, pid_nr(ctx->pid));
@@ -1562,8 +1555,6 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
-	ppgtt->vm.file = file_priv;
-
 	if (args->extensions) {
 		err = i915_user_extensions(u64_to_user_ptr(args->extensions),
 					   NULL, 0,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 9bd89f2a01ff1..bc7153018ebd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -140,7 +140,6 @@ typedef u64 gen8_pte_t;
 
 enum i915_cache_level;
 
-struct drm_i915_file_private;
 struct drm_i915_gem_object;
 struct i915_fence_reg;
 struct i915_vma;
@@ -220,16 +219,6 @@ struct i915_address_space {
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;
-	/*
-	 * Every address space belongs to a struct file - except for the global
-	 * GTT that is owned by the driver (and so @file is set to NULL). In
-	 * principle, no information should leak from one context to another
-	 * (or between files/processes etc) unless explicitly shared by the
-	 * owner. Tracking the owner is important in order to free up per-file
-	 * objects along with the file, to aide resource tracking, and to
-	 * assign blame.
-	 */
-	struct drm_i915_file_private *file;
 	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
 	u64 reserved;		/* size addr space reserved */
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index 5c7ae40bba634..cc047ec594f93 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -73,7 +73,6 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	ppgtt->vm.gt = &i915->gt;
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
-	ppgtt->vm.file = ERR_PTR(-ENODEV);
 	ppgtt->vm.dma = i915->drm.dev;
 
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
