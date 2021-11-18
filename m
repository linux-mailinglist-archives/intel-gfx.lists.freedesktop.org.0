Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F953455E87
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 15:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF83D6E94D;
	Thu, 18 Nov 2021 14:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 813966E94D;
 Thu, 18 Nov 2021 14:48:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D6BFAA917;
 Thu, 18 Nov 2021 14:48:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mullati Siva" <siva.mullati@intel.com>
Date: Thu, 18 Nov 2021 14:48:11 -0000
Message-ID: <163724689150.10079.7422473936854103909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118111319.412926-1-siva.mullati@intel.com>
In-Reply-To: <20211118111319.412926-1-siva.mullati@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Skip_remap=5Fio=28=29_calls_for_non-x86_platforms?=
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

Series: drm/i915: Skip remap_io() calls for non-x86 platforms
URL   : https://patchwork.freedesktop.org/series/97069/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  LD [M]  drivers/gpu/drm/i915/i915.o
  HDRTEST drivers/gpu/drm/i915/i915_mm.h
In file included from <command-line>:
./drivers/gpu/drm/i915/i915_mm.h:12:29: error: ‘struct io_mapping’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
                      struct io_mapping *iomap);
                             ^~~~~~~~~~
./drivers/gpu/drm/i915/i915_mm.h:10:29: error: ‘struct vm_area_struct’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 int remap_io_mapping(struct vm_area_struct *vma,
                             ^~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_mm.h:15:42: error: unknown type name ‘resource_size_t’
                 struct scatterlist *sgl, resource_size_t iobase);
                                          ^~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
drivers/gpu/drm/i915/Makefile:340: recipe for target 'drivers/gpu/drm/i915/i915_mm.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/i915_mm.hdrtest] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


