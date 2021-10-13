Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A7342C4A4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 17:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F8E6E9FA;
	Wed, 13 Oct 2021 15:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69EA76E043;
 Wed, 13 Oct 2021 15:15:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 623BAA8836;
 Wed, 13 Oct 2021 15:15:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 15:15:50 -0000
Message-ID: <163413815037.10252.13153239228459585289@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211013104123.1877827-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211013104123.1877827-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Use_dma=5Fresv=5Fiter_for_waiting_in_i915=5Fgem=5Fob?=
 =?utf-8?q?ject=5Fwait=5Freservation=2E_=28rev3=29?=
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

Series: drm/i915: Use dma_resv_iter for waiting in i915_gem_object_wait_reservation. (rev3)
URL   : https://patchwork.freedesktop.org/series/95765/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_shrinker.o
drivers/gpu/drm/i915/gem/i915_gem_shrinker.c: In function ‘i915_gem_shrink’:
drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:231:4: error: implicit declaration of function ‘dma_resv_prune’; did you mean ‘dma_resv_fini’? [-Werror=implicit-function-declaration]
    dma_resv_prune(obj->base.resv);
    ^~~~~~~~~~~~~~
    dma_resv_fini
cc1: all warnings being treated as errors
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_shrinker.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_shrinker.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


