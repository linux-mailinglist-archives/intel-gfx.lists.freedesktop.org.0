Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A16C0369CBE
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0824B6ECCB;
	Fri, 23 Apr 2021 22:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D466ECC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:32:01 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id q10so36117884pgj.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l+JrnltDyAX97lYLrD4l3C3JhkC7sKu3vjOewSWVnv8=;
 b=SJd9PFWhajSmiM9KwI67qgDJk/JzCOQVPTq5AO0wi+f7cW6+YMrihnSK+wLj+ZzOSA
 To3ExPNv/cwwQzrOgeSDTYKyiMjOD7xz7cqukvV1BGNAkwmFHQ0F9qxm+3TFVE+R87HV
 8JQ7WrhkFdJ2W3Kr+VcZ2o8ajOz1d96UICPxfN4S9JGbo4X0h99ff2uWtmcMQQGJmahx
 punbl2kMziT6Crp2mjWCqVzlz+GwoXjXnmNsmieWqWxo9F/QGzoMmhaz/cQvSgNfDeTS
 DwoQ9s6PGdO+mp0lYcmLsvNZBKpf6n97Qhwim2qyAhXO9Jrev1UIZUO5pMZeWlzbgGDg
 DhvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l+JrnltDyAX97lYLrD4l3C3JhkC7sKu3vjOewSWVnv8=;
 b=HxAk0Y1VZI2nt/y9W2vIqNOjgkqJ50QLYLANfbda/9g6EmVcm6sMq0TGZ/wANRjOQx
 suCH1+/nKu+kezIHKoUmzA79dbAIwcd1OBMIT8WjVvRsiVt+jEIw/DlCrpUjVFCmA+Sh
 zhgPXQcDT5VE68QwuQdhAp22evhqps2N9SbfnotI4QevXRbXZUbwMYvVld86ow9cClJW
 OkJXPSTc0tGtr7+BkzkxXGqGK8lgUriblTjtu6a9kP+jN1EK/1z5OuPxeWOy8HXLPRI/
 5q787TX5vxs8XvjsSbigGZfFGtFJLRyQiM5x4yerH9SrYlpnxGIE/VRH75leX7+UmdGx
 tvFQ==
X-Gm-Message-State: AOAM531RJ5I+9T2LgFgHeNEmsp7FSLJst3RGyvZfLC1VFDOLCBODap2J
 olfka3XnhQB6UKCmnXjWH77rCKZHlDZ5rA==
X-Google-Smtp-Source: ABdhPJxKPE7FVF0hCXx2FQInOJXefj5OdBL9z1bxEq5auw/ef8N0WrYiJgqJxUsi59X4DAhP3lF+QQ==
X-Received: by 2002:a63:570e:: with SMTP id l14mr5847700pgb.159.1619217120237; 
 Fri, 23 Apr 2021 15:32:00 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:31:59 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:25 -0500
Message-Id: <20210423223131.879208-16-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/21] drm/i915/gt: Drop i915_address_space::file
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's a big comment saying how useful it is but no one is using this
for anything.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  9 ---------
 drivers/gpu/drm/i915/gt/intel_gtt.h         | 10 ----------
 drivers/gpu/drm/i915/selftests/mock_gtt.c   |  1 -
 3 files changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7929d5a8be449..db9153e0f85a7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -921,17 +921,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
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
@@ -1030,8 +1023,6 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
-	ppgtt->vm.file = file_priv;
-
 	if (args->extensions) {
 		err = i915_user_extensions(u64_to_user_ptr(args->extensions),
 					   NULL, 0,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index e67e34e179131..4c46068e63c9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -217,16 +217,6 @@ struct i915_address_space {
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
