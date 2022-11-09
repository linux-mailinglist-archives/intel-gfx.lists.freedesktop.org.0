Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC55562333A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 20:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8227B10E627;
	Wed,  9 Nov 2022 19:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E9710E626
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668021054; x=1699557054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6LAVoH57Z67SFgpBICBCC2rV+kEpQgeJZ63fSc0PrTQ=;
 b=XMkQwligsQHtKgYhSzTjd8843+GPzxAmtFaKDZ0jKCyzO3IhIpXFxvzg
 YyoaKAqvzSDRC4cM9z07kkVyIzeiHDfsou02/r/I1GhRfbhrQRps2AnJz
 PWgePvar9lv5qE+jg1jzTM3hh6Wm77z2pwKzbrKRrVUHHIdumHVJeg9Mu
 2iwglRanpmoXu7bARmmrhODVcTt9m0+L+KBFU+qFCO+d5sGj3L8osYKsg
 JBCEDrr3eoOExxI6bjdVw6kV5CaeC4pzYrSxr80qzDxAeY+/7Ggk+GVMr
 a/qX+IAP4yD6RfI6ACfEUUfNw7rELtOqbBjHv3rpnjT2NHmL3gQYFrvNH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312874878"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312874878"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="668105979"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="668105979"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.6.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:30 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  9 Nov 2022 20:09:37 +0100
Message-Id: <20221109190937.64155-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
References: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Fix 0 return value from DMA fence
 wait on i915 requests
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to the docs, dma_fence_wait_timeout() returns "0 if the wait
timed out," ... "Other error values may be returned on custom
implementations."  While it is not quite clear if a custom implementation
is allowed to return "other error" instead of 0, it is rather clear that 0
return value should always mean that the wait timed out before the fence
got signaled.

i915 implementation of dma_fence_ops.wait() used with request fences,
which is a transparent wrapper around i915_request_wait_timeout(), returns
-ETIME if the wait has timed out -- that may be considered as acceptable.
However, it can return 0 in a rare case when the fence has been found
signaled right after no more wait time was left, and that's not compatible
with expectations of dma-fence and its users.

Since other users of i915_request_wait_timeout() may interpret 0 return
value as success, don't touch it, update the i915_fence_wait() wrapper
instead.  Return 1 instead of 0, but keep -ETIME in case of timeout since
some i915 users of dma_fence_wait_timeout() may expect it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f949a9495758a..451456ab1ddef 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -102,7 +102,7 @@ static signed long i915_fence_wait(struct dma_fence *fence,
 {
 	return i915_request_wait_timeout(to_request(fence),
 					 interruptible | I915_WAIT_PRIORITY,
-					 timeout);
+					 timeout) ?: 1;
 }
 
 struct kmem_cache *i915_request_slab_cache(void)
-- 
2.25.1

