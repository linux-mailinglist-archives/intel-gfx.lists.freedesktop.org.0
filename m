Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A2C3A1C31
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50126EACA;
	Wed,  9 Jun 2021 17:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B876EAD2
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:57 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id n12so20101699pgs.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/MxEGwIIKD5mMqGy5bstKJNNe9nNe4pOifXOqautl+c=;
 b=oOmodPJy9bMoPFh8GiArhk3KjeXNK2yUAYMxOoa04qdhRrBWmpHRulhNPepqaScQ5E
 IOy48hkNKqCdDDPYv8y77GrHhWDDeSZbxHZ3UPLFuR4xzCKhjoGf8sNO1unXtljsFl9M
 tC+hGy140M+f+Xyorg5ki6rK6onfW6sUhZWOKe2xnXnjrF3V3vMU/uCGSnR7amtUIz8o
 JBFXbbvvXh1We0hLtKDNE72wYTgk93BXHncmgz73IlpHAIhrWe/AAlPdUMe0qR/XWqGH
 BVmeGO0fNq0/C8Vqfvs3peJtNoaJPwlguzmfxXNwt5tTGL7mkKHFn/oMsO941p5NJfgI
 Ipcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/MxEGwIIKD5mMqGy5bstKJNNe9nNe4pOifXOqautl+c=;
 b=oRZtHiiDV0i27LN6VbDHOMGFvUCYzzqnbRrpb3Y7xC0P8dvVsQzbDybnr1b1Jg4nsk
 NchgPwgjBsdybRvwNbTAlfIYD1QXSs76eAVtCI1P42TFJvA9guIjqXcXhjOu+iI0Ej4V
 kFB8lXkVEPUydipo31glRUGxOiQlcmpBpbyMH4VnPheXkgicm69/17cwyYydQtHydz3V
 blEhllYvMV0s6N7OTPeY5jL2+6Gt3S5inDFWbr6H7p+HJ0vWkxnEJURNbe6In7xWRzSv
 JJqSA9naHeHx6Qc9EvPFrfRHSiY394+e7vyEntmO52fNUGW8Eph/r5wbJLGHC/av4AIZ
 pmOw==
X-Gm-Message-State: AOAM532yD0EL958PyLJ+QN5SzPEAsEJyWIffJGGUuCimDyOHVlQxIVUT
 iuOrUWIWdoHd6rthKjn5LgLB+w==
X-Google-Smtp-Source: ABdhPJxh6o8pGZtBPv7KBroeZLV7FyRKXWcFREqeltEdqbDOFZtmYF7LAo1zl8ZD8/T2LOUJZ9iCEA==
X-Received: by 2002:aa7:998f:0:b029:2ec:9844:a549 with SMTP id
 k15-20020aa7998f0000b02902ec9844a549mr916037pfh.65.1623260697396; 
 Wed, 09 Jun 2021 10:44:57 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:56 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:07 -0500
Message-Id: <20210609174418.249585-21-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
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
index 8e7c0e3f070ed..c9bae1a1726e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1764,9 +1764,8 @@ set_engines(struct i915_gem_context *ctx,
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
