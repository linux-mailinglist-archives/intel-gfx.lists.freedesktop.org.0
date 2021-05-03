Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36D3718AF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7761E6E8FB;
	Mon,  3 May 2021 15:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBAC6E8F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:19 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id m37so3935864pgb.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rxa+dxuuKkWcn1ApSBM6WPTFN6yU9A6RHDJyeGGj8Pc=;
 b=qew5SD7Qjs1UfxH5CEXy4ZL4DRw/Ru7fBRXjEcNlw0zdJHnu1Hy+8P0YiYRlBN8iY+
 9hGYKy/jLhOdnXuGl9HqRGr2AYIpj9EbrYlMXRYZTqrIjOmxb+bc57TOOm6LRMMwhF1m
 vg5Wk5GfKzx6nsns3FDcPQXFVOsEDHxJRvd95701Zk9CvZ35WcRcKHdT30va8jBVAIfo
 TTej3rcpMeOnkpnr4Lrjl9Qmkb3GGb4kf5L1k5z3/KCry8RxeiZNXjlOa6/ZUbTQ5VRb
 1FEflLo01oRcrctA8W2Yl83c66UX41FWgrcgRdICZtxwotr7dJ/zIWljH9E5OYfKFazg
 qk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rxa+dxuuKkWcn1ApSBM6WPTFN6yU9A6RHDJyeGGj8Pc=;
 b=RSVjWIF1A4LDJrqTqsMSBU0maHbv5wYvCcyi5fgAt/oN/dc00sQgaVaK9NlxaIBahQ
 K9zKHRf6dUflkCBrJe2qR7z9PQymhlwc7oJL53XpzNFjav9H9RezEWkllRb0EPwQseN9
 VyE39I2UpZhHHeY/V2DseltoTByzhaSGBL2qlHsTMe3LZEG/OU0uDYmG7Xy5Qxm2itq5
 Qw1NUZQdwDPd0LutV+7BW9vdMkS6ZHrzW0mCa3Cq2sDO1H6eRbxULHtWdBtbyZ05avQE
 IgRmCImwZFmavl6sra27YyJESXwNtZXml5tAayzBJ9qimhZ4tMA4y5kYgV5AT/134LZ3
 gTJA==
X-Gm-Message-State: AOAM5313nEMdkbvvVocaaCFbjiY8bSUVArMnGQZt1g18C96DQEoWCREg
 Q7GXc8uHXKpR/YCaMR0dEe94TymOMvpGhA==
X-Google-Smtp-Source: ABdhPJzCvt+5y7vT1gKaqIr03hZK8tmONSqseLqlHnEh8Ae6lgD9tHvCpfLtmgnEU/eLUsigyDv6mw==
X-Received: by 2002:a62:1ec2:0:b029:275:9866:be33 with SMTP id
 e185-20020a621ec20000b02902759866be33mr19421555pfe.15.1620057499166; 
 Mon, 03 May 2021 08:58:19 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:18 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:35 -0500
Message-Id: <20210503155748.1961781-15-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/27] drm/i915/gem: Add a separate
 validate_priority helper
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

With the proto-context stuff added later in this series, we end up
having to duplicate set_priority.  This lets us avoid duplicating the
validation logic.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 42 +++++++++++++--------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c073d5939482b..4835991898ac9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -169,6 +169,28 @@ lookup_user_engine(struct i915_gem_context *ctx,
 	return i915_gem_context_get_engine(ctx, idx);
 }
 
+static int validate_priority(struct drm_i915_private *i915,
+			     const struct drm_i915_gem_context_param *args)
+{
+	s64 priority = args->value;
+
+	if (args->size)
+		return -EINVAL;
+
+	if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
+		return -ENODEV;
+
+	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
+	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
+		return -EINVAL;
+
+	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
+	    !capable(CAP_SYS_NICE))
+		return -EPERM;
+
+	return 0;
+}
+
 static struct i915_address_space *
 context_get_vm_rcu(struct i915_gem_context *ctx)
 {
@@ -1745,23 +1767,13 @@ static void __apply_priority(struct intel_context *ce, void *arg)
 static int set_priority(struct i915_gem_context *ctx,
 			const struct drm_i915_gem_context_param *args)
 {
-	s64 priority = args->value;
-
-	if (args->size)
-		return -EINVAL;
-
-	if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
-		return -ENODEV;
-
-	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
-	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
-		return -EINVAL;
+	int err;
 
-	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
-	    !capable(CAP_SYS_NICE))
-		return -EPERM;
+	err = validate_priority(ctx->i915, args);
+	if (err)
+		return err;
 
-	ctx->sched.priority = priority;
+	ctx->sched.priority = args->value;
 	context_apply_all(ctx, __apply_priority, ctx);
 
 	return 0;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
