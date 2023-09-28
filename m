Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6069A7B2520
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F12B10E69D;
	Thu, 28 Sep 2023 18:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31E410E42B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:20:26 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-533c8f8f91dso13335275a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 11:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1695925225; x=1696530025;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tJi60qNLYemWDYXP7S9Bz81AcFA5FGWArg4wRZwu8sc=;
 b=BgKodeqXFwax3vmVnATw8+T2ukggQ6s1Hp/7MW0bQdI4sKKWnC+57MKRj9vy95mBF2
 CqXuwbItHpgbosEmr6An+z+U64p9rZHsNgRjLblydt1LwIsqHVG61c5yWCpYgPUBma0Y
 Rf4hYcChPExowBgjQ9rfYgdBgJCDXzrZp+l9VxHOEIVMidwdtdW89hOG6HPKPKVvloC2
 6PbaMrbmMt+q69odds5ZmltpiGPEHfyYXev48D19qcnLsnbKx6SU9pQ1xK3CdUOWbL6g
 5dJIfIao5Q0+BhF5ywRpLeIFT96fzFPoZUE8oEcAS7t61ekaImK/nkdKWhzMjv/PcTzL
 RyiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695925225; x=1696530025;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tJi60qNLYemWDYXP7S9Bz81AcFA5FGWArg4wRZwu8sc=;
 b=ijC35GYCVYZ3ChpAstPLEINWogo4wOMimTfkkqJNkT/3aPlT5a3PKE16r2nblOSJ0y
 wiQD1jS8rKUHjhK/aAq7b4Vmm9xtGtfecHnKIaBd8vHwpAkxmA6UCGikceTkdACRQNiq
 GKXSHIOsBFV+gkF3W+p+on7USAG8qrdomgQzw2XmG3gIAVqFMV78Bc4r/HlsSEpa6RlY
 3F3u8BG5w6CXcwU7Fviuu5poWyDmvmY55b67DiUiR1gkvM69OihHNEHYxHZRRK9IvGJ8
 auU5IWu6AgUTGK/JpuFxuzECtNiFoiJ4r+tulvwGaK2zFvFyWIOkuJzxR40BuzL/A2/Z
 xd+g==
X-Gm-Message-State: AOJu0YxYvsYC0Wd9a6OnuXqc3IEJ/DKABN8Qmvyuw1ga2fdzwy8RuqKq
 Ac0XFzfZjqZboPuDZ/nJD26XqQlNPPxzS752ebg=
X-Google-Smtp-Source: AGHT+IG3Bf9BQCzMXzFcHzEqRo/iV2jJJg6pGAwGAZ4gdfHYx5jThvb8PTlX1HNe5abfI6I3NeLAEg==
X-Received: by 2002:aa7:c1d4:0:b0:532:c72e:26fb with SMTP id
 d20-20020aa7c1d4000000b00532c72e26fbmr1786461edp.6.1695925224916; 
 Thu, 28 Sep 2023 11:20:24 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af043200d2a06d439b047d41.dip0.t-ipconnect.de.
 [2003:f6:af04:3200:d2a0:6d43:9b04:7d41])
 by smtp.gmail.com with ESMTPSA id
 g7-20020aa7d1c7000000b0053112d6a40esm10114765edp.82.2023.09.28.11.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Sep 2023 11:20:24 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 20:20:19 +0200
Message-Id: <20230928182019.10256-3-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928182019.10256-1-minipli@grsecurity.net>
References: <20230928182019.10256-1-minipli@grsecurity.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Clarify type evolution of
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
default engine map") violated that assumption, as the multiple type
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
index a7e677598004..7585fffac60b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -402,7 +402,15 @@ struct intel_engine_cs {
 
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
index 7a8ce7239bc9..c8690d1d5e51 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -222,7 +222,22 @@ struct drm_i915_private {
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

