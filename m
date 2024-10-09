Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64B3996F75
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 17:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514BB10E772;
	Wed,  9 Oct 2024 15:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SCNWKO95";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAD110E771;
 Wed,  9 Oct 2024 15:16:04 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-20c544d34bcso19100555ad.1; 
 Wed, 09 Oct 2024 08:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728486963; x=1729091763; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BuCiguqr64e/vpvOFR/ydDcwvHS8vsqLJqmkm2B0WVw=;
 b=SCNWKO95qD9+UmUXrIZobOOttvBrbNFnjF5IEZqEjpNsjYrqxmatEna16cs41/HHZV
 zs3Uo+QiJuDbDihxOEgnFVntMlrviv0gKPqL9MPZyzrA3PS7simoR6bgYp8Ku9VH9zN+
 anFMdwyIaIlKb4rUSx3S/2miBXymvuHbPeIEOfjYxjcxjjjPY3P8FPiQESjjGLCppRyV
 hyEuS218Dvubly94AvdVTlU/khu3Kq383wn7HeY1htuC05cEMuvKr+sFDJ8Lgn+GZ106
 HvZcP9vI8bSr/B648yzYE8sIVAC/Uy1JUWpZOJUAg1FnKoKOY3JotQkjrqWQHyxmEGOY
 fIgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728486963; x=1729091763;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BuCiguqr64e/vpvOFR/ydDcwvHS8vsqLJqmkm2B0WVw=;
 b=rAkFwOlwHwcHiPjnxYkor1QSBjjlz4KGdVrQX7ZU9s1SvGfGviT+CtuFrTEI935bwp
 hO/0D+qhaMVdn34cxikyMSlNFd6g/k4AecTM1ls5BANPqyrr9CwIDBRf4KmANcb4QYUZ
 vB0Wjsc+oZ6F03pNmojFPBHI/ypLhR31tEChzOjW2i3gNHQvuI4okJxbCJ4K6E3HHbax
 1d9Ak2FRWFx8wCAqJFw54Uz98TYJ8/83gcQdT88TJFVcg1NuO96I5NSjWqOlgAbJPvtW
 73CNEtsRRT5qHRDZhLTkksKf6raUu0gINYAwmoSsoNHwbxX0ChrDNCqX1eboiLsV0gxb
 KpVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU99VNes/5PopzbtTFNr444CTBnryNrS/g4FAYMFpJGM6W9rf8Y0M5ACbQWEGI8KSWTOK1eTS8+pYA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz37cNyIBEhPs5hjpXrhtZUBuRzG3URGcAiAj/F9G7aCyblsxLV
 u/7NXDV2cIyEXD2UEeYU/0gGYYFmbOrP64jnwpkUGpT4cEx3whHv7GXBo7smsA0=
X-Google-Smtp-Source: AGHT+IFegI7L9adCANMIB7THoCrPIDZN7efph6RxYLBAKcYMcOMPkcqvPidVe9U2OsljaL33SQiOsA==
X-Received: by 2002:a17:903:245:b0:202:13ca:d73e with SMTP id
 d9443c01a7336-20c63737be9mr49160725ad.28.1728486963284; 
 Wed, 09 Oct 2024 08:16:03 -0700 (PDT)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c62f11757sm13905545ad.19.2024.10.09.08.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 08:16:03 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 1/2] drm/xe: add interface to request physical alignment for
 buffer objects
Date: Wed,  9 Oct 2024 18:19:46 +0300
Message-ID: <20241009151947.2240099-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
References: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
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

