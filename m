Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C14B43A1F0A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058566EB66;
	Wed,  9 Jun 2021 21:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715726EB60
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:30:07 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 m13-20020a17090b068db02901656cc93a75so2441902pjz.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 14:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7eTUFkifYg4qyfhm5fhERzc/Tf0nOJIkZRnSQ1FRjgU=;
 b=SWLsok6eApBieiqTDmEhXEDo812agMqb9+oln5RfIgDHx97JmVXJcasA65qjcRP3LB
 PVUluxk1UKP5ByHyiH/wxvawubb2t2/UGFZxYFwpjWGTlh30iA4r4ZgTUT+82h0R3hcy
 DsdtyEcG06bH25mW97vJvuOO+qt6nmeyWwKHPFULYflX0pLRpM/x6ngLPnShsVfUsRSa
 lbUm+NYKzr8xd0JYadRxD9JUagYKp0eXcRJssKLeyCWY++TkutpNlusMsMhJcNySVKkN
 whp3xl0jsSEXbfzJxwI+xKUBoriUKfFhiwBLOC3KM2Jm5V98mC+3c1ymGvwAypRPB/RI
 0YmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7eTUFkifYg4qyfhm5fhERzc/Tf0nOJIkZRnSQ1FRjgU=;
 b=pstnRNNcK9d+CZDjo9V+ItWWfhiVSfezHALAHQSzBge7RpHxIAkv2SwWfFr93LQjrb
 VX3ywHjqMw7iZfx7SiMG5lTZvqG3p8FyYD+ibZaU4b54uSKKS049q7xTbYW9g2BWSNkU
 9FMwpDi+OqdtZhYxgfPSwTL3DrsgM9xp3+znf6WO5bXH/aLPpqpSNaNYo9yaxxZ6jzvu
 SFLGpUKRsvXb1hVoHsN0SarICfbnqHuNs40XRbSh+FOj8uCajBkqopSBtKNsHdnE5yct
 GU+0y6hTl/Tjsd0+/OYh0LtL6dNknbIu3eR7NhiCuj4igYRtVIfP93BdARgONpbbWvko
 lTxw==
X-Gm-Message-State: AOAM5302T20zdcExIwsQEHauiRpMfC7vQ3sZGPdrCv08qS3TmIDB/Fz0
 08kl1zwQQIOXsfLTNuTn+w0iyA==
X-Google-Smtp-Source: ABdhPJzN+jJFtIPgWvB61RKHIn33Jbsyu+oEOriZLjg80H9GZmqcrmbge4sVoM+mnRnNDzHS1BXoTQ==
X-Received: by 2002:a17:902:ed86:b029:10d:81ec:9087 with SMTP id
 e6-20020a170902ed86b029010d81ec9087mr1533757plj.0.1623274206878; 
 Wed, 09 Jun 2021 14:30:06 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id u14sm519133pjx.14.2021.06.09.14.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 14:30:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 16:29:55 -0500
Message-Id: <20210609212959.471209-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609212959.471209-1-jason@jlekstrand.net>
References: <20210609212959.471209-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Move
 intel_engine_free_request_pool to i915_request.c
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This appears to break encapsulation by moving an intel_engine_cs
function to a i915_request file.  However, this function is
intrinsically tied to the lifetime rules and allocation scheme of
i915_request and having it in intel_engine_cs.c leaks details of
i915_request.  We have an abstraction leak either way.  Since
i915_request's allocation scheme is far more subtle than the simple
pointer that is intel_engine_cs.request_pool, it's probably better to
keep i915_request's details to itself.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 8 --------
 drivers/gpu/drm/i915/i915_request.c       | 7 +++++--
 drivers/gpu/drm/i915/i915_request.h       | 2 --
 3 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 9ceddfbb1687d..df6b80ec84199 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -422,14 +422,6 @@ void intel_engines_release(struct intel_gt *gt)
 	}
 }
 
-void intel_engine_free_request_pool(struct intel_engine_cs *engine)
-{
-	if (!engine->request_pool)
-		return;
-
-	kmem_cache_free(i915_request_slab_cache(), engine->request_pool);
-}
-
 void intel_engines_free(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 1014c71cf7f52..48c5f8527854b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -106,9 +106,12 @@ static signed long i915_fence_wait(struct dma_fence *fence,
 				 timeout);
 }
 
-struct kmem_cache *i915_request_slab_cache(void)
+void intel_engine_free_request_pool(struct intel_engine_cs *engine)
 {
-	return global.slab_requests;
+	if (!engine->request_pool)
+		return;
+
+	kmem_cache_free(global.slab_requests, engine->request_pool);
 }
 
 static void i915_fence_release(struct dma_fence *fence)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 270f6cd37650c..f84c38d29f988 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -300,8 +300,6 @@ static inline bool dma_fence_is_i915(const struct dma_fence *fence)
 	return fence->ops == &i915_fence_ops;
 }
 
-struct kmem_cache *i915_request_slab_cache(void);
-
 struct i915_request * __must_check
 __i915_request_create(struct intel_context *ce, gfp_t gfp);
 struct i915_request * __must_check
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
