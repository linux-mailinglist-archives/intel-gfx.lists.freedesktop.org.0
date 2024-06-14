Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C44908D3A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771C110ED5B;
	Fri, 14 Jun 2024 14:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E358710ED4A;
 Fri, 14 Jun 2024 14:18:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/=7Bttm=2Cxe=7D?=
 =?utf-8?q?=3A_Improve_ttm=5Fbo=5Fvmap=28=29_and_update_xe?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2024 14:18:28 -0000
Message-ID: <171837470892.77190.16091209774822078497@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240614133556.11378-1-tzimmermann@suse.de>
In-Reply-To: <20240614133556.11378-1-tzimmermann@suse.de>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/{ttm,xe}: Improve ttm_bo_vmap() and update xe
URL   : https://patchwork.freedesktop.org/series/134891/
State : warning

== Summary ==

Error: dim checkpatch failed
9e6b478225b7 iosys-map: Add allocator flags
77686d1beaaf drm/ttm: Store the bo_kmap_type in struct iosys_map
f6c08785dc7f drm/ttm: Support partial buffer mappings for ttm_bo_vmap()
a6e718455990 drm/ttm: Support kmap for single-page mappings in ttm_bo_vmap()
-:53: WARNING:DEPRECATED_API: Deprecated use of 'kmap', prefer 'kmap_local_page' instead
#53: FILE: drivers/gpu/drm/ttm/ttm_bo_util.c:538:
+			vaddr = kmap(ttm->pages[start_page]);

-:74: WARNING:DEPRECATED_API: Deprecated use of 'kunmap', prefer 'kunmap_local' instead
#74: FILE: drivers/gpu/drm/ttm/ttm_bo_util.c:583:
+		kunmap(kmap_to_page(map->vaddr));

total: 0 errors, 2 warnings, 0 checks, 51 lines checked
0bc209bee997 drm/xe: Remove vunmap calls object-freeing code
647ef007ceb6 drm/xe: Replace ttm_bo_kmap() with ttm_bo_vmap()


