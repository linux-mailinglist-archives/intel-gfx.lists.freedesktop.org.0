Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A45954A70F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 04:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D97112166;
	Tue, 14 Jun 2022 02:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 106AC112162;
 Tue, 14 Jun 2022 02:53:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06A14A77A5;
 Tue, 14 Jun 2022 02:53:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Tue, 14 Jun 2022 02:53:22 -0000
Message-ID: <165517520298.12485.10150127626079867475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220614011350.122168-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_remove_shmem_backend_and_region_and_unify_them_with_TTM?=
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

Series: remove shmem backend and region and unify them with TTM
URL   : https://patchwork.freedesktop.org/series/105087/
State : warning

== Summary ==

Error: dim checkpatch failed
aec7d1e6a46b drm/i915/ttm: dont trample cache_level overrides during ttm move
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
Before ttm, these overrides were permanent until explicitly changed again or

-:76: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Adrian Larumbe <adrian.larumbe@collabora.com>'

total: 1 errors, 1 warnings, 0 checks, 36 lines checked
99b6a599e0a2 drm/i915/ttm: don't overwrite cache_dirty after setting coherency
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '2f0ec95ed20c', maybe rebased or not pulled?
#14: 
placement of the framebuffer. However, commit 2f0ec95ed20c ("drm/i915/ttm:

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
5470a2530054 drm/i915/ttm: remove shmem memory region and gem object backend
-:91: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "obj->base.filp"
#91: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:91:
+		GEM_WARN_ON(obj->base.filp != NULL);

-:693: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#693: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:189:
+ttm_create_shmem_file(struct drm_i915_private *dev_priv,
+		       const size_t size)

-:834: CHECK:BRACES: braces {} should be used on all arms of this statement
#834: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:945:
+	if (likely(i915_gem_object_has_struct_page(obj) || IS_DGFX(i915))) {
[...]
+	} else
[...]

-:857: CHECK:BRACES: Unbalanced braces around else statement
#857: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:968:
+	} else

total: 0 errors, 0 warnings, 4 checks, 1108 lines checked


