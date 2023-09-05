Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 366FC79235C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 16:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD16510E528;
	Tue,  5 Sep 2023 14:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B26710E4C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 11:39:39 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-522dd6b6438so3079196a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Sep 2023 04:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1693913977; x=1694518777;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nW60LvYrZU2Qfu4IIQ16YTEqSvOCVRtBVKTX5C4uzEc=;
 b=MN9oiORl5bM/7+rIuq1u/wmRazn9dDSUXRhEZEATMq+oohDREtOIaCdZYae6/vlS5j
 cpUwnnQX3zIRrzscTwhavC17NWIR92dUOxrGwwnU1yA0OLop4pOySGSwHF/IVjyLkRoe
 mqrU+xo2HAa7uHlIrCOn1lfLMutjRZEXirKg/Urw/HP4y99VZLoHQGlRF1IztKEuobUI
 jivoqZFi5Vz5Cu5AcDyfzw95AtVakmuJR/ay03pMvSlnmJEyxF1npPRSyWu7xyIvIFs1
 f1wyRfVwdlCsIXwp2JSQWhpMIZpF0buLuidZeXsrO+VEiXvz9J4bKd3ye4Ta/teUPSZU
 kT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693913977; x=1694518777;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nW60LvYrZU2Qfu4IIQ16YTEqSvOCVRtBVKTX5C4uzEc=;
 b=XL8gTLyYpN1oMCVkGYUFkJOXGwSTKO01S3lx/hieRRxZSu7du9O0+1suio2xO6jSy0
 Pk/ZQ5htzhizXPR3JCuumInqkazey+TF5cVQD1ZeXaXn/HUhc8i3PLzDMfi9bakuy8fm
 o/kp3iqngSuSg5vltAY47isSGXXJrKv9PlW8b4Ha+ZytFxJfkPmylcy+TJE4syLyXvF2
 Fse+qXYOGg3J6uj3pnBC1qWxSSRu2pY2OpFL/2WoMDX/DUtUvS2iC733l/NgM7Daeg24
 7BhGX5fZ4X/n1U7hpIT68UVmuI3XsBZH2+oHf52kDi0Ny+YtHFYZEjlDDdW5IGqecvjA
 73xA==
X-Gm-Message-State: AOJu0YykpBp9uVV/PaY2cjntmXGwAjk6dpDTJQaV6p8UfP/zpyO/+kZQ
 Yx4sNR4CW5SYFOz2DXccms1OhHBOeCwBG/ycCUc=
X-Google-Smtp-Source: AGHT+IGR1uhACbXdQ51fSIOTWTzIiKRlbC8LNsq9JWkeP3xUr3PWaEFOb1wYCIOsQrdiA1Q7ynfRqQ==
X-Received: by 2002:a05:6402:5212:b0:523:338b:7977 with SMTP id
 s18-20020a056402521200b00523338b7977mr3496484edd.9.1693913977240; 
 Tue, 05 Sep 2023 04:39:37 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af30f500da79246c82d39696.dip0.t-ipconnect.de.
 [2003:f6:af30:f500:da79:246c:82d3:9696])
 by smtp.gmail.com with ESMTPSA id
 w16-20020a056402129000b005255f5735adsm6989036edv.24.2023.09.05.04.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Sep 2023 04:39:36 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 13:39:21 +0200
Message-Id: <20230905113921.14071-3-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230905113921.14071-1-minipli@grsecurity.net>
References: <20230905113921.14071-1-minipli@grsecurity.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 05 Sep 2023 14:14:03 +0000
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Clarify type evolution of
 uabi_node/uabi_engines
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
Cc: Mathias Krause <minipli@grsecurity.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chaining user engines happens in multiple passes during driver
initialization, mutating its type along the way. It starts off with a
simple lock-less linked list (struct llist_node/head) populated by
intel_engine_add_user() which later gets sorted and converted to an
intermediate regular list (struct list_head) just to be converted once
more to its final rb-tree structure (struct rb_node/root) in
intel_engines_driver_register().

