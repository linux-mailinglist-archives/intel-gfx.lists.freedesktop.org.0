Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E613933EC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6AD6F468;
	Thu, 27 May 2021 16:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F426F44E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:16 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id y202so977732pfc.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0TK4FihYD/bFaks2c0ZkDPRqLyQ9AlVBUtOrrLt1XV8=;
 b=LllSI5nKzVlUbfPC740JIV5Pf9J7HeB9zDEIlnkH0tu3mbfK0H8WhK4XEv8QGlLsYj
 KS6IhX/MoCHs29MN4fSFE96ZM0hHV+ddrspzZcMxQy/XlHMdXVFr6TWtfgF/E+mHqzR+
 M9/oTbKHIqXq9r/m8guov8+KMylrRrzP7qLYRQ3+PMPKg8z/M7zmY6kZizWOVSt2hakO
 BdgAwvpwwqFkuqxB2CRI2USuLFgDftiFW06zLyQ3wNe0OZEzDlinGWT1bI7Ujt1jC8YH
 9qXDha7DG7CM/Dfp1Mp81uo5WXzc8bqGf/KXUiLFMpiewxRLUWst9nbYX0vFQggTBzSR
 prKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0TK4FihYD/bFaks2c0ZkDPRqLyQ9AlVBUtOrrLt1XV8=;
 b=QgIJFEpYFRhvZbVWFwZZag5kBB0R2gtdvcvwIBPHrhar1PoG740xFr+ouEqWkdyv0F
 AFujjahOHjq/v86QqhxtgHbkElSQG3Umf4YOPxVezhuWWSxG/RBSBGAye+J+Gevlb93n
 fv/oNSBYDoawN7h4Ad4dOtTG6r5qPs34dnrE1PwTDGqzSyN0IcrQL1IwpEcgo5okt+C6
 MTrgGPAEACKNa8rh7cjEhnwjO1CqVzbKjWTRG66kFiOorrFmxSHjIiGDSMbwa4qDeUwz
 xiSjxNy5Hjt4MHJDDSXczmFIf5eMXGNIMfyINkD5GDI3fFNTAuUTvsF4oPQL8o4rXpW/
 j3oQ==
X-Gm-Message-State: AOAM533eaLvADE95zBZQTRzXPbQfHM5TKHJDQlu+b2CtYWEiXs+K+shY
 c9xBc+1QDU6ZBFe18JAoFrGlyqgZNPJdQQ==
X-Google-Smtp-Source: ABdhPJwCOoyBMMLcHxk2bSCYUwj57VOEpTXu9r/t9NEcEKIuzQDHtP23fgG7MjeyQAV9c/nQGtpWjA==
X-Received: by 2002:a63:fa03:: with SMTP id y3mr4398200pgh.389.1622132835655; 
 Thu, 27 May 2021 09:27:15 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:15 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:35 -0500
Message-Id: <20210527162650.1182544-15-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/29] drm/i915/gem: Add a separate
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
index 910d31cb043e9..fc471243aa769 100644
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
@@ -1744,23 +1766,13 @@ static void __apply_priority(struct intel_context *ce, void *arg)
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
