Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977E43C1677
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7286E913;
	Thu,  8 Jul 2021 15:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998C66E913
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:03 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id u11so8323601oiv.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NoUJSQXqxS/dGmvWvEvSXXen74qdT3GCKnuGPoCodgM=;
 b=Oxii8wmzKijpJp+CN1swluyNjkLaok/bXzHBVcd24wGhGkPd4ED3wcmK7NpEtCw+Ga
 KKvpWiUF917SUZLOrXKR7M86Ni3qPC6jwHriUDsn1M8RDGC1LXPYDPqxYdT8Um37jgGY
 5NkHB3i6l40SQ64FUYifQLR6sxkwrywkdyceAzB5ltc4ELQE14ksnIvZydtbqPpMrX6w
 O6CBy0zDS8C376kRcknTaWL5Sru+uhYU7Y1G+MarDGRBqfgkUbNKTw9EPpJzg18JMw9w
 H1bR/fYBBCcrVbPAdvUQGrX77VZmJG9rNxzxjCNiBl9XOpaivlQuDXIOQd9cLv9vWWKh
 5BHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NoUJSQXqxS/dGmvWvEvSXXen74qdT3GCKnuGPoCodgM=;
 b=b0radZtrvlqyR1rwCE//y61i5bsjF3nt8yvssLxFCTyg33Osf86OPPIfJbumb5Es5R
 fSziLZPOwtNRWFo1y4kMzEQGrnvsnlNo12uAfpctGoz+0gGnVf8JpA30knljOsxKBWW7
 JC9thmNzqrSlenQwXHWC5czHHzmLUHhZZdT1BnBfTjXe0GqV+2K+J4kVrsN3mN4FxagS
 NXg4Sm0aZQV6d9H+DJ/WJV1c0h4HCBtIcxaWzkUIAKf/nv93dfzn+7QBKbuIs2ijH+17
 6U+X+4yhpYEVJP6nk8a4if51So2bLqGipiBimjouvE9hyY6z1Rj68Twp0vyEfwylthGH
 2caw==
X-Gm-Message-State: AOAM5302jXnvRClL0JSftPnNd27kjrBejKbRgZ8c+vG1gg+VV+/YX2FM
 y6B1dkakvqGJzmRz9eK2U5p8N/0Y1VP7IA==
X-Google-Smtp-Source: ABdhPJxbJfrtbkYnYorG4JsB6l0Ib6rH6oOiTZI8Le3yUH9Su+si0S9uBjb333QhWm8XdZQrWj+zsw==
X-Received: by 2002:aca:4fce:: with SMTP id d197mr17204971oib.16.1625759342418; 
 Thu, 08 Jul 2021 08:49:02 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:01 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:25 -0500
Message-Id: <20210708154835.528166-21-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/30] drm/i915/gem: Make an alignment check
 more sensible
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

What we really want to check is that size of the engines array, i.e.
args->size - sizeof(*user) is divisible by the element size, i.e.
sizeof(*user->engines) because that's what's required for computing the
array length right below the check.  However, we're currently not doing
this and instead doing a compile-time check that sizeof(*user) is
divisible by sizeof(*user->engines) and avoiding the subtraction.  As
far as I can tell, the only reason for the more confusing pair of checks
is to avoid a single subtraction of a constant.

The other thing the BUILD_BUG_ON might be trying to implicitly check is
that offsetof(user->engines) == sizeof(*user) and we don't have any
weird padding throwing us off.  However, that's not the check it's doing
and it's not even a reliable way to do that check.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 3c59d1e4080c4..f135fbc97c5a7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1723,9 +1723,8 @@ set_engines(struct i915_gem_context *ctx,
 		goto replace;
 	}
 
-	BUILD_BUG_ON(!IS_ALIGNED(sizeof(*user), sizeof(*user->engines)));
 	if (args->size < sizeof(*user) ||
-	    !IS_ALIGNED(args->size, sizeof(*user->engines))) {
+	    !IS_ALIGNED(args->size -  sizeof(*user), sizeof(*user->engines))) {
 		drm_dbg(&i915->drm, "Invalid size for engine array: %d\n",
 			args->size);
 		return -EINVAL;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
