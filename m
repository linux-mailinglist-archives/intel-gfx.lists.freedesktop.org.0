Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4447F369CA8
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E84C6ECB8;
	Fri, 23 Apr 2021 22:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE386ECB6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:31:52 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 f2-20020a17090a4a82b02900c67bf8dc69so1957075pjh.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ma+rRutCb3Np4s5BqSjRFviPoeCa4Gjfgvb/I+UNmhg=;
 b=N71bO9/P9B5Jc+nxx044jW2XVLbU/Nvll4YzI68RtEMussGiPMuBlMJJtoT6OAPRFa
 VC85c81NbZ8D9w0WnpqnBmN9hP6hEzLZ+e+RzblR0ufQO5L40TFNmWYfCZOg0UZo0edx
 yDOJi7g9xe+uDpgHr9KV/qiz9Jm5Y7qMsGjDV5V9adXvDoUAZxDrtgyQUdKSVlpaW6/8
 acorOJYvKfOP100CfEHuvYr8qBeZ964POnzGAWmg4u15cWiFq+i3lI5SeESnse4BCMrt
 jhLog7Nuhx0z0XhCo4pVu5zPnxcO4th89uvfIXQrkRx0yqyDk/eo7utH1DHfgQ6/WccM
 SfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ma+rRutCb3Np4s5BqSjRFviPoeCa4Gjfgvb/I+UNmhg=;
 b=eU69UxLRmSQSOPsUOKBfYyuT4LL1lXb66MJWn+qaZ/Lx8wSc2Kja0V36jSoX/xyfUv
 24IBvJY6IQWe4PTNOTwVSZtl1tggVolUR2AU7ifoaPS1SQsh41aKkNXdmAZrYChkHQqZ
 0O4oZGP84oMWEJ9TXseGOjgUIzzbBOHO++lQAyP3roJrXUl364Az2cSajYt8TSYDT90I
 Y5cyrAk4gP7uJ3zP26zibfj2OULbFCYclrhoEYZSN9X+8L+RqhdFziyWlF1c8tbIZOWd
 nJU9aOoP9hIOyEtcvkGwFpKdyUoH75ni5zQsr/LBORYTohMR1KzyeUoYRULXV1+w8m3E
 Ueww==
X-Gm-Message-State: AOAM5332/aGe+8d0KH0GlmrPo7dBKLCXT7wH4ao1sPwU2k8r03W2bTea
 zCx0dd9iI5LznF/Bs9giUxEXc1iYRqFogw==
X-Google-Smtp-Source: ABdhPJxiOdy+1nMvIP7uEoxmDhQb1Z7eYEnvQJslzqpIATO6sTLK7CMyrueEi86qsEABGTHmkro9gQ==
X-Received: by 2002:a17:90a:430e:: with SMTP id
 q14mr8340009pjg.189.1619217111203; 
 Fri, 23 Apr 2021 15:31:51 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.31.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:31:50 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:19 -0500
Message-Id: <20210423223131.879208-10-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/21] drm/i915/gem: Disallow creating contexts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's no sense in allowing userspace to create more engines than it
can possibly access via execbuf.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5f8d0faf783aa..ecb3bf5369857 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1640,11 +1640,10 @@ set_engines(struct i915_gem_context *ctx,
 		return -EINVAL;
 	}
 
-	/*
-	 * Note that I915_EXEC_RING_MASK limits execbuf to only using the
-	 * first 64 engines defined here.
-	 */
 	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
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
