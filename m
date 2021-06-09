Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40853A0B74
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF4A6ECBC;
	Wed,  9 Jun 2021 04:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6E86ECBA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:44 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 x21-20020a17090aa395b029016e25313bfcso634133pjp.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QOIZ7V91fLIl8fTP/re+L3I3ujQ1EjA9kvT8GvYB6UA=;
 b=ckyh8QG3wuY3YnaGYMm+AaufaisChce+veVQA5cKWm6KIx+ELzsYB/8fi+sp6XTbNk
 eFf7nTqNwEtrYO2yQBO9gr6W6Mlssa36yNpGl32Wdyh//RCD+dKYUBWPcduTcMubxuJ8
 w+8lU598u4Gf8YLYC7kg2LiDwZdXNwYwvj50DYBDwKxKLQ/dJax5mzIrEkQIDKxfWSt9
 1SJf7uI1o0FtARcBQ3yhBMmyFzks+6H57ia/KcWbxv7khpETQlgGd21rwJ7BdCzHHUGi
 A/4XvUXs6b57btw2Na5sBxLD3vs7W7z8fqGZLWg8F4/0uvaOb0sQZJK5M4dV8RMEyUD7
 zvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QOIZ7V91fLIl8fTP/re+L3I3ujQ1EjA9kvT8GvYB6UA=;
 b=UmvF/6GK/QwQJTCmecaEecNYNc55idIx9CT03PFHLIZDt97V9PwZ/9AdZwo2/E3yVL
 XCMfMFCGGSll6ZUPhjymA6IA2X8ABNrZwxYgixU6nw/8Oph5G3Q6QsEwEomOw3I0jV9d
 2IqnL2TNthbbCuG37o+WEGoC7U3eCWRTn3iTeDgN8hy9H2p+z83NeHZWnVysQrzoRSF2
 pgvbgbKsA8vzliCYdDMrqAv1ZVSjS59n8kKN0DH+kX9soxE8rKveT6ls3tG3UAe8JglI
 Z03jkVMgW2XgSFNM99uCrUjllVER3uDi8l5TRbNg862ustsJd0g72sfyoWAA8P3ehWhz
 CI4g==
X-Gm-Message-State: AOAM533yvYnSUh1dBRCtN4fs7uPrRtvnuwc1dmNCGZVL1gexdCCnv+Fi
 GOE3ldQ1CCEF1sTLZq2rTB1D7A==
X-Google-Smtp-Source: ABdhPJw7fXAEC18KNyWvQhmQ/fvWuXu8qMCJXoMe0Y1gvuUaVzKi/i9Ag9tasDF9oY6rOa2i17L2Bg==
X-Received: by 2002:a17:90a:8c14:: with SMTP id
 a20mr29367947pjo.167.1623213403751; 
 Tue, 08 Jun 2021 21:36:43 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:43 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:56 -0500
Message-Id: <20210609043613.102962-15-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/31] drm/i915/gem: Add a separate
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
index 61fe6d18d4068..f9a6eac78c0ae 100644
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
