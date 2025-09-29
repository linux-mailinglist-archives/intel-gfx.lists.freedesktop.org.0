Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291C6BAA9A0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 22:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C7010E060;
	Mon, 29 Sep 2025 20:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834F010E060;
 Mon, 29 Sep 2025 20:42:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Optimize_page_tabl?=
 =?utf-8?q?es_overhead_with_THP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Sep 2025 20:42:28 -0000
Message-ID: <175917854853.376818.8055467814272760564@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250929200316.18417-1-loic.molinari@collabora.com>
In-Reply-To: <20250929200316.18417-1-loic.molinari@collabora.com>
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

Series: drm: Optimize page tables overhead with THP
URL   : https://patchwork.freedesktop.org/series/155185/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gem/i915_gemfs.o
drivers/gpu/drm/i915/gem/i915_gemfs.c: In function ‘i915_gemfs_init’:
drivers/gpu/drm/i915/gem/i915_gemfs.c:29:17: error: implicit declaration of function ‘drm_gem_shmem_huge_mnt_create’ [-Werror=implicit-function-declaration]
   29 |         gemfs = drm_gem_shmem_huge_mnt_create("within_size");
      |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gemfs.c:29:15: error: assignment to ‘struct vfsmount *’ from ‘int’ makes pointer from integer without a cast [-Werror=int-conversion]
   29 |         gemfs = drm_gem_shmem_huge_mnt_create("within_size");
      |               ^
drivers/gpu/drm/i915/gem/i915_gemfs.c: In function ‘i915_gemfs_fini’:
drivers/gpu/drm/i915/gem/i915_gemfs.c:46:9: error: implicit declaration of function ‘drm_gem_shmem_huge_mnt_free’ [-Werror=implicit-function-declaration]
   46 |         drm_gem_shmem_huge_mnt_free(i915->mm.gemfs);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/gem/i915_gemfs.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


