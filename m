Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19513F69FB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 21:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183A36E0CD;
	Tue, 24 Aug 2021 19:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43BC06E0CD;
 Tue, 24 Aug 2021 19:40:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EFF3A73C7;
 Tue, 24 Aug 2021 19:40:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Aug 2021 19:40:22 -0000
Message-ID: <162983402205.27153.5885773888513052965@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210824142531.3877007-1-maorg@nvidia.com>
In-Reply-To: <20210824142531.3877007-1-maorg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?G_fix_together_with_update_to_RDMA_umem_=28rev4=29?=
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

Series: SG fix together with update to RDMA umem (rev4)
URL   : https://patchwork.freedesktop.org/series/92682/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_ttm.o
drivers/gpu/drm/i915/gem/i915_gem_ttm.c: In function ‘i915_ttm_tt_get_st’:
drivers/gpu/drm/i915/gem/i915_gem_ttm.c:395:7: error: implicit declaration of function ‘__sg_alloc_table_from_pages’; did you mean ‘sg_alloc_table_from_pages’? [-Werror=implicit-function-declaration]
  sg = __sg_alloc_table_from_pages
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
       sg_alloc_table_from_pages
drivers/gpu/drm/i915/gem/i915_gem_ttm.c:395:5: error: assignment to ‘struct scatterlist *’ from ‘int’ makes pointer from integer without a cast [-Werror=int-conversion]
  sg = __sg_alloc_table_from_pages
     ^
cc1: all warnings being treated as errors
scripts/Makefile.build:271: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_ttm.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_ttm.o] Error 1
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1851: recipe for target 'drivers' failed
make: *** [drivers] Error 2


