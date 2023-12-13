Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D228120AD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 22:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5583210E852;
	Wed, 13 Dec 2023 21:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 122C810E852;
 Wed, 13 Dec 2023 21:24:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08FDAA3ECB;
 Wed, 13 Dec 2023 21:24:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/4=5D_drm/ttm=3A_return_ENOSPC_from_ttm=5Fbo=5Fmem=5Fspace?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 13 Dec 2023 21:24:44 -0000
Message-ID: <170250268403.10264.314227275123717809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213144222.1871-1-christian.koenig@amd.com>
In-Reply-To: <20231213144222.1871-1-christian.koenig@amd.com>
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

Series: series starting with [1/4] drm/ttm: return ENOSPC from ttm_bo_mem_space
URL   : https://patchwork.freedesktop.org/series/127752/
State : warning

== Summary ==

Error: dim checkpatch failed
2d6d981a7c8c drm/ttm: return ENOSPC from ttm_bo_mem_space
-:35: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
7dd77c5e8555 drm/ttm: replace busy placement with flags v3
-:297: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#297: FILE: drivers/gpu/drm/nouveau/nouveau_bo.c:442:
+	unsigned *n = &nvbo->placement.num_placement;

-:629: CHECK:LINE_SPACING: Please don't use multiple blank lines
#629: FILE: drivers/gpu/drm/vmwgfx/vmwgfx_bo.c:182:
 
+

total: 0 errors, 1 warnings, 1 checks, 698 lines checked
1fa5a17d755b drm/ttm: improve idle/busy handling
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
Previously we would never try to move a BO into the preferred placements when

-:297: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#297: FILE: drivers/gpu/drm/ttm/ttm_resource.c:320:
+		if (place->flags & TTM_PL_FLAG_CONTIGUOUS &&
+		     !(res->placement & TTM_PL_FLAG_CONTIGUOUS))

-:339: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 2 warnings, 1 checks, 279 lines checked
f90570623edf drm/amdgpu: use GTT only as fallback for VRAM|GTT
-:32: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


