Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF6B620384
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 00:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B88910E675;
	Mon,  7 Nov 2022 23:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C756910E675;
 Mon,  7 Nov 2022 23:13:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCCC4AADE4;
 Mon,  7 Nov 2022 23:13:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 07 Nov 2022 23:13:27 -0000
Message-ID: <166786280775.17763.12731158244314061303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107173435.68116-1-matthew.auld@intel.com>
In-Reply-To: <20221107173435.68116-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_use_i915=5Fsg=5Fdma=5Fsizes=28=29_for_all_backends?=
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

Series: drm/i915: use i915_sg_dma_sizes() for all backends
URL   : https://patchwork.freedesktop.org/series/110620/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/i915/gvt/dmabuf.o
drivers/gpu/drm/i915/gvt/dmabuf.c: In function ‘vgpu_gem_get_pages’:
drivers/gpu/drm/i915/gvt/dmabuf.c:91:2: error: too many arguments to function ‘__i915_gem_object_set_pages’
  __i915_gem_object_set_pages(obj, st, PAGE_SIZE);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from ./drivers/gpu/drm/i915/i915_vma.h:34,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:13,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:19,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                 from ./drivers/gpu/drm/i915/gt/intel_gt_types.h:19,
                 from ./drivers/gpu/drm/i915/gt/intel_engine.h:18,
                 from ./drivers/gpu/drm/i915/i915_drv.h:46,
                 from drivers/gpu/drm/i915/gvt/dmabuf.c:39:
./drivers/gpu/drm/i915/gem/i915_gem_object.h:405:6: note: declared here
 void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/gvt/dmabuf.o' failed
make[5]: *** [drivers/gpu/drm/i915/gvt/dmabuf.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


