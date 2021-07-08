Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 389B93C1663
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353B66E8FF;
	Thu,  8 Jul 2021 15:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BFE6E8FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:48:53 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id z3so7451415oib.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p9LihMbkz0D/b2xxGApls+quCG+XTK2bjRKq93kZNxc=;
 b=ejeeRrBCxcV71b+0zKdd+CAMyzM+QaWLBKDEvU7XFDFDhtFLdovRADZqq2OqvfkSPz
 QNvpUGR2e6+dD+cSIFgSeZIvrC9vfiioWuTQPBR54Ve8uRSAnXuu+8EK830DkN+GFzhj
 RNvfo94inO/DNZGYTdRu2913ojTs7r+lVja5oCx8VxtsyUv9XtE51JwZ6Yt+HNsQ1CWO
 dbczHaf9h+zZ0qutfLi9gIKRsVLt9XOBeEylpO3/NKYx3PASEZObumn+ctRhfjY2ZQNG
 aJwtUWQwzUaaEK59ryK5eTlPpIa0OFaNyz4zZLdk//h6tSmso5XzK7AhUF0uHz6UQH9l
 5hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p9LihMbkz0D/b2xxGApls+quCG+XTK2bjRKq93kZNxc=;
 b=F8fJMZ7Ow4JInPYNddTVpnEn0VYjkq6Qev9O5vyiLEz3vd//9AK2DWDvsNYAJzgYjt
 kpR+3GoDbOBlivP0bbWIppjASDTE2r0Vf1u9qB9uY0VwwvVpZ3RVv04AEgUTk0VpCDbP
 hbNeiku/RBdcM63rqdDL9w3rdcXBuSaBg5EL34o44s7IWtGx2MN9lcABlX6XetnavJ6A
 KJGQ4VvbVqVsqxHQxEW3xdaQHgSb96xUc+R+IseX17KTL0isMDX61Bk/QYBswmlGRglR
 UpJzSOBu+dCZUDLZJjQAGb9DKjORIN9Lpl9eIdun4M+PnBW6eudchZ5tw7T3mOsXZE5X
 kJTg==
X-Gm-Message-State: AOAM5336FZDa/uIIx7XjTd9DIZSsu7P13awhRPr0DjTpoztXO1B3Lr1v
 3+iT4qgKY5st4cgihTFdQfWuKln5llBJdA==
X-Google-Smtp-Source: ABdhPJw02aU2H50NshOn2AYegMNk/ayuXJ4lk+tFrVhYUBPlmBeZ7LnDeX0qXX0wzmcGIDwWeZ2BCw==
X-Received: by 2002:a05:6808:159d:: with SMTP id
 t29mr23387217oiw.159.1625759332689; 
 Thu, 08 Jul 2021 08:48:52 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:48:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:17 -0500
Message-Id: <20210708154835.528166-13-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/30] drm/i915/gem: Disallow creating contexts
 with too many engines
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

There's no sense in allowing userspace to create more engines than it
can possibly access via execbuf.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5eca91ded3423..0ba8506fb966f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1639,11 +1639,11 @@ set_engines(struct i915_gem_context *ctx,
 		return -EINVAL;
 	}
 
-	/*
-	 * Note that I915_EXEC_RING_MASK limits execbuf to only using the
-	 * first 64 engines defined here.
-	 */
 	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
+	/* RING_MASK has no shift so we can use it directly here */
+	if (num_engines > I915_EXEC_RING_MASK + 1)
+		return -EINVAL;
+
 	set.engines = alloc_engines(num_engines);
 	if (!set.engines)
 		return -ENOMEM;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
