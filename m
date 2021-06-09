Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6600C3A0B72
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313B56ECBB;
	Wed,  9 Jun 2021 04:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21DA6ECB6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:40 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id g24so619075pji.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p9LihMbkz0D/b2xxGApls+quCG+XTK2bjRKq93kZNxc=;
 b=LWLx5p6JF/p4rNvszWkrqxwmgR2JVANQ+wTkXYxU13bzomn0b3qgTP2iranm0QYa1l
 vgLQEEZ7AUQ5gMXXwh1QCYtqdfCr/719tX3VzFXmtEftKYFkveDgOim1BCQuvA38LuKh
 ao6fq3iOUfeqhb+2i3oqBGu1iCgtCmeDL1wpOe3dRHNeUr0D9C2j9Ym5VAc0/T/zT/+0
 uR09rFKqVkZLTNqpD7LoW1SInDlVjcDTZV6mUuMxrJxp//p2wGjyFoQYwzg2zTifkTgw
 Xu+fV0KAipkoaMBVpDiXR3Fv5Ob93ixfmYdxjVjZPq152XU6ilC7KSut4+JNOh2/AjT+
 0JUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p9LihMbkz0D/b2xxGApls+quCG+XTK2bjRKq93kZNxc=;
 b=JZ2BOdwHxOcNnbLt2K/Ld0Ksd8gme8GpkHQMPYqB4SR8kq0Y7gvBZ6HZ1lcrD0t5Px
 Y1xKOjTWmS2o8gev5X0lKkv3u3NI2FOqZ7RZ6ODLKRYbf58GwFbjeqJACo6f1rhhUdWC
 mIZ7UCc/aOuh1X/isLsm1is0HpYIYbHHNmesSx0ajGpAEAJI8uXyY0dn4o6xF6SS170a
 ybvwoDulLtj7zD+uzBOTG+c/de6DcxEKW5RUIU3GhzzcGr6cCPXhQCMwSJvMXbmLClGW
 WtzYnBGT14tIo2TAdEeO30B60DkW9cLaH5qdXebqw+hs7b/BEivO1xTovCbNF1MRtA7Q
 hTnQ==
X-Gm-Message-State: AOAM532zDFrG8BR9n9xW3yHiSBSO0dxEbzJ9x4xlJs5qFkR8ibc0WY87
 24Yu1D+MUC3GjPgXPmDI77yWDA==
X-Google-Smtp-Source: ABdhPJzd8IH5cOGba0SX5eAsNk29mZlcgz4tLh+O6PSGEmXPiUJhwfomC1IriBGPFE8PZMzjEpYx/A==
X-Received: by 2002:a17:902:728e:b029:101:c3b7:a47f with SMTP id
 d14-20020a170902728eb0290101c3b7a47fmr3563291pll.21.1623213400390; 
 Tue, 08 Jun 2021 21:36:40 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:40 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:54 -0500
Message-Id: <20210609043613.102962-13-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/31] drm/i915/gem: Disallow creating contexts
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
