Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD7D369CBF
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC266ECCA;
	Fri, 23 Apr 2021 22:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107DD6ECCC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:32:09 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id cu16so21823717pjb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kn5CsDMNBpi2mH91srGw+Zwyr/xxCRDKXBAWrlIT+Us=;
 b=BzDy6Ra72qeVbMZ09gq68LWV7+Uy/mTXyHGqUAk7GyfKggaOTTvojOTIIwBl4n9YIk
 HaWEJR/s2T75+MbQTovpcB8a6caoYtCqLb7wHt89lGkaMP5gldCQIK45BoBZ/lXk0sjM
 bW5LmcwGzk1tXRpW3KnCR/bBrUpCg3ymOt4445v6pJbzLj1skb2WZ5+Qmjmyh138vc/d
 GSp8Zuxpc3GMzPJgE/Jv9jVhtxlS8YuKdFfQAOSW6qNxy1c3FiWbOsqQjDWoSPy4AYSo
 YbwfYOUir6Lcetk4E5VRWodvd6dBVlwzpNnGVv0v6yVRvCYO9O2HExLW3x02kq2lN1NS
 NovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kn5CsDMNBpi2mH91srGw+Zwyr/xxCRDKXBAWrlIT+Us=;
 b=cO8Qi1crAm4yFDyG+fhWXfheACyy7jTuS74nq6AxHmOo1zIpJbmjdwWdJEp4l13MBp
 /jYMQoOcdYfkVNGwMrpdbkzrx1Pz8h9DAIcavcDh1yvJoxp/Lcl9oP1IHtNh8NuzC6do
 0YWpGa7+O0YifU51thdufOyabh1P9WWro7vTdJQXmrUwRQY0isG57iwyxEdLEwiJJifQ
 9pNrYcZ+78pnAfDBnNf/SUlMOzJ/DPngVpKMbP+2RYw5Rx1ky0NPhnxKfL/S692q7cJN
 NW8axpJyMjbDkiysAOgxYNtKRc+6x1SLtX7gG01VJ7znb+wg183KptLX1nGB7Xag2Pba
 qyqQ==
X-Gm-Message-State: AOAM533rrutZb9ekQmuoRvBtBagQjU74YAJqWXTM19UNcC7O6ctvzNXV
 J0vec+TLUdDDTZKh6gXxuK09JBhR+FIgJA==
X-Google-Smtp-Source: ABdhPJwfPvj3mJPj2e7va2kYOPh3RmjX3omFjuZNHTxxJ3AurcU1UCwyl36Iqm2kTlUl1UdfKZRumA==
X-Received: by 2002:a17:90a:db15:: with SMTP id
 g21mr6656186pjv.113.1619217128091; 
 Fri, 23 Apr 2021 15:32:08 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:32:07 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:30 -0500
Message-Id: <20210423223131.879208-21-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/21] i915/gem/selftests: Assign the VM at
 context creation in igt_shared_ctx_exec
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

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 76029d7143f6c..76dd5cfe11b3c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -813,16 +813,12 @@ static int igt_shared_ctx_exec(void *arg)
 			struct i915_gem_context *ctx;
 			struct intel_context *ce;
 
-			ctx = kernel_context(i915, NULL);
+			ctx = kernel_context(i915, ctx_vm(parent));
 			if (IS_ERR(ctx)) {
 				err = PTR_ERR(ctx);
 				goto out_test;
 			}
 
-			mutex_lock(&ctx->mutex);
-			__assign_ppgtt(ctx, ctx_vm(parent));
-			mutex_unlock(&ctx->mutex);
-
 			ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
 			GEM_BUG_ON(IS_ERR(ce));
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