All of these types overlay the uabi_node/uabi_engines members which is
unfortunate but safe if one takes care about using the rb-tree based
structure only after the conversion has completed. However, mistakes
happen and commit 1ec23ed7126e ("drm/i915: Use uabi engines for the
default engine map") violated that assumption, as the multiple types
evolution was all to easy hidden behind casts papering over it.

Make the type evolution of uabi_node/uabi_engines more visible by
putting all members into an anonymous union and use the correctly typed
member in its various users. This allows us to drop quite some ugly
casts and, hopefully, make the evolution of the members better
recognisable to avoid future mistakes.

Signed-off-by: Mathias Krause <minipli@grsecurity.net>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
 drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
 3 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e99a6fa03d45..f0e91efb2acc 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -401,7 +401,15 @@ struct intel_engine_cs {
 
 	unsigned long context_tag;
 
-	struct rb_node uabi_node;
+	/*
+	 * The type evolves during initialization, see related comment for
+	 * struct drm_i915_private's uabi_engines member.
+	 */
+	union {
+		struct llist_node uabi_llist;
+		struct list_head uabi_list;
+		struct rb_node uabi_node;
+	};
 
 	struct intel_sseu sseu;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index dcedff41a825..118164ddbb2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -38,8 +38,7 @@ intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance)
 
 void intel_engine_add_user(struct intel_engine_cs *engine)
 {
-	llist_add((struct llist_node *)&engine->uabi_node,
-		  (struct llist_head *)&engine->i915->uabi_engines);
+	llist_add(&engine->uabi_llist, &engine->i915->uabi_engines_llist);
 }
 
 static const u8 uabi_classes[] = {
@@ -54,9 +53,9 @@ static int engine_cmp(void *priv, const struct list_head *A,
 		      const struct list_head *B)
 {
 	const struct intel_engine_cs *a =
-		container_of((struct rb_node *)A, typeof(*a), uabi_node);
+		container_of(A, typeof(*a), uabi_list);
 	const struct intel_engine_cs *b =
-		container_of((struct rb_node *)B, typeof(*b), uabi_node);
+		container_of(B, typeof(*b), uabi_list);
 
 	if (uabi_classes[a->class] < uabi_classes[b->class])
 		return -1;
@@ -73,7 +72,7 @@ static int engine_cmp(void *priv, const struct list_head *A,
 
 static struct llist_node *get_engines(struct drm_i915_private *i915)
 {
-	return llist_del_all((struct llist_head *)&i915->uabi_engines);
+	return llist_del_all(&i915->uabi_engines_llist);
 }
 
 static void sort_engines(struct drm_i915_private *i915,
@@ -83,9 +82,8 @@ static void sort_engines(struct drm_i915_private *i915,
 
 	llist_for_each_safe(pos, next, get_engines(i915)) {
 		struct intel_engine_cs *engine =
-			container_of((struct rb_node *)pos, typeof(*engine),
-				     uabi_node);
-		list_add((struct list_head *)&engine->uabi_node, engines);
+			container_of(pos, typeof(*engine), uabi_llist);
+		list_add(&engine->uabi_list, engines);
 	}
 	list_sort(NULL, engines, engine_cmp);
 }
@@ -213,8 +211,7 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 	p = &i915->uabi_engines.rb_node;
 	list_for_each_safe(it, next, &engines) {
 		struct intel_engine_cs *engine =
-			container_of((struct rb_node *)it, typeof(*engine),
-				     uabi_node);
+			container_of(it, typeof(*engine), uabi_list);
 
 		if (intel_gt_has_unrecoverable_error(engine->gt))
 			continue; /* ignore incomplete engines */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4cf6f0f636d..68fd64d6a880 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -223,7 +223,22 @@ struct drm_i915_private {
 		bool mchbar_need_disable;
 	} gmch;
 
-	struct rb_root uabi_engines;
+	/*
+	 * Chaining user engines happens in multiple stages, starting with a
+	 * simple lock-less linked list created by intel_engine_add_user(),
+	 * which later gets sorted and converted to an intermediate regular
+	 * list, just to be converted once again to its final rb tree structure
+	 * in intel_engines_driver_register().
+	 *
+	 * Make sure to use the right iterator helper, depending on if the code
+	 * in question runs before or after intel_engines_driver_register() --
+	 * for_each_uabi_engine() can only be used afterwards!
+	 */
+	union {
+		struct llist_head uabi_engines_llist;
+		struct list_head uabi_engines_list;
+		struct rb_root uabi_engines;
+	};
 	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
 
 	/* protects the irq masks */
-- 
2.39.2

