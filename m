Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A4EA7A4E1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 16:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27ECA10E21C;
	Thu,  3 Apr 2025 14:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512F110E21C;
 Thu,  3 Apr 2025 14:17:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_fix_CONFIG=5FDRM=5FUSE=5F?=
 =?utf-8?q?DYNAMIC=5FDEBUG=3Dy_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Apr 2025 14:17:20 -0000
Message-ID: <174368984032.33519.5324275590110759033@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250402174156.1246171-1-jim.cromie@gmail.com>
In-Reply-To: <20250402174156.1246171-1-jim.cromie@gmail.com>
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

Series: fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y (rev4)
URL   : https://patchwork.freedesktop.org/series/135705/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/135705/revisions/4/mbox/ not applied
Applying: vmlinux.lds.h: fixup HEADERED_SECTION{,_BY} macros
Applying: docs/dyndbg: update examples \012 to \n
Applying: docs/dyndbg: explain flags parse 1st
Applying: test-dyndbg: fixup CLASSMAP usage error
Applying: dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
Applying: dyndbg: make ddebug_class_param union members same size
Applying: dyndbg: drop NUM_TYPE_ARRAY
Applying: dyndbg: reduce verbose/debug clutter
Applying: dyndbg: refactor param_set_dyndbg_classes and below
Applying: dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
Applying: dyndbg: replace classmap list with a vector
Applying: dyndbg: macrofy a 2-index for-loop pattern
Applying: dyndbg, module: make proper substructs in _ddebug_info
Applying: dyndbg: hoist classmap-filter-by-modname up to ddebug_add_module
Applying: dyndbg: ddebug_table.mod_name down to _ddebug_info
Applying: dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
Applying: dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
Applying: selftests-dyndbg: add tools/testing/selftests/dynamic_debug/*
Applying: dyndbg: detect class_id reservation conflicts
Applying: dyndbg: check DYNAMIC_DEBUG_CLASSMAP_DEFINE args at compile-time
Applying: dyndbg-test: change do_prints testpoint to accept a loopct
Applying: dyndbg-API: promote DYNAMIC_DEBUG_CLASSMAP_PARAM to API
Applying: dyndbg: treat comma as a token separator
Applying: dyndbg: split multi-query strings with %
Applying: selftests-dyndbg: add test_mod_submod
Applying: dyndbg: change __dynamic_func_call_cls* macros into expressions
Applying: dyndbg: drop "protection" of class'd pr_debugs from legacy queries
Applying: dyndbg: restore classmap protection when theres a controlling_param
Applying: docs/dyndbg: add classmap info to howto
Applying: drm: use correct ccflags-y spelling
Applying: drm-dyndbg: adapt drm core to use dyndbg classmaps-v2
Applying: drm-dyndbg: adapt DRM to invoke DYNAMIC_DEBUG_CLASSMAP_PARAM
Applying: drm-print: fix config-dependent unused variable
Applying: drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
Applying: drm-dyndbg: DRM_CLASSMAP_USE in i915 driver
Applying: drm-dyndbg: DRM_CLASSMAP_USE in drm_crtc_helper
Applying: drm-dyndbg: DRM_CLASSMAP_USE in drm_dp_helper
Applying: drm-dyndbg: DRM_CLASSMAP_USE in nouveau
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to Xe driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to simpledrm
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to bochs
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to gma500 driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to radeon
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to vmwgfx driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to vkms driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to udl driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to mgag200 driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to the gud driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to the qxl driver
Applying: drm-dyndbg: add DRM_CLASSMAP_USE to the drm_gem_shmem_helper driver
Applying: drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0053 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


