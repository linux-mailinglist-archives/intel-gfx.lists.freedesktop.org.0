Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F26963933C9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D50B6F449;
	Thu, 27 May 2021 16:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B0C6F441
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:03 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 lx17-20020a17090b4b11b029015f3b32b8dbso2754755pjb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tDMhkOEhR69rFkKqEjxm+uXyTsOYbw5gWe71Q+ugbFs=;
 b=QtylRmiFARzPHYGLsbuhvJxF+7WubCKPaWFW4CyjleoWDvemk48kvMSc717zNs4Vo4
 JzBq5MJX5xbR5D48gnZa5dsw9vk9LA74bvUCRGEDrCOWe6PeKSDJaAE9dzCL2iijSo2U
 TrtzKkIp3JdQ9ZmSbE5Yf8WY9QnpWgktz6XqQLrXYRCzTK52lildl48pPtXo1JVLchNJ
 VnLLC1cWvYYqa+LmPQbDv5u7Kr++io9h2UkLmXJuN162vjLm6NrNq0Mu6BGLfLgUykbN
 TDijcDuLOJq2OB/Kn+ZTcnZLajIPg1FELvmwLqiMLI7jVfS/VCvTIEMfZ4Fqlmv8QRrp
 1kEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tDMhkOEhR69rFkKqEjxm+uXyTsOYbw5gWe71Q+ugbFs=;
 b=InZ/BCzfTH92aY2a0nj/RFMQOY6AUlARLBlNx0xnOCzZVgNTCoYRMXtpDYjQQR85TL
 ccTlEtfzBcVwkxuxVmcNAk6FXUUiE2XZL4AlAENyuyzbrHdT+i9BUe3fLy4JibAA5ZLY
 wnDoPq4ICob1LoogNqeQB+8VJEjL/3diB9SwGfHwFKwah1a+Iu324uMNjYj77/7lQvab
 /Uc6NS6VbqzPRvNn/iDulLR9mHI8EPPwKljd6d4k+9Y7zf11Uyc2ftuP7AsZ3cIfTsin
 Tc2Mu3wSkrv3KgooFfXGj5ROddEfADPPffUdiN9RfHwNevU/6+6j7XblEdKhB9JMqr7c
 sz3A==
X-Gm-Message-State: AOAM533xVTkio2kDNsOeeJn3R/qy83Z57U8RaG91fm9mNZpyUONqNDC1
 hxJn2i5HjjGbnfJxQqpgJX+huaM1SdtOSQ==
X-Google-Smtp-Source: ABdhPJzZcm+Sqxk0k8LlUbl4TvlVdUxNpstzQSzQqnDoG7/iwk2NTGCS/qCvteqbuktU+3hd6TalWA==
X-Received: by 2002:a17:90a:aa96:: with SMTP id
 l22mr10167363pjq.173.1622132822889; 
 Thu, 27 May 2021 09:27:02 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:02 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:26 -0500
Message-Id: <20210527162650.1182544-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/29] drm/i915/gem: Return void from
 context_apply_all
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

None of the callbacks we use with it return an error code anymore; they
all return 0 unconditionally.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 26 +++++++--------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 9a8a96e4346e4..6f1e5c2c5b113 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -718,32 +718,25 @@ __context_engines_await(const struct i915_gem_context *ctx,
 	return engines;
 }
 
-static int
+static void
 context_apply_all(struct i915_gem_context *ctx,
-		  int (*fn)(struct intel_context *ce, void *data),
+		  void (*fn)(struct intel_context *ce, void *data),
 		  void *data)
 {
 	struct i915_gem_engines_iter it;
 	struct i915_gem_engines *e;
 	struct intel_context *ce;
-	int err = 0;
 
 	e = __context_engines_await(ctx, NULL);
-	for_each_gem_engine(ce, e, it) {
-		err = fn(ce, data);
-		if (err)
-			break;
-	}
+	for_each_gem_engine(ce, e, it)
+		fn(ce, data);
 	i915_sw_fence_complete(&e->fence);
-
-	return err;
 }
 
-static int __apply_ppgtt(struct intel_context *ce, void *vm)
+static void __apply_ppgtt(struct intel_context *ce, void *vm)
 {
 	i915_vm_put(ce->vm);
 	ce->vm = i915_vm_get(vm);
-	return 0;
 }
 
 static struct i915_address_space *
@@ -783,10 +776,9 @@ static void __set_timeline(struct intel_timeline **dst,
 		intel_timeline_put(old);
 }
 
-static int __apply_timeline(struct intel_context *ce, void *timeline)
+static void __apply_timeline(struct intel_context *ce, void *timeline)
 {
 	__set_timeline(&ce->timeline, timeline);
-	return 0;
 }
 
 static void __assign_timeline(struct i915_gem_context *ctx,
@@ -1841,19 +1833,17 @@ set_persistence(struct i915_gem_context *ctx,
 	return __context_set_persistence(ctx, args->value);
 }
 
-static int __apply_priority(struct intel_context *ce, void *arg)
+static void __apply_priority(struct intel_context *ce, void *arg)
 {
 	struct i915_gem_context *ctx = arg;
 
 	if (!intel_engine_has_timeslices(ce->engine))
-		return 0;
+		return;
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
 		intel_context_set_use_semaphores(ce);
 	else
 		intel_context_clear_use_semaphores(ce);
-
-	return 0;
 }
 
 static int set_priority(struct i915_gem_context *ctx,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
