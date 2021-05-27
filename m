Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA463933EA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004EC6F46C;
	Thu, 27 May 2021 16:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDB16F44D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:13 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id l70so342802pga.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EjGRkqxqO7FFzGrHtIbmYStBAIExddeHGNU1mZ0bVMQ=;
 b=sRZiUxSJnxyNXAtrL4SXJCzLJIQt45PLCQvMaerERP5O1gzY3XKnANTefTvfeiZ7em
 Bre1+XpFeznMHMQ25sPWT+ta9dNG+HkCa0A9m+TKdv2nErvSjsWB+YmyTGom7Ckpx4KQ
 ky9gMZc8aAxYX4DcWEDXDBhzml8otvHyDKenUAHB8XFBCUnaYWKVdPhjCtT4zAZIrQ2L
 Y2MgBOnebUJeUbP3ztV/mJx1JWG68dhHztWip69YiJtpx7wnmQOqDr5cd6ZIp9igX68s
 s0xBFuwC4cEN+zNo8TGIeAFFfQD7vwbXqVYaEkpmcqCvxtex943rSSd0BGlNnL5jhcq1
 pfmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EjGRkqxqO7FFzGrHtIbmYStBAIExddeHGNU1mZ0bVMQ=;
 b=ueP+C793a7pkEN8LsJ6TwL0ANBSmKlZbJvpiY/aV0kiDcSAjjax3YNNwjp95U6c3Qt
 ySWyxfsTB2oy84cVa/GqaQOGA39vmueh4eNC2+HWw0Fp7IlWrvlWwybThIeR7NgwfK4Z
 gaXp1S3f1vi+owsuGUUi8DTOTy197LWYXLrePSfUYciAizT2vzCVrL4hQsq8+5Az0rKK
 2QZgx09Nc8nlURK/Za0CyHUcsiDUNbk1+IHaRwN2Wsmr+O8Pz2dZdAOJxJTt1S6JgfzP
 E5w0ZZy7mlZ5FLivs7OEHycHT/Y3jMrhnQOK0swtGhmiWlFjVyUxkLaz+c9DMPNZnMLg
 +zNw==
X-Gm-Message-State: AOAM532eRZ0xXXiZaYbWq4MkmuHHW+j7efhYhkdPJwMIdWOfE/ms0eEy
 6VEyF/DdrpRhdIoiQd54Q3UhNVsfCk7SgQ==
X-Google-Smtp-Source: ABdhPJx+3PQyS5hqlrJlh18Q/5dx2RexO0rLFGeV2NPVMUJqY2TZQPl1VN00Mvlf18nt+VAgiBwUOw==
X-Received: by 2002:a63:a5e:: with SMTP id z30mr919662pgk.126.1622132832727;
 Thu, 27 May 2021 09:27:12 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:12 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:33 -0500
Message-Id: <20210527162650.1182544-13-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/29] drm/i915/gem: Disallow creating contexts
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
index 5e159fb526631..2b9207b557cc9 100644
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
