Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1962BB1B6BB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17FB10E69C;
	Tue,  5 Aug 2025 14:40:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="XbeJTFrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77A710E699
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:40:08 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-76bd2b11f80so4697238b3a.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404808; x=1755009608;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VMzd0+h7TRbahpB9nCOoOzLLufRJqkG+qq6PzuVFVk0=;
 b=XbeJTFrnK2o0KB1zZgUupRVx28CRnqaNdJcJ4UI1nbxwCJCFaL/aJ3eN59ItmnT/CD
 Xqc9/zmATKSud/Gpwu4kePBwUKEGR9hou7h4tDmeJmKXxHaiRm5hVyCP2rWFLZ7YAHUw
 Cp2BUBlGvZnB9g/X9x6g64x9nz7h0fPNuV8sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404808; x=1755009608;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VMzd0+h7TRbahpB9nCOoOzLLufRJqkG+qq6PzuVFVk0=;
 b=Dn2d0YGPsLrSIOLBFruNuyO9q2/ulAQP6xi0E2oaXpkoAyM9jgHJhRXk1lHmTaWr40
 Ze6E/a7D9hOXBfpHt3987AyM4L9BNzId4hbXL7LBDlUB5JYFjsDYJsUzCK/q/a4a3quf
 GDDcWT3R2jmdB04VGgQP+QFgrMuzBok0iaih97Maj7DlV1ErcPbxMMHulnoKO8OAGoEr
 nQ5YMOydUu0QnEQ6PEYcHDC+mnAXArGJAWUyWFW9o7dj7J8gWVOz7F/ezmuXywTjqP2X
 D2wL2G9CxWdzWJS1MC3DEeAtVEJeaZxmK+LSYzLwI5eyKjX6krwaY3qHE3l5YeFsTTHh
 M/HQ==
X-Gm-Message-State: AOJu0Yx3SIhelsHUABPxVoqZIWf9iUU4b+mRJL5EfNd9sK2sUmccvzsv
 0VfCo3BWuX1+CssgrJyj6JmPVkBI8TwFqX7tA5XLrR2v9b6s0Yy4vX4ongyE4ui+1cc=
X-Gm-Gg: ASbGncsca6gN9KBMcUaMxAKUcFDujBt/4TPT773QlzT23vm6zl2JCvmXYra9umcIhze
 jCTZ1ADnRH4STtw9tgnCAnXk92tOzio33dmB9Z6+Il6ZlapQgZgjRZqfHHDaTyKi5N+IGhXyaN2
 wwrkJ79EVmnZSEMmYnwO9ohAv4hig9XhSAVArBEr1iCEP5jBfYPd0mMrGjM+Hj3mEq6NE2+m5/Q
 xRwbguGKdQGbay6kWMe/f9VDsxtJPryAvOs8MKpqFD4O2e1v4xsn/XNFyZg+lTjo/NIg2kmHUMr
 pjXobWEdbfwyXtPwWuDeuVHV4WpEc8exf3hGdGFaY6cMcoIDCwPzP0SeAC1IBRXsolMGZizpy15
 t7SZ+8oC8GSOC3VUqO7F3Tsj4LAvrmeJ2
X-Google-Smtp-Source: AGHT+IHsUKVobkIG6gy9soJixxmywof0C2OumEiVKRBPYJK5ZfLNqZxyFp3HdA0+e00HJLph3eC2oA==
X-Received: by 2002:a05:6a00:114b:b0:75f:914e:1972 with SMTP id
 d2e1a72fcca58-76bec4b7d16mr15360738b3a.17.1754404808304; 
 Tue, 05 Aug 2025 07:40:08 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.40.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:40:07 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 6/9] drm/i915/display: Remove outdated struct_mutex comments
Date: Tue,  5 Aug 2025 11:39:01 -0300
Message-ID: <20250805143908.32343-7-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch update a comment about struct_mutex in i915/display, in order
to prevent future misunderstandings.

* intel_fbc.c: Removed the statement that intel_fbc->lock is the inner
  lock when overlapping with struct_mutex, since struct_mutex is no
  longer used anywhere in the driver.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bed2bba20b55..1a0868ed8143 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -96,11 +96,7 @@ struct intel_fbc {
 	struct intel_display *display;
 	const struct intel_fbc_funcs *funcs;
 
-	/*
-	 * This is always the inner lock when overlapping with
-	 * struct_mutex and it's the outer lock when overlapping
-	 * with stolen_lock.
-	 */
+	/* This is always the outer lock when overlapping with stolen_lock */
 	struct mutex lock;
 	unsigned int busy_bits;
 
-- 
2.50.1

