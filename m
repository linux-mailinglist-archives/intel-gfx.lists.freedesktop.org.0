Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 802A93C36E9
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 23:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72FFB6EB62;
	Sat, 10 Jul 2021 21:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59D056EB62
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 21:26:38 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 75-20020a9d08510000b02904acfe6bcccaso13669930oty.12
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 14:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=45bOLRN9YVIYbe76ALv944ijiFpGvJt/dysEPQc6ByA=;
 b=g3DS5pa1hQYtZkOWfeq639THCis7EEdUnBQVeeXDfZcVzwQj+xcbS5Brc2lv51oVKe
 jDhTug5Crq7+AKyYQGhznRCmYsXjC1DuDcB2GuZaOC90YmY9dSWAVkcyvePnKfKV8+j6
 tky41jZ05u/JeBWQ1CgMYESijB5PNTJanNK/bZgy6kf47mWKLKURYXEB7AjIRFaPfrDk
 d/Sdx834pN0dIzuFQEYHOhgyJGvMYlz4u/N4y6F6/UJkFPJtg6YswhysvUYeLbVBQcPp
 IIjIokA/C8dLMKWzmRreb78z0tCGGR8ddJ0Ax1XkgbSmSD0z9mYg6AC9Kd8rTeA9gumx
 Indw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=45bOLRN9YVIYbe76ALv944ijiFpGvJt/dysEPQc6ByA=;
 b=skPcnliZ2nu4lO2CDmaYak+xYx0xgZcSfTXEl0ntJ/pP3yEc6oKbtKUZT3mSJn+kZt
 ce1cT/vfxPbOJU8iExBHweqe2NZXiKHljzhMPmZKlGyDPlEeiig3Ud1CXNENYLmyM3eb
 2sWVNpI+fynwUabasmrGUgaI2XsHKVKGkt3B9u8qMMHjleFIOLFQv9Inq1f87Mxu0HLQ
 kzbsnlq+3wF1o9sTKr+sofmAHUuIVYFBnNj1s06kAWUocGsUhB3yXdGWKW48rJn/NYQo
 TYETYPGvBlji2uqd6ehs5sLQ0aR7ELJSP54Vx+MR2CIGkxkOWKSjM+vOT4jd0UxTJt95
 Pp+w==
X-Gm-Message-State: AOAM533/+81FffqMa/M2gzGgnLIRYVr5k3WdZe9t0+nNK7qvEKH6Vwy6
 zn15GBQUCScn+MutZ6A0UDi31fMh0MXq4A==
X-Google-Smtp-Source: ABdhPJztfVpTBy/bcYNpoOkjUnp5O7VxAGEtG3kJSvBXlZixomUuuvujcd0UmolvtbKpRuUULqzGAQ==
X-Received: by 2002:a05:6830:1598:: with SMTP id
 i24mr15675001otr.155.1625952397474; 
 Sat, 10 Jul 2021 14:26:37 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id u18sm972797ooq.36.2021.07.10.14.26.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 14:26:37 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 10 Jul 2021 16:24:46 -0500
Message-Id: <20210710212447.785288-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210710212447.785288-1-jason@jlekstrand.net>
References: <20210710212447.785288-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Don't allow setting
 I915_CONTEXT_PARAM_VM twice
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

Allowing setting it multiple times brings no real utility to the API, no
userspace relies on it, and it does make i915 a tiny bit more
complicated.  Let's disallow it for now unless someone comes up with a
compelling reason to support it.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7d6f52d8a8012..5853737cc79f3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -319,7 +319,6 @@ static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
 			    const struct drm_i915_gem_context_param *args)
 {
 	struct drm_i915_private *i915 = fpriv->dev_priv;
-	struct i915_address_space *vm;
 
 	if (args->size)
 		return -EINVAL;
@@ -327,17 +326,16 @@ static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
 	if (!HAS_FULL_PPGTT(i915))
 		return -ENODEV;
 
+	if (pc->vm)
+		return -EINVAL;
+
 	if (upper_32_bits(args->value))
 		return -ENOENT;
 
-	vm = i915_gem_vm_lookup(fpriv, args->value);
-	if (!vm)
+	pc->vm = i915_gem_vm_lookup(fpriv, args->value);
+	if (!pc->vm)
 		return -ENOENT;
 
-	if (pc->vm)
-		i915_vm_put(pc->vm);
-	pc->vm = vm;
-
 	return 0;
 }
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
