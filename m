Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC9E69848F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 20:31:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816AE10E14B;
	Wed, 15 Feb 2023 19:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A2E710E14B;
 Wed, 15 Feb 2023 19:31:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FEEDAA0ED;
 Wed, 15 Feb 2023 19:31:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 15 Feb 2023 19:31:49 -0000
Message-ID: <167648950916.30600.11524973732953111115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_a_TTM_shrinker?=
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

Series: Add a TTM shrinker
URL   : https://patchwork.freedesktop.org/series/114060/
State : warning

== Summary ==

Error: dim checkpatch failed
868fc3be5310 drm/ttm: Fix a NULL pointer dereference
98296903c17c drm/ttm/pool: Fix ttm_pool_alloc error path
f7427cf5528b drm/ttm: Use the BIT macro for the TTM_TT_FLAGs
c43883970a8f drm/ttm, drm/vmwgfx: Update the TTM swapout interface
71e9cc6ac605 drm/ttm: Unexport ttm_global_swapout()
28c5436faefb drm/ttm: Don't use watermark accounting on shrinkable pools
0cbaa4650e8b drm/ttm: Reduce the number of used allocation orders for TTM pages
0ffa5f3b05c3 drm/ttm: Add a shrinker and shrinker accounting
d5139754ecca drm/ttm: Introduce shrink throttling.
eb622f9e593b drm/ttm: Remove pinned bos from shrinkable accounting
5f42659a9f7f drm/ttm: Add a simple api to set / clear purgeable ttm_tt content
2f92445365a0 mm: Add interfaces to back up and recover folio contents using swap
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:109: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#109: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 339 lines checked
e76abab95b0c drm/ttm: Make the call to ttm_tt_populate() interruptible when faulting
fdd0475a9c94 drm/ttm: Provide helpers for shrinking
629412555d1a drm/ttm: Use fault-injection to test error paths
-:24: WARNING:CONFIG_DESCRIPTION: please write a help paragraph that fully describes the config symbol
#24: FILE: drivers/gpu/drm/Kconfig:205:
+config DRM_TTM_SHRINK_FAULT_INJECT
+	bool "Enable fault injection during TTM shrinking"
+	depends on DRM_TTM
+	default n
+	help
+	  Inject recoverable failures during TTM shrinking and recovery of
+	  shrunken objects. For DRM driver developers only.
+
+	  If in doubt, choose N.
+

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
714409e46b58 drm/i915, drm/ttm: Use the TTM shrinker rather than the external shmem pool


