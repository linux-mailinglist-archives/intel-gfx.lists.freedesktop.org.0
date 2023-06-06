Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DACD723B64
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 10:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4EB10E2CE;
	Tue,  6 Jun 2023 08:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2453B10E2CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 08:24:03 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-30e5289105cso59542f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jun 2023 01:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686039841; x=1688631841;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Cu00erad5bhnLhrnHtwRHa2XDxNFsi3EuA1QgEK2MPg=;
 b=izIWW1PrYM03lQFHH/qXUTUE4kbL8MXfzNUe7V1iIEoaSdn3we/K/6t9S+ZqkRZqln
 1jy6J4W7vFxq15cjA6LgJOb2yy2bCKrdllkpO9NNqIsTtnWdBDPMfQ1Iaxb6ZM38y8sa
 Fp9GGLui/y1XXnx6xgV68OJAj8lAU43Lnmgh6fQk9szZ+Vbl6wOsDC90u2z84fWDop1r
 kvo0TzjnXu1deUqfoOrfsukbgD7qEBnjYuNg7vdfcS/fU6n0Rqwii/IhkGwfqaFXHu96
 qUy4+c1cIY46Cf0KFcSUPij1lDsdV2KzRqa334LylXd4aHZv0r5l0ZnkluBBA2WAP4lu
 v5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686039841; x=1688631841;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Cu00erad5bhnLhrnHtwRHa2XDxNFsi3EuA1QgEK2MPg=;
 b=ZpU+MZm4dUZTwrNw5T4nQ49Iq5RKQZi3RQWDfE9c/TiMbuyevRNLQ+rZMLOfW/2YnR
 P59Fq9xz0WfSJHn5a7xniiRz+ogb1sbzMnkIH3OIwSkYntiWwDdf9XL+tVTY6ivFE9/q
 6OcL4eqml99NrqR0+jCELHGFMfjlwvcjyIdHPgjtPlNtQbOowZ0KhSsIMihCD+n+hDzf
 fVJEICXdTncz4EhkC2GhH061dHwxYRxgRAfGPIxu3m3ag2hFve2M7afX+6YJnO4ey+Bf
 r+kWKj/HPCTPQSczWN0XtgArCoWcn9PwGD3aXCGE1E3vL3YyGtskrg4sAJXMashunRVO
 iD9Q==
X-Gm-Message-State: AC+VfDytxUFCiwGkktAKx4w+Q1DIWdEd4CRQrJJoUWfghKSp173DbENl
 s6oEMGQ9O89L4IngJZVUSM7WSg==
X-Google-Smtp-Source: ACHHUZ4+U56Oim5d9z0fzzpQFWt87wPRBPzyCzagTvFDjwvOyFAFiNq+4kkmkNkoElYtiOJuv5pJvw==
X-Received: by 2002:adf:f7c8:0:b0:30a:f20b:e71 with SMTP id
 a8-20020adff7c8000000b0030af20b0e71mr1198004wrq.33.1686039841487; 
 Tue, 06 Jun 2023 01:24:01 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 h14-20020a5d504e000000b00300aee6c9cesm11936977wrt.20.2023.06.06.01.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jun 2023 01:24:00 -0700 (PDT)
Date: Tue, 6 Jun 2023 11:23:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZH7tHLRZ9oBjedjN@moroto>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH] drm/i915: Fix a NULL vs IS_ERR() bug
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The mmap_offset_attach() function returns error pointers, it doesn't
return NULL.

Fixes: eaee1c085863 ("drm/i915: Add a function to mmap framebuffer obj")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 4e7a838ab7bd..aa4d842d4c5a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -1085,8 +1085,8 @@ int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma
 		/* handle stolen and smem objects */
 		mmap_type = i915_ggtt_has_aperture(ggtt) ? I915_MMAP_TYPE_GTT : I915_MMAP_TYPE_WC;
 		mmo = mmap_offset_attach(obj, mmap_type, NULL);
-		if (!mmo)
-			return -ENODEV;
+		if (IS_ERR(mmo))
+			return PTR_ERR(mmo);
 	}
 
 	/*
-- 
2.39.2

