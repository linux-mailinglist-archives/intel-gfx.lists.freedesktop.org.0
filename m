Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDE356A538
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 16:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D50314B538;
	Thu,  7 Jul 2022 14:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F3E814B512;
 Thu,  7 Jul 2022 14:16:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B8FBA0078;
 Thu,  7 Jul 2022 14:16:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Thu, 07 Jul 2022 14:16:26 -0000
Message-ID: <165720338650.2211.8115028036194247152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220707102453.3633-1-christian.koenig@amd.com>
In-Reply-To: <20220707102453.3633-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/ttm=3A_rename_and_cleanu?=
 =?utf-8?q?p_ttm=5Fbo=5Finit=5Freserved?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/6] drm/ttm: rename and cleanup ttm_bo_init_reserved
URL   : https://patchwork.freedesktop.org/series/106027/
State : warning

== Summary ==

Error: dim checkpatch failed
b5704a48c4ba drm/ttm: rename and cleanup ttm_bo_init_reserved
-:162: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#162: FILE: drivers/gpu/drm/ttm/ttm_bo.c:959:
+			 uint32_t alignment, struct ttm_operation_ctx *ctx,

-:290: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#290: FILE: drivers/gpu/drm/ttm/ttm_bo.c:1060:
+			 uint32_t alignment, bool interruptible,

-:292: WARNING:SPACING: Unnecessary space before function pointer arguments
#292: FILE: drivers/gpu/drm/ttm/ttm_bo.c:1062:
+			 void (*destroy) (struct ttm_buffer_object *))

-:394: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#394: FILE: include/drm/ttm/ttm_bo_api.h:322:
+			 uint32_t alignment, struct ttm_operation_ctx *ctx,

-:396: WARNING:SPACING: Unnecessary space before function pointer arguments
#396: FILE: include/drm/ttm/ttm_bo_api.h:324:
+			 void (*destroy) (struct ttm_buffer_object *));

-:399: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#399: FILE: include/drm/ttm/ttm_bo_api.h:327:
+			 uint32_t alignment, bool interruptible,

-:448: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 3 warnings, 4 checks, 384 lines checked
8bf1d3fd108f drm/amdgpu: audit bo->resource usage
-:36: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!bo->ttm"
#36: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c:475:
+			 bo->ttm == NULL)) {

-:39: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 1 checks, 17 lines checked
3c8a52798f99 drm/nouveau: audit bo->resource usage
-:26: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
0ae3c1107a39 drm/ttm: audit bo->resource usage v2
-:93: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
bfa86049ac89 drm/ttm: stop allocating dummy resources during BO creation
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
880058fbd4a9 drm/ttm: stop allocating a dummy resource for pipelined gutting
-:74: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked


