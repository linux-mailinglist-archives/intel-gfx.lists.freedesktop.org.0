Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71246F901
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 03:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6468210E1CE;
	Fri, 10 Dec 2021 02:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96FAC89F71;
 Fri, 10 Dec 2021 02:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82AC7A00A0;
 Fri, 10 Dec 2021 02:15:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 10 Dec 2021 02:15:18 -0000
Message-ID: <163910251850.3444.12839279379507056697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1639057801.git.jani.nikula@intel.com>
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_include_reductions?=
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

Series: drm/i915: include reductions
URL   : https://patchwork.freedesktop.org/series/97789/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_create.o
In file included from drivers/gpu/drm/i915/gem/i915_gem_create.c:9:
./drivers/gpu/drm/i915/pxp/intel_pxp.h: In function ‘intel_pxp_start’:
./drivers/gpu/drm/i915/pxp/intel_pxp.h:45:10: error: ‘ENODEV’ undeclared (first use in this function)
  return -ENODEV;
          ^~~~~~
./drivers/gpu/drm/i915/pxp/intel_pxp.h:45:10: note: each undeclared identifier is reported only once for each function it appears in
./drivers/gpu/drm/i915/pxp/intel_pxp.h: In function ‘intel_pxp_key_check’:
./drivers/gpu/drm/i915/pxp/intel_pxp.h:62:10: error: ‘ENODEV’ undeclared (first use in this function)
  return -ENODEV;
          ^~~~~~
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_create.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_create.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


