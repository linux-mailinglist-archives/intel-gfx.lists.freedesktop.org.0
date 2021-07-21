Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 453BA3D15A7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868F86E991;
	Wed, 21 Jul 2021 17:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2CA6E98A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 17:55:46 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id ay16so1332893qvb.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 10:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EoDFhw4Yf6mVRdX8jKrsmhhWKMjigC0f9LN3iXc51/c=;
 b=cg7kAhAaynCph+VXjbRGMYkIG2dR1MaRPWuhPEKB64q493qSEp8cdveMLRq1Q0sCxI
 KpokDyQKkSkzRYK8QbYGv3uBHQ08Ws8KwgmZHxOh0sFmQ5uXo+weKN29q3Fg8ksuTkEW
 PedUNhtL31a55MK4Bv/34fMWYnmGfTXK1i1j5eKM+Hcat4N9U+ZmbvFX+UQY9H5RJg2z
 Ts2fsRgQmC5590a4NId2xdFAfSolJQK1zU38uazXRq0ZmGjrkPl/DKscXUY1YdXyxm9z
 inqGU4bJbLcQfy9RLGaFYuFoQVBwCxZBGLxp+tg3Za0yHS0GKOHUAeK7sl4gz8x7HYFL
 JhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EoDFhw4Yf6mVRdX8jKrsmhhWKMjigC0f9LN3iXc51/c=;
 b=tgvNkrOFjvcQ3xAHl/5H6LG9eAUiRMGIiu3p2ZwniwuJHg8NT4l8owR62Yb+1KM347
 Zy2zAyjWdEsmHuDLqltWRiEdXbJtQ2EmG7h3akcGNhJ7W5Ls9lR6eOoON8jEpcjQ7QEF
 hIoAg/7GmDW+5t67oY3hJjvsUtGBCAlbQFIjGrLmKpytZvQPjYR17PjvBzoHAKwquRr1
 iwBbo+YwlaUMh1KqlnwwOOGW5030rCNE4slMS52n+TRL6H1loxDLXduC9JPeXYjqR7xd
 8cAaudmCCNPodHVBwr4bBlhb9n5Hp72D8ctTuo/DMO5bxrnqSc6e7khWFwVfgicm671Z
 YeVg==
X-Gm-Message-State: AOAM532YBVP4cOkoLKCzh8NVTHTgsyZMEOA4IcwfRTWd3OIyF6DtIxA5
 jGVWJbusqkk8US8+pgnYET1ZEw==
X-Google-Smtp-Source: ABdhPJyj8FrqECd0pXbY6TjpkVUf88cbq/zCgT6gW/7hA77lt/WAWvkFBE37PqNFPML9rJEZ4npT4Q==
X-Received: by 2002:ad4:4bae:: with SMTP id i14mr37288441qvw.24.1626890146181; 
 Wed, 21 Jul 2021 10:55:46 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id w26sm8803374qki.6.2021.07.21.10.55.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Jul 2021 10:55:45 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, ppaalanen@gmail.com,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@linux.ie,
 daniel.vetter@ffwll.ch
Date: Wed, 21 Jul 2021 13:55:10 -0400
Message-Id: <20210721175526.22020-4-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210721175526.22020-1-sean@poorly.run>
References: <20210721175526.22020-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH v6 03/14] drm/i915/utils: Replace
 dev_printk with drm helpers
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
Cc: intel-gfx@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Use drm logging helpers to add support for the upcoming tracefs
implementation.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20200608210505.48519-4-sean@poorly.run #v5

Changes in v5:
-Added to the set
Changes in v6:
-None
---
 drivers/gpu/drm/i915/i915_utils.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index f9e780dee9de..d858c92c6997 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -30,10 +30,9 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
 	vaf.va = &args;
 
 	if (is_error)
-		dev_printk(level, kdev, "%pV", &vaf);
+		drm_dev_printk(kdev, level, "%pV", &vaf);
 	else
-		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
-			   __builtin_return_address(0), &vaf);
+		drm_err(&dev_priv->drm, "%pV", &vaf);
 
 	va_end(args);
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
