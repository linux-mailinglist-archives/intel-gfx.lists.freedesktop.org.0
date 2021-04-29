Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4564B36EFF9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9F06F469;
	Thu, 29 Apr 2021 19:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EBD6F465
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:06 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id t13so9072222pji.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DxHFyR56JHQIHWQCaKRZay6PSQ7IFQJkTDKfmL68Bg4=;
 b=fcSMUcjrOyKg0a6g+w1jMhfb2Tc0gdrbjLOd+cJIOuh6cji5YtuLRgkLuYQ2OfLsyD
 xmFPRfX5ViO/zxWBk+Sij7Dh+uGSzibwZ3okQQVe2ZXEVbY2QHFf0OTr3GuokQzc0Q2H
 sqFe/QhijCSol3ZcOztsJq7b6vGob5pO8On1WyL7Vwrtcn0nWOEhMY/3vwOmQgwo+K27
 Ou4X6icYc0ms/SEsP6em0dARXKnGoiFI+98f73aphNfXVpR8mQRB0znnmyz3Rc00ufpl
 BBfFFzn3pmj+Q3uOfgzvQdehLDPSf0UnEHM77R/IFpsJdWkCjTIKr3+ujrPpJz3pV8kA
 tV+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DxHFyR56JHQIHWQCaKRZay6PSQ7IFQJkTDKfmL68Bg4=;
 b=myOGh4kHxaQxNPD+zS4BvWfXEm4CSEFt7z4gMX3+hhH0QRcMbtbSLBb3x42DcrfKL7
 t3hRHTxY0jz9/xsBt04KtiVjgc45K7CzqluxdBZhY693G1BjeWddsVNdBTPHhzoATf8L
 rDr8PUDaPlzyNyUqSGSO6G5POWN35y3dTAg61Eai52w4CZIe10/YN1eTVuweKho1feEE
 Xh7AEQIxlwAOh8lV9MjNNAOQHFdVnV5sH8KS86OLT48hjWxuTQaNEtKE7zs8qDwUF+Wa
 8NQxFjuDaD99YxwWgrLANZSRQv7Mqj3kaEvVBEaMH9MmD5P6LCR0bHWV8+7UuY0C+SM0
 u14A==
X-Gm-Message-State: AOAM531tX0GCkM1OsRECAiu4Qfvu0yQ54C4TX0fwTDb36D3p1kBe80a8
 Hsna+SzQML82MKDoMHoaROA7EJyMnzki1Q==
X-Google-Smtp-Source: ABdhPJzcrrHhHyShP9plz4tENuEqOX33XNkQtPpjeWBi4xmu6atea20fT2jX+Xo2qg3mGaQ11+6/6Q==
X-Received: by 2002:a17:90a:510d:: with SMTP id
 t13mr1275591pjh.97.1619723045992; 
 Thu, 29 Apr 2021 12:04:05 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:05 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:27 -0500
Message-Id: <20210429190340.1555632-13-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/25] drm/i915/gem: Disallow creating contexts
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
index be42dc918ef6f..8e254d83d65f2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1640,11 +1640,11 @@ set_engines(struct i915_gem_context *ctx,
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
