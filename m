Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4565880FC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C97F92FDC;
	Tue,  2 Aug 2022 17:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 661AC92F66;
 Tue,  2 Aug 2022 17:27:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49F28AADD2;
 Tue,  2 Aug 2022 17:27:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Tue, 02 Aug 2022 17:27:34 -0000
Message-ID: <165946125427.13187.3249738650865772205@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_TTM_for_integrated_GFX_objects_in_sysmem?=
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

Series: Enable TTM for integrated GFX objects in sysmem
URL   : https://patchwork.freedesktop.org/series/106913/
State : warning

== Summary ==

Error: dim checkpatch failed
30b2640e4185 drm/i915/ttm: dont trample cache_level overrides during ttm move
b283b8a7d71e drm/i915: limit ttm to dma32 for i965G[M]
ae22ccdeda30 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level
8399f78186f7 drm/i915/ttm: don't overwrite cache_dirty after setting coherency
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'b6f17c183a3e', maybe rebased or not pulled?
#14: 
placement of the framebuffer. However, commit b6f17c183a3e ("drm/i915/ttm:

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
b08c8f9acefb drm/i915: Pick the right memory allocation flags for older devices
68bee3ccdca5 drm/i915: Add module param for enabling TTM in sysmem region
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/i915_params.c:211:
+i915_param_named_unsafe(use_pool_alloc, bool, 0600,
+	"Force the driver to use TTM's pool allocator API for smem objects. "

-:29: CHECK:LINE_SPACING: Please don't use multiple blank lines
#29: FILE: drivers/gpu/drm/i915/i915_params.c:215:
+
+

total: 0 errors, 0 warnings, 2 checks, 21 lines checked
085d8ed8fa28 drm/i915: Optionally manage system memory with TTM and poolalloc
-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:78:
+void __i915_gem_object_release_smem(struct drm_i915_gem_object *obj,
 				     struct sg_table *pages,

-:282: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#282: FILE: drivers/gpu/drm/i915/gem/i915_gem_shmem.c:355:
+__i915_gem_object_release_smem(struct drm_i915_gem_object *obj,
 				struct sg_table *pages,

-:423: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#423: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1177:
+ttm_pwrite(struct drm_i915_gem_object *obj,
+	     const struct drm_i915_gem_pwrite *arg)

-:425: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#425: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1179:
+{
+

-:434: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#434: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1188:
+ttm_pread(struct drm_i915_gem_object *obj,
+	    const struct drm_i915_gem_pread *arg)

-:519: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#519: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1387:
+i915_gem_object_create_ttm_from_data(struct drm_i915_private *dev_priv,
+				       const void *data, resource_size_t size)

total: 0 errors, 0 warnings, 6 checks, 567 lines checked