Add xe_bo_create_pin_map_at_aligned() which augment
xe_bo_create_pin_map_at() with alignment parameter allowing to pass
required alignemnt if it differ from default.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 .../compat-i915-headers/gem/i915_gem_stolen.h |  2 +-
 drivers/gpu/drm/xe/xe_bo.c                    | 29 +++++++++++++++----
 drivers/gpu/drm/xe/xe_bo.h                    |  8 ++++-
 drivers/gpu/drm/xe/xe_bo_types.h              |  5 ++++
 drivers/gpu/drm/xe/xe_ggtt.c                  |  2 +-
 5 files changed, 37 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index cb6c7598824b..9c4cf050059a 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -29,7 +29,7 @@ static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 
 	bo = xe_bo_create_locked_range(xe, xe_device_get_root_tile(xe),
 				       NULL, size, start, end,
-				       ttm_bo_type_kernel, flags);
+				       ttm_bo_type_kernel, flags, 0);
 	if (IS_ERR(bo)) {
 		err = PTR_ERR(bo);
 		bo = NULL;
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 5e8f60a8d431..d5d30a0ff1e7 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1454,7 +1454,8 @@ static struct xe_bo *
 __xe_bo_create_locked(struct xe_device *xe,
 		      struct xe_tile *tile, struct xe_vm *vm,
 		      size_t size, u64 start, u64 end,
-		      u16 cpu_caching, enum ttm_bo_type type, u32 flags)
+		      u16 cpu_caching, enum ttm_bo_type type, u32 flags,
+		      u64 alignment)
 {
 	struct xe_bo *bo = NULL;
 	int err;
@@ -1483,6 +1484,8 @@ __xe_bo_create_locked(struct xe_device *xe,
 	if (IS_ERR(bo))
 		return bo;
 
+	bo->min_align = alignment;
+
 	/*
 	 * Note that instead of taking a reference no the drm_gpuvm_resv_bo(),
 	 * to ensure the shared resv doesn't disappear under the bo, the bo
@@ -1523,16 +1526,18 @@ struct xe_bo *
 xe_bo_create_locked_range(struct xe_device *xe,
 			  struct xe_tile *tile, struct xe_vm *vm,
 			  size_t size, u64 start, u64 end,
-			  enum ttm_bo_type type, u32 flags)
+			  enum ttm_bo_type type, u32 flags, u64 alignment)
 {
-	return __xe_bo_create_locked(xe, tile, vm, size, start, end, 0, type, flags);
+	return __xe_bo_create_locked(xe, tile, vm, size, start, end, 0, type,
+				     flags, alignment);
 }
 
 struct xe_bo *xe_bo_create_locked(struct xe_device *xe, struct xe_tile *tile,
 				  struct xe_vm *vm, size_t size,
 				  enum ttm_bo_type type, u32 flags)
 {
-	return __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL, 0, type, flags);
+	return __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL, 0, type,
+				     flags, 0);
 }
 
 struct xe_bo *xe_bo_create_user(struct xe_device *xe, struct xe_tile *tile,
@@ -1542,7 +1547,7 @@ struct xe_bo *xe_bo_create_user(struct xe_device *xe, struct xe_tile *tile,
 {
 	struct xe_bo *bo = __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL,
 						 cpu_caching, ttm_bo_type_device,
-						 flags | XE_BO_FLAG_USER);
+						 flags | XE_BO_FLAG_USER, 0);
 	if (!IS_ERR(bo))
 		xe_bo_unlock_vm_held(bo);
 
@@ -1565,6 +1570,17 @@ struct xe_bo *xe_bo_create_pin_map_at(struct xe_device *xe, struct xe_tile *tile
 				      struct xe_vm *vm,
 				      size_t size, u64 offset,
 				      enum ttm_bo_type type, u32 flags)
+{
+	return xe_bo_create_pin_map_at_aligned(xe, tile, vm, size, offset,
+					       type, flags, 0);
+}
+
+struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
+					      struct xe_tile *tile,
+					      struct xe_vm *vm,
+					      size_t size, u64 offset,
+					      enum ttm_bo_type type, u32 flags,
+					      u64 alignment)
 {
 	struct xe_bo *bo;
 	int err;
@@ -1576,7 +1592,8 @@ struct xe_bo *xe_bo_create_pin_map_at(struct xe_device *xe, struct xe_tile *tile
 		flags |= XE_BO_FLAG_GGTT;
 
 	bo = xe_bo_create_locked_range(xe, tile, vm, size, start, end, type,
-				       flags | XE_BO_FLAG_NEEDS_CPU_ACCESS);
+				       flags | XE_BO_FLAG_NEEDS_CPU_ACCESS,
+				       alignment);
 	if (IS_ERR(bo))
 		return bo;
 
diff --git a/drivers/gpu/drm/xe/xe_bo.h b/drivers/gpu/drm/xe/xe_bo.h
index 31f4ba3bd8c1..7fa44a0138b0 100644
--- a/drivers/gpu/drm/xe/xe_bo.h
+++ b/drivers/gpu/drm/xe/xe_bo.h
@@ -77,7 +77,7 @@ struct xe_bo *
 xe_bo_create_locked_range(struct xe_device *xe,
 			  struct xe_tile *tile, struct xe_vm *vm,
 			  size_t size, u64 start, u64 end,
-			  enum ttm_bo_type type, u32 flags);
+			  enum ttm_bo_type type, u32 flags, u64 alignment);
 struct xe_bo *xe_bo_create_locked(struct xe_device *xe, struct xe_tile *tile,
 				  struct xe_vm *vm, size_t size,
 				  enum ttm_bo_type type, u32 flags);
@@ -94,6 +94,12 @@ struct xe_bo *xe_bo_create_pin_map(struct xe_device *xe, struct xe_tile *tile,
 struct xe_bo *xe_bo_create_pin_map_at(struct xe_device *xe, struct xe_tile *tile,
 				      struct xe_vm *vm, size_t size, u64 offset,
 				      enum ttm_bo_type type, u32 flags);
+struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
+					      struct xe_tile *tile,
+					      struct xe_vm *vm,
+					      size_t size, u64 offset,
+					      enum ttm_bo_type type, u32 flags,
+					      u64 alignment);
 struct xe_bo *xe_bo_create_from_data(struct xe_device *xe, struct xe_tile *tile,
 				     const void *data, size_t size,
 				     enum ttm_bo_type type, u32 flags);
diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
index 8b9201775081..13c6d8a69e91 100644
--- a/drivers/gpu/drm/xe/xe_bo_types.h
+++ b/drivers/gpu/drm/xe/xe_bo_types.h
@@ -76,6 +76,11 @@ struct xe_bo {
 
 	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
 		struct list_head vram_userfault_link;
+
+	/** @min_align: minimum alignment needed for this BO if different
+	 * from default
+	 */
+	u64 min_align;
 };
 
 #endif
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 47bfd9d2635d..1b3178226987 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -603,7 +603,7 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 				  u64 start, u64 end)
 {
 	int err;
-	u64 alignment = XE_PAGE_SIZE;
+	u64 alignment = bo->min_align > 0 ? bo->min_align : XE_PAGE_SIZE;
 
 	if (xe_bo_is_vram(bo) && ggtt->flags & XE_GGTT_FLAGS_64K)
 		alignment = SZ_64K;
-- 
2.45.2

