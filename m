Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 148ED3933E5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C166F464;
	Thu, 27 May 2021 16:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8BE6F459
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:24 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id m190so337369pga.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AIDizxQ4UDUcjVr9hejmmeBEYh5jxyhNoh2wE4chMAo=;
 b=smTS9ICJ8Sip1NsKNWIkLO+F95kqyBVsHhaOMDgwx/fvz37vURWeYI1SpcqhQGKKCA
 EbfN1m2qwBjquj5ct9hB9R80k7VxioYoSIT2Rf+rAqze33MT74r4pqtHrk7GdGc4Vxoj
 bAy424a2dk5h3EyNUie95OntlZebehh3OncRQ0xxqoXNmMF094+lBOeCbmORTtXQnawe
 2RBXZlihJOUGDB4puxQSKdGy9lZGpCqaHDOYBvW9ygd1CbAKzgXeYzRpR71NXFPLN7Ml
 uRerM3gP95B/rBu0Ud9iXa1Q1l5dgrh2+EPuuIgGTRNfL0fAd6+9arcEKHtmlMccLCUQ
 qpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AIDizxQ4UDUcjVr9hejmmeBEYh5jxyhNoh2wE4chMAo=;
 b=RqYTQ/jlVr9ypGBQ4t+BR+uHi0VlgoTELJEF0tHMgB3qMkRDEyesRsgT/os87e+4Ui
 l+T5Qg/kfpoOzyCBNgg6L+rzDM4mE91poEr/38C8krMNNctecdHZLx8mNSuZGNQzBSPC
 5W6s4jgN1F5mwFW3UDeCdGwYGCQAMB7rVPfMOGhuCjCweaUGgKX+WCYPiqH+6Caw0GNI
 mw5HZNwIE0HWM42OhHXag9QNgi2aRU1e1vG5xLniBmSCpnA2RCyIsUMl91fEy4I86XLe
 2b9jI/WehXE+YMJGIZwph0EEL3fJR8jjH+PR1K/pZe/qKFwTKdTi1Tgnhl40Pk8Sicia
 pd/Q==
X-Gm-Message-State: AOAM531Y5qsrA3Wj1vo9DFyxgKDNJ9AZefbolwgwxVnop1u8mgvWRgXK
 2lU6b9dIFqFFZrpCQYtuQuFhHeKnW/VKlg==
X-Google-Smtp-Source: ABdhPJyK1EJ2dwQlTNhqf/FlfmQbzv0sbE7cUTNzJFYA9rnnZ/WOLdUG6cnuUU0jX5PDrjvOtuT0Ig==
X-Received: by 2002:a62:d0c2:0:b029:2d9:529f:f4ef with SMTP id
 p185-20020a62d0c20000b02902d9529ff4efmr4543244pfg.41.1622132843384; 
 Thu, 27 May 2021 09:27:23 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:23 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:41 -0500
Message-Id: <20210527162650.1182544-21-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/29] drm/i915/gem: Make an alignment check
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
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 12a148ba421b6..cf7c281977a3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1758,9 +1758,8 @@ set_engines(struct i915_gem_context *ctx,
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
