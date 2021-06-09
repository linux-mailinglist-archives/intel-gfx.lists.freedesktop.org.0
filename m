Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F403A0B62
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401E76ECAC;
	Wed,  9 Jun 2021 04:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D2C6ECA8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:28 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 z3-20020a17090a3983b029016bc232e40bso628057pjb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G+hLgeiGvYpyFrjLGrbFT9e+VhCR6ZRDXGOupSKTV44=;
 b=UFtJZS+7BkLNl6zQUgx+bs95hxmzoTh5tTxJKCTUvqMUPIBo/+YKQHWLuc85YTkiLp
 PJOIEztGtdt/3ZxEUdToYp38LhEiYlFL+914T7c4E2CTyupEbkFF8leQ30cimyjwgB2J
 RWXQg2mowGXX57slDZHLSSwfUENbmGRSaLr2s9ZFf1jx8xaYHkrFw1IAT3nTQ4sKV/Ls
 LlD54BHklrBsflxy3i0isHspuxffjMPGfKy0k9w+Pktut9M3rp5EQfTw62O7fV8Xo3tk
 PHRQ/BD25JioLEeAhSp5g2TGDY6eLtp/9Xlg8Cs0mqVJ3u6PtUExnxJfUKtzQ6X1AMTr
 S/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G+hLgeiGvYpyFrjLGrbFT9e+VhCR6ZRDXGOupSKTV44=;
 b=XJohG0NEfVm0ElRyd2NdZRcdKBgcJgwUuXL5me3vshIptK3mHM+mLrVvwpKub8LoXc
 MKaq8VszJ9SvLCzwiu1Y+17fCfhm4//JjzXSioWIzBBi8NJWGcAJ32Is+eHbj7yEpZE4
 KB82zqKn81cVoTuOXXhKrbQ5r6hEh4CpFHzK/Nhw2tTcrSh1FbQbuE8UauNNS8f0IHPf
 4mUFaXpla9LEPg1RXByKXO1TO+10CKyH0wn+Nsf2pBk+lQ8qzq/YCkbf0TkVFLN5DEIC
 tekn85XWM7N0KBdXSCo5ElYR6qP8kMSII5VKgwAXxwhnQlxUx6+ExiignUb8EZlHBFGb
 ql8w==
X-Gm-Message-State: AOAM532p4zR+SUQhC8Jg9yhNSrNj0uYaRtHFHqW23/8OWGzlZSofOIbN
 L1KTI33p2TJ1XXPWNB4o3RWwSQ==
X-Google-Smtp-Source: ABdhPJynLs5Ui/Ni4hh1Fvsm1ee4wK+kKDa6RzGzkYmxb7By11b08/Lv44dvDpV2IWauYEYloQAAlQ==
X-Received: by 2002:a17:903:22c6:b029:10e:b813:eb37 with SMTP id
 y6-20020a17090322c6b029010eb813eb37mr3238800plg.47.1623213388038; 
 Tue, 08 Jun 2021 21:36:28 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:27 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:47 -0500
Message-Id: <20210609043613.102962-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/31] drm/i915/gem: Return void from
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
index 9750a1ac7023e..3503d46c88cbf 100644
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
