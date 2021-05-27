Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86F93933EE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DBB6F472;
	Thu, 27 May 2021 16:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C804C6F451
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:22 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 lx17-20020a17090b4b11b029015f3b32b8dbso2755335pjb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EPrV16RaPmALH4oatSSI5SAl4kh8PAG4UQRi2PA7exU=;
 b=ceK0QtC+UVwJ/ljEpdTvt1h1L92LWD+aFLzgPzv2/YQKyatbWZjqCoC4LWLJdEtGxS
 Mt4dVEEEFWqn1CGLMwri0N7jskPw2XQQcjFzi3PwvOKMCyWCwYDmxGRPC1xG62fNKECB
 tfgvwtq0bp3dj/GsUJiUIOm4C6a7tlFbFuB+ETgG+wk3P3pruyhhUKedQ4Xb6ODXoidi
 BwkjAMkQbLtcGQ+oBJo0ip9pofvP4yi3XI8msP9Gnx3/dQDSHGbdHwggJcZGH523DaGn
 j7g8YA4a++f/2zkzdp28tHakqN9+HjM5V/Iin0t7mEdTKYNAGZoRhlf5ImkVKUsU17ga
 KdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EPrV16RaPmALH4oatSSI5SAl4kh8PAG4UQRi2PA7exU=;
 b=TElVrpGcmTz4C7vrwvzyIVot/ZAyT3rPss55btrWScHroDrldBe6UCevsbsLaSDrq7
 Vi52QRMTn0LiN0X87ODd+gKvfwyzyuUP1YK0A9s0KeR9xVqINdhHkQEQ/G3rqaKCNl/b
 d9v9GfoivtyAV1cYynhbmKwejNKYwxnUFXgGQDRuOiUUJ/mIs4hv2BXhUBzZG9I0PEVS
 ggGM88zwak/+3vjQWou5ywiY4GlVVecaxytbiMsKgkQpJIXQ6FQWeqRhWDHYSHKdkzCO
 +3z6w/7fA6rj723pIy0q7abOOG++0jlPP+REdQFe2bafGUgmo3RRwhN2a64LA4Y9np8y
 FTpQ==
X-Gm-Message-State: AOAM531YOFLk3lf9JPC8atO9M5BsycTrx+GYN4IqwdAcum01WTQkfB/0
 Vg7LO9vHWpKnhEtWxe1xVKzk0gdFQ1+wmA==
X-Google-Smtp-Source: ABdhPJxHZwk49PfkeHb5QZjFhkX5zXmH+dj5exzymzr+eCuggCKBw/S+JsJlI/L2eSh1SzFzxc/LvQ==
X-Received: by 2002:a17:902:c94a:b029:f4:ad23:7e59 with SMTP id
 i10-20020a170902c94ab02900f4ad237e59mr3793882pla.73.1622132842075; 
 Thu, 27 May 2021 09:27:22 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:21 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:40 -0500
Message-Id: <20210527162650.1182544-20-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/29] drm/i915: Add an i915_gem_vm_lookup helper
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

This is the VM equivalent of i915_gem_context_lookup.  It's only used
once in this patch but future patches will need to duplicate this lookup
code so it's better to have it in a helper.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  6 +-----
 drivers/gpu/drm/i915/i915_drv.h             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d247fb223aac7..12a148ba421b6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1346,11 +1346,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	if (upper_32_bits(args->value))
 		return -ENOENT;
 
-	rcu_read_lock();
-	vm = xa_load(&file_priv->vm_xa, args->value);
-	if (vm && !kref_get_unless_zero(&vm->ref))
-		vm = NULL;
-	rcu_read_unlock();
+	vm = i915_gem_vm_lookup(file_priv, args->value);
 	if (!vm)
 		return -ENOENT;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48316d273af66..fee2342219da1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1871,6 +1871,20 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 	return ctx;
 }
 
+static inline struct i915_address_space *
+i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
+{
+	struct i915_address_space *vm;
+
+	rcu_read_lock();
+	vm = xa_load(&file_priv->vm_xa, id);
+	if (vm && !kref_get_unless_zero(&vm->ref))
+		vm = NULL;
+	rcu_read_unlock();
+
+	return vm;
+}
+
 /* i915_gem_evict.c */
 int __must_check i915_gem_evict_something(struct i915_address_space *vm,
 					  u64 min_size, u64 alignment,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
