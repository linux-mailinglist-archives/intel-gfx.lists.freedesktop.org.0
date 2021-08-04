Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9443E0315
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 001636EA95;
	Wed,  4 Aug 2021 14:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E446C6EA83
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:34 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id b11so2490721wrx.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nl7Irs71vJM1YfQMLmrkQe1rncHUCMW4+W0FSdH/emo=;
 b=KwTNu8odaDk1KmC4oiIZo1wDoebAw7UCnaq2stPuHuDYbhVeNC0u5ZucPAyCd8CDjY
 GimALVhdnbCz+CNZR8rU+vf1Vs0djJswiNGTQtYpZLizigESu66nDmX9Ng9OJ+l4n5WU
 7LQSyYz3KbeEO0aqPS5HX1XovepuP7S7l88mM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nl7Irs71vJM1YfQMLmrkQe1rncHUCMW4+W0FSdH/emo=;
 b=MCHaT/VnE1opxQWrbs9DX4+orSUjiJq7ylkGG6Z1VFmU4/d6LIvEfWnOerNZr+Tz/T
 5KekL/f8LsR816CMiZjrW2ZgUFqszOImK+IKHaTETIe9JFkBCKXQJOdGeizL4ibGkec1
 6THTHaIAGtTEujtKCkjXSh0juNOPWO5/3MEA5S0+MHtvWbLsPdTbrawtOVoK16GvlQtl
 aVUlirpFnhuuH2d3GJUN8l295fIoKN7n1nAyiZV3CM9d6hrAHl7Pbvp8wfSAzFczOp/P
 LienAhsKkUpPSjpHJX+jXnHW8C7bdCbA+0qQRCgOssdiyP0zr1RCIRfei6rRc7vEkCyW
 M6ig==
X-Gm-Message-State: AOAM530+fC34k0o5vEp49q6cmxndsxqBVRtvFEwKMvG+hIR4EWoZHp2j
 0yr2dIh0w77vsQ9R1sOuaR2eiE8OTyEFmw==
X-Google-Smtp-Source: ABdhPJxFLdBoaOPyYa4HwWQT5YEpHmPD4epumMdfYcNi/GX6PWMux6eOH5NgOZfqovn30SbActyWPw==
X-Received: by 2002:a5d:4f86:: with SMTP id d6mr29163666wru.271.1628087133458; 
 Wed, 04 Aug 2021 07:25:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:31 -0700 (PDT)
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
Date: Wed,  4 Aug 2021 16:25:16 +0200
Message-Id: <20210804142522.4113021-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915: Use i915_gem_context_get_eb_vm
 in ctx_getparam
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

Consolidates the "which is the vm my execbuf runs in" code a bit. We
do some get/put which isn't really required, but all the other users
want the refcounting, and I figured doing a function just for this
getparam to avoid 2 atomis is a bit much.

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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index cff72679ad7c..6263563e15d6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2124,6 +2124,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_gem_context_param *args = data;
 	struct i915_gem_context *ctx;
+	struct i915_address_space *vm;
 	int ret = 0;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
@@ -2133,12 +2134,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	switch (args->param) {
 	case I915_CONTEXT_PARAM_GTT_SIZE:
 		args->size = 0;
-		rcu_read_lock();
-		if (rcu_access_pointer(ctx->vm))
-			args->value = rcu_dereference(ctx->vm)->total;
-		else
-			args->value = to_i915(dev)->ggtt.vm.total;
-		rcu_read_unlock();
+		vm = i915_gem_context_get_eb_vm(ctx);
+		args->value = vm->total;
+		i915_vm_put(vm);
+
 		break;
 
 	case I915_CONTEXT_PARAM_NO_ERROR_CAPTURE:
-- 
2.32.0

