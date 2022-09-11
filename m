Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBFF5B4E50
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Sep 2022 13:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C77D10E3F3;
	Sun, 11 Sep 2022 11:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DB8810E3F3;
 Sun, 11 Sep 2022 11:22:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34D78AA914;
 Sun, 11 Sep 2022 11:22:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 11 Sep 2022 11:22:51 -0000
Message-ID: <166289537119.10771.1315495532221351497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220909105913.752049-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220909105913.752049-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBG?=
 =?utf-8?q?ixes_integer_overflow_or_integer_truncation_issues_in_page_look?=
 =?utf-8?q?ups=2C_ttm_place_configuration_and_scatterlist_creation_=28rev2?=
 =?utf-8?q?=29?=
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

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev2)
URL   : https://patchwork.freedesktop.org/series/108358/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_memory_region.o
In file included from <command-line>:
drivers/gpu/drm/i915/selftests/intel_memory_region.c: In function ‘igt_lmem_create_with_ps’:
././include/linux/compiler_types.h:334:35: error: expected ‘,’ before ‘)’ token
          __same_type(t, typeof(n)))
                                   ^
./drivers/gpu/drm/i915/gem/i915_gem_object.h:630:2: note: in expansion of macro ‘assert_typable’
  assert_typable(pgoff_t, n);   \
  ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/intel_memory_region.c:851:11: note: in expansion of macro ‘i915_gem_object_get_dma_address’
   daddr = i915_gem_object_get_dma_address(obj, 0);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/intel_memory_region.o' failed
make[4]: *** [drivers/gpu/drm/i915/intel_memory_region.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1853: recipe for target 'drivers' failed
make: *** [drivers] Error 2


