Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29336454D4E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 19:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76276E4F1;
	Wed, 17 Nov 2021 18:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3F5B6E4CD;
 Wed, 17 Nov 2021 18:39:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC587A008A;
 Wed, 17 Nov 2021 18:39:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 17 Nov 2021 18:39:00 -0000
Message-ID: <163717434081.18223.10832338704544147548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211117133456.688802-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211117133456.688802-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBN?=
 =?utf-8?q?ore_preparation_for_multi_gt_patches?=
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

Series: More preparation for multi gt patches
URL   : https://patchwork.freedesktop.org/series/97020/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_mman.o
In file included from drivers/gpu/drm/i915/gem/i915_gem_mman.c:1010:
drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c: In function ‘check_partial_mapping’:
drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:144:54: error: ‘struct drm_i915_private’ has no member named ‘gt’; did you mean ‘gvt’?
  intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
                                                      ^~
                                                      gvt
In file included from drivers/gpu/drm/i915/gem/i915_gem_mman.c:1010:
drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c: In function ‘check_partial_mappings’:
drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:237:55: error: ‘struct drm_i915_private’ has no member named ‘gt’; did you mean ‘gvt’?
   intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
                                                       ^~
                                                       gvt
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_mman.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_mman.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


