Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966AE90B1DA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE1710E3EF;
	Mon, 17 Jun 2024 14:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EAEE10E3EF;
 Mon, 17 Jun 2024 14:27:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_make_struct_i?=
 =?utf-8?q?ntel=5Ffrontbuffer_opaque?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2024 14:27:21 -0000
Message-ID: <171863444158.97967.2137691359892388292@a6498e030952>
X-Patchwork-Hint: ignore
References: <cover.1718633874.git.jani.nikula@intel.com>
In-Reply-To: <cover.1718633874.git.jani.nikula@intel.com>
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

Series: drm/i915: make struct intel_frontbuffer opaque
URL   : https://patchwork.freedesktop.org/series/134957/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_clflush.o
In file included from ./include/linux/array_size.h:5,
                 from ./include/linux/string.h:6,
                 from ./include/linux/scatterlist.h:5,
                 from ./include/drm/drm_cache.h:36,
                 from drivers/gpu/drm/i915/gem/i915_gem_clflush.c:7:
drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function ‘i915_gem_object_flush_frontbuffer’:
./include/linux/rcupdate.h:463:9: error: dereferencing pointer to incomplete type ‘struct intel_frontbuffer’
  463 |  typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
      |         ^
./include/linux/compiler.h:77:42: note: in definition of macro ‘unlikely’
   77 | # define unlikely(x) __builtin_expect(!!(x), 0)
      |                                          ^
./include/linux/rcupdate.h:582:31: note: in expansion of macro ‘__rcu_access_pointer’
  582 | #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_ID(rcu), __rcu)
      |                               ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:24:15: note: in expansion of macro ‘rcu_access_pointer’
   24 |  if (unlikely(rcu_access_pointer(obj->frontbuffer)))
      |               ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function ‘i915_gem_object_get_frontbuffer’:
./include/linux/rcupdate.h:463:9: error: dereferencing pointer to incomplete type ‘struct intel_frontbuffer’
  463 |  typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
      |         ^
./include/linux/compiler.h:76:40: note: in definition of macro ‘likely’
   76 | # define likely(x) __builtin_expect(!!(x), 1)
      |                                        ^
./include/linux/rcupdate.h:582:31: note: in expansion of macro ‘__rcu_access_pointer’
  582 | #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_ID(rcu), __rcu)
      |                               ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:50:14: note: in expansion of macro ‘rcu_access_pointer’
   50 |  if (likely(!rcu_access_pointer(obj->frontbuffer)))
      |              ^~~~~~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/gem/i915_gem_clflush.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1934: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


