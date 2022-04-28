Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FEE512F17
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 10:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B749D10F89C;
	Thu, 28 Apr 2022 08:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31A1F10F84A;
 Thu, 28 Apr 2022 08:54:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D0C5A66C8;
 Thu, 28 Apr 2022 08:54:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Thu, 28 Apr 2022 08:54:41 -0000
Message-ID: <165113608115.29088.12674439476850421027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427113404.401741-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220427113404.401741-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_shmem_memory_region_and_object_backend_with_TTM?=
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

Series: Replace shmem memory region and object backend with TTM
URL   : https://patchwork.freedesktop.org/series/103259/
State : warning

== Summary ==

Error: dim checkpatch failed
d619a74d74ea drm/i915: Replace shmem memory region and object backend with TTM
-:37: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#37: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:101:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:63: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#63: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:231:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:94: CHECK:BRACES: Unbalanced braces around else statement
#94: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:90:
+	else {

-:184: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#184: FILE: drivers/gpu/drm/i915/gem/i915_gem_phys.c:32:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:579: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!file"
#579: FILE: drivers/gpu/drm/i915/gem/i915_gem_shmem.c:316:
+	GEM_WARN_ON(file == NULL);

-:704: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'caching != ttm_write_combined'
#704: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:326:
+	if (i915_gem_object_is_shrinkable(obj) && (caching != ttm_write_combined)) {

-:989: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#989: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:49:
 {
+

total: 0 errors, 0 warnings, 7 checks, 979 lines checked


