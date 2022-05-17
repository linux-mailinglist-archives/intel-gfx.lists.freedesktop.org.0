Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9346B52ADAD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 23:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653511139E4;
	Tue, 17 May 2022 21:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F7021139E5;
 Tue, 17 May 2022 21:51:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05841A00A0;
 Tue, 17 May 2022 21:51:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Tue, 17 May 2022 21:51:20 -0000
Message-ID: <165282428001.31032.18298723543267651008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220517204513.429930-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_shmem_memory_region_and_object_backend?=
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

Series: Replace shmem memory region and object backend
URL   : https://patchwork.freedesktop.org/series/104105/
State : warning

== Summary ==

Error: dim checkpatch failed
a310d6e73af3 drm/i915: Replace shmem memory region and object backend with TTM
-:41: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#41: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:101:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:67: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#67: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:231:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:98: CHECK:BRACES: Unbalanced braces around else statement
#98: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:90:
+	else {

-:201: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.import_attach"
#201: FILE: drivers/gpu/drm/i915/gem/i915_gem_phys.c:33:
+	GEM_BUG_ON(obj->base.import_attach != NULL);

-:217: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!filp"
#217: FILE: drivers/gpu/drm/i915/gem/i915_gem_phys.c:115:
+		if (GEM_WARN_ON(filp == NULL))

-:650: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!file"
#650: FILE: drivers/gpu/drm/i915/gem/i915_gem_shmem.c:316:
+	GEM_WARN_ON(file == NULL);

-:781: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'caching != ttm_write_combined'
#781: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:333:
+	if (i915_gem_object_is_shrinkable(obj) && (caching != ttm_write_combined)) {

-:832: CHECK:BRACES: braces {} should be used on all arms of this statement
#832: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:912:
+	if (likely(i915_gem_object_has_struct_page(obj))) {
[...]
+	} else
[...]

-:842: CHECK:BRACES: Unbalanced braces around else statement
#842: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:922:
+	} else

total: 0 errors, 0 warnings, 9 checks, 1116 lines checked


