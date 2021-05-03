Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6613718AB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174146E8F4;
	Mon,  3 May 2021 15:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EB56E8E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:16 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 z6-20020a17090a1706b0290155e8a752d8so6004265pjd.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DxHFyR56JHQIHWQCaKRZay6PSQ7IFQJkTDKfmL68Bg4=;
 b=Gkcsx8sOXH5ML0aQsXT7y2mHgcRWQ5x0FJyLsmMyV7f5ev+3McK2W/nCtzEiaFY7x7
 qMKcoOCT/ydIsL9NLIIZUAFOl1vqVetsJV+7axn8VZjaqXY/jqYUbjbjLoK9GlFSj1Qa
 JfxbuGaog0yIm12Vm3qBFdOanjQ87t/doswbAEbPnnzKipdx2D/Nkd8OZeGMKU8rwATb
 npzza5uOgrrEYA1/jZo5obq0ToiD7EqYDxlBisE36ujNZ2QJq12XVdRu+fTfLVPM/OqC
 BvcUkGC+Pqph4z6TlEN3OuOkQb5jXGbzF6QjSga+QTmcZ5iKCAPPkI0i8gUduBwq8qJt
 XBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DxHFyR56JHQIHWQCaKRZay6PSQ7IFQJkTDKfmL68Bg4=;
 b=APuVLZw2Erb7/Ns9ySjdChMGkzTYdbzGzWcGJ0nXhecPdftjdyv3gC9TWqxNXTbS0o
 5SmcQeRXw0Ev4Jbys3LjrR53/4727wyrJxYFZQEeCpFKYggD4CPi/KcsxitqKR7LeUtH
 5qAf+M+xsY1+wHhKz9PyszCg9JopbaY0wX3vbNyfciMeWYZSEVr4I7Jt/hI3DAg/vGG7
 hCsB/+XyTrA/kQyFcnXK6oo7z71s7ESPQTe8rT3IRPwwDqTDC48kjaEiExp8dfXAcBma
 x5905sMNYGF58YRW6Wt4YJHpBtN8nV+mV4n+Mz8wBUxQ97aNd+fY4gVR+BFwI6Dq+Bs1
 z4ZQ==
X-Gm-Message-State: AOAM530jgKo7SvqJDvH0xl5VgeoHD1eo0FMVj+1l6YjEA1lDEZInUjtv
 CDoXBG+mAsrUQ3/XU+OwGvfcgc72CoBkFg==
X-Google-Smtp-Source: ABdhPJz6OE8p/2eslel0fTDqmsVHp4k3yY96AFFrvaTKEUd9VXXOzs4jib8ofFdwusmIyKRC/KOqrQ==
X-Received: by 2002:a17:902:9042:b029:ee:86f1:61d2 with SMTP id
 w2-20020a1709029042b02900ee86f161d2mr21079615plz.58.1620057495711; 
 Mon, 03 May 2021 08:58:15 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:14 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:33 -0500
Message-Id: <20210503155748.1961781-13-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/27] drm/i915/gem: Disallow creating contexts
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
