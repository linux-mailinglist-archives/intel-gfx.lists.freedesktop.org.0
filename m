Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7139546976
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 17:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C16112206;
	Fri, 10 Jun 2022 15:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CD4510FCE4;
 Fri, 10 Jun 2022 15:35:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24C5AAA914;
 Fri, 10 Jun 2022 15:35:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Fri, 10 Jun 2022 15:35:54 -0000
Message-ID: <165487535414.16746.1826593694431505704@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610070711.32407-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220610070711.32407-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi?=
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

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi
URL   : https://patchwork.freedesktop.org/series/104962/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
In file included from ./drivers/gpu/drm/i915/i915_pmu.h:13,
                 from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:21,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                 from ./drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                 from ./drivers/gpu/drm/i915/i915_request.h:34,
                 from ./drivers/gpu/drm/i915/i915_active.h:13,
                 from ./drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h:12,
                 from ./drivers/gpu/drm/i915/i915_vma.h:33,
                 from drivers/gpu/drm/i915/display/intel_display_types.h:48,
                 from drivers/gpu/drm/i915/i915_driver.c:52:
./include/uapi/drm/i915_drm.h:1932:2: error: "/*" within comment [-Werror=comment]
  /** @param: Parameter to set or query */
   
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/i915_driver.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_driver.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1839: recipe for target 'drivers' failed
make: *** [drivers] Error 2


