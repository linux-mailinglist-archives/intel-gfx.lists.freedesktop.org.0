Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1F6B24B1B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B6C10E729;
	Wed, 13 Aug 2025 13:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="BaCI/lq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6826F10E729
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:51:22 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-2430c5b1b32so7054435ad.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093082; x=1755697882;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ov+c/bZFtSWdE4f2Ei/73+xpZsgPZAaXCwBdXm2Me7E=;
 b=BaCI/lq+Oc4W/I9U46ZOUjdeDqa2M3lr41v/pTmT+HKVe2tvLA063kN+G1xkMl7pGv
 mNgdXKTkFA+rKWCHPqfD2oSd6qupNCj6wnViKMCD+rvHG2XWIHwQWgBICtD6Nt8nkO9+
 kYxu8Vm+7ZjvECDB3blcAKbubbmdanM/mD7fA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093082; x=1755697882;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ov+c/bZFtSWdE4f2Ei/73+xpZsgPZAaXCwBdXm2Me7E=;
 b=IbGxTkNDiAtwIZDUxJEVB3qIxLRS0ZRIJVma8rR7EyQrPZswFc3Hm6TOQBuOStu7rg
 2+GTyoejEhk1lKXKufvHj086+ogbBQOiBQgkSArUgojAek+Ekmmc1dfJB7MpXVKl91r+
 HoG4fUmi+i97lWYCaOGq/gkDicnmIBfCXE+/Hug5uURdgD9i1iTJZseWLmREMebgoA9N
 kn8izcNk/E2OvSJ/Mtc2YvSfGLgxYXY6PkR4c5uEP4XsIQftBTDy6YXJwW/tfWQjmbIw
 bOZTppxZHbaJgbAA6ok8rHdTMm8AaJ/077KOY4ofTfsrNogNVume8VenTeaG0Chieeje
 5pLg==
X-Gm-Message-State: AOJu0YzMZxucl2ytnoq6gSmRkfYrzSCl+UmTeZwoyIS2XYWhLLoMD/Ox
 6Gu2aMvn5YH8dghSmjftcELZvZQ1YPvMsTH/LVHIz+ioFe4Lpd7wkFTWZ0R1YexHDjc=
X-Gm-Gg: ASbGncst4vjCvfrw4LrMtlf3x/MKJ5ufY+P4VSQlVEoklTr+HX/m+wLT/eI0jRgaPKG
 SHVaPEjjrcoW+n7yGbOHjTIvhE+VmAytPRji13GtwNWUZqSMfsEkeCjivZRnq9uRcgEdRnPLIo0
 zgxVUMnWfnM81OCFNkf7pI5j2fcTnrKG6axLaFFkwTuvWuxVJvlET762Ba/bTMCk75gLuGeJ7cS
 mIfO+Rk8s0doq0hdWETu+YXiwiDYOqh9MUx5VdkjelzUWLebX+MgAvHtSeSMNgvqJWieG6XqT2c
 0v6kepKm5IGigmlPpUNmURtk9FSX1KdfVvUrKDiWFJYMe0kS+yw+RLW4UvYMTobHBLG78l2K7rX
 Sb9TBuqeTE2v9+ByWUH/7LX/DOUb4og19YhDtIOXCZiE=
X-Google-Smtp-Source: AGHT+IFwDFjO7Bz/WQUAwpjT55KUFsuZcvdDK2TzGtQJjbJVx99PscHfxlKVNmTiHElwxpVKX4Wmfw==
X-Received: by 2002:a17:902:d4d0:b0:231:9817:6ec1 with SMTP id
 d9443c01a7336-2430ea2c77dmr44466265ad.17.1755093081899; 
 Wed, 13 Aug 2025 06:51:21 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:51:21 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 7/9 v3] drm/i915: Clean-up outdated struct_mutex comments
Date: Wed, 13 Aug 2025 10:50:31 -0300
Message-ID: <20250813135035.144762-8-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
References: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
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

This patch updates various comments in the i915 codebase to
either remove or clarify references to struct_mutex, in order to
prevent future misunderstandings.

* i915_drv.h: Removed the statement that stolen_lock is the inner lock
  when overlaps with struct_mutex, since struct_mutex is no longer used
  in the driver.
* i915_gem.c: Removed parentheses suggesting usage of struct_mutex, which
  which is no longer used.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 +--
 drivers/gpu/drm/i915/i915_gem.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15f66a7d496d..63fef3873a38 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -114,8 +114,7 @@ struct i915_gem_mm {
 	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
+	/** Protects the usage of the GTT stolen memory allocator */
 	struct mutex stolen_lock;
 
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 8c8d43451f35..e14a0c3db999 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -847,8 +847,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	/*
 	 * Only called during RPM suspend. All users of the userfault_list
 	 * must be holding an RPM wakeref to ensure that this can not
-	 * run concurrently with themselves (and use the struct_mutex for
-	 * protection between themselves).
+	 * run concurrently with themselves.
 	 */
 
 	list_for_each_entry_safe(obj, on,
-- 
2.50.1

