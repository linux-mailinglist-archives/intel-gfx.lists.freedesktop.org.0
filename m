Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C70473A0B83
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1A96ECC9;
	Wed,  9 Jun 2021 04:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD116ECCA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:55 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id l184so2852122pgd.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d6LSEZKBAhdZjMmY2eIdVyTStZG1ZTtq+r153OUT+pY=;
 b=p0jJe2rJC70Ncot1gsFl9OOINmhd7pi1hI3Dffg2ASBXbACxZ9ukD7Ntzt/hs465W3
 zxBJx/kQiXM3zeXzVqMJTbFXHXwdTtGjBT/7KA/lcArO/iVfcSfAxmvuJgZvPNrdr9ub
 9krPlOAz0d1VOTYpWUdkCKS22Nl8gNZUY/681IxYQwkAHGdh+cAMxQsjNyjqB0dvYv/2
 qRf5PdR/ymb9RPWr8wjO1yITKHnntHNTzvH5QH9XR8uPP85ZdexTPuJjbSjKjS5Z654d
 ghc8IS+Iqj71/7mLa2yP1Al3yKLiLIx7kHS3NCC+a58Zm9/x1p9xfEfOvcnhscaIn88s
 XlbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d6LSEZKBAhdZjMmY2eIdVyTStZG1ZTtq+r153OUT+pY=;
 b=uWyTW7JoHRMWl/Up6AuUvrCm+SVr1pH3wuIU1Z0/9pUh99+fDpMvAauC4IeOKi0LJd
 2BzNrtrU815WH6AUE9HV6qZjmRLFV1gJaxIm8GubdP5NeRPeSgUWq0lXhlsydzr99p4O
 3KDP2/gyRmtZMYVmDCwx1XNWi42blCVVYyFA2cRs2Be0uoVAQYanJ54zKSaU4YgsD8jy
 OZFRoPZKBfBl+zDyz+WdOnvtIfvBdiLyFWi4n+7/BLvUIzPQ+wYseCZU1+hyUwwmf+42
 F1DAAHgUz7dgvGD9cpiazP5WCmL8ANGbQdQIZ/hxpHvfAUFmfM0ajC4oScXqGfuK8PkP
 0ATQ==
X-Gm-Message-State: AOAM533CZB3ePu7amg+xzfiRQEtmKrhaHF+aYJFxWD/YC6Ggm0xcQSlJ
 A4BqU0wnZBmSlf0bhJakpVR6eQ==
X-Google-Smtp-Source: ABdhPJwLInceztcGMzjBrotjkDLmBeFxb6DkCj4Dr4EfV86OODcSEc9O254J5k808pVNIF25DdSaDw==
X-Received: by 2002:a63:7e11:: with SMTP id z17mr1833877pgc.9.1623213414812;
 Tue, 08 Jun 2021 21:36:54 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:54 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:36:02 -0500
Message-Id: <20210609043613.102962-21-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/31] drm/i915/gem: Make an alignment check
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
index 8df284dcfcf3a..de2601c81f603 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1763,9 +1763,8 @@ set_engines(struct i915_gem_context *ctx,
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
