Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D084A921A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 02:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39F210E623;
	Fri,  4 Feb 2022 01:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F19410E618;
 Fri,  4 Feb 2022 01:45:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95207AA917;
 Fri,  4 Feb 2022 01:45:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Fri, 04 Feb 2022 01:45:20 -0000
Message-ID: <164393912057.12040.4398452822283629082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/mm=3A_Add_an_iterator_to_opti?=
 =?utf-8?q?mally_walk_over_holes_for_an_allocation_=28rev2=29?=
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

Series: series starting with [1/2] drm/mm: Add an iterator to optimally walk over holes for an allocation (rev2)
URL   : https://patchwork.freedesktop.org/series/99597/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_gem.o
drivers/gpu/drm/i915/i915_gem.c: In function ‘i915_gem_object_fits_in_aperture’:
drivers/gpu/drm/i915/i915_gem.c:944:2: error: implicit declaration of function ‘drm_mm_for_each_suitable_hole’; did you mean ‘drm_mm_for_each_best_hole’? [-Werror=implicit-function-declaration]
  drm_mm_for_each_suitable_hole(hole, &ggtt->vm.mm, 0, ggtt->mappable_end,
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drm_mm_for_each_best_hole
drivers/gpu/drm/i915/i915_gem.c:945:41: error: expected ‘;’ before ‘{’ token
           fence_size, DRM_MM_INSERT_LOW) {
                                         ^~
                                         ;
drivers/gpu/drm/i915/i915_gem.c:889:15: error: unused variable ‘count’ [-Werror=unused-variable]
  unsigned int count = 0;
               ^~~~~
drivers/gpu/drm/i915/i915_gem.c:887:35: error: unused variable ‘end’ [-Werror=unused-variable]
  u64 hole_start, hole_end, start, end;
                                   ^~~
drivers/gpu/drm/i915/i915_gem.c:887:28: error: unused variable ‘start’ [-Werror=unused-variable]
  u64 hole_start, hole_end, start, end;
                            ^~~~~
drivers/gpu/drm/i915/i915_gem.c:887:18: error: unused variable ‘hole_end’ [-Werror=unused-variable]
  u64 hole_start, hole_end, start, end;
                  ^~~~~~~~
drivers/gpu/drm/i915/i915_gem.c:887:6: error: unused variable ‘hole_start’ [-Werror=unused-variable]
  u64 hole_start, hole_end, start, end;
      ^~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.c:964:1: error: control reaches end of non-void function [-Werror=return-type]
 }
 ^
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/i915_gem.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_gem.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


