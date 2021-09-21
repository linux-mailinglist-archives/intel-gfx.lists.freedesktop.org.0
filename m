Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43868413848
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 19:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CB389BFB;
	Tue, 21 Sep 2021 17:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D01E89BFB;
 Tue, 21 Sep 2021 17:27:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 343D5A8830;
 Tue, 21 Sep 2021 17:27:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 17:27:56 -0000
Message-ID: <163224527617.15890.17870683359303706461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921152517.803-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210921152517.803-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/fbc=3A_Rework_CFB_stride/size_calculations_=28rev3=29?=
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

Series: drm/i915/fbc: Rework CFB stride/size calculations (rev3)
URL   : https://patchwork.freedesktop.org/series/92163/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o
In file included from drivers/gpu/drm/i915/display/intel_fbc.c:43:
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘skl_fbc_min_cfb_stride’:
drivers/gpu/drm/i915/display/intel_fbc.c:101:18: error: ‘i915’ undeclared (first use in this function); did you mean ‘to_i915’?
  if (DISPLAY_VER(i915) >= 11)
                  ^~~~
./drivers/gpu/drm/i915/i915_drv.h:1280:33: note: in definition of macro ‘INTEL_INFO’
 #define INTEL_INFO(dev_priv) (&(dev_priv)->__info)
                                 ^~~~~~~~
drivers/gpu/drm/i915/display/intel_fbc.c:101:6: note: in expansion of macro ‘DISPLAY_VER’
  if (DISPLAY_VER(i915) >= 11)
      ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_fbc.c:101:18: note: each undeclared identifier is reported only once for each function it appears in
  if (DISPLAY_VER(i915) >= 11)
                  ^~~~
./drivers/gpu/drm/i915/i915_drv.h:1280:33: note: in definition of macro ‘INTEL_INFO’
 #define INTEL_INFO(dev_priv) (&(dev_priv)->__info)
                                 ^~~~~~~~
drivers/gpu/drm/i915/display/intel_fbc.c:101:6: note: in expansion of macro ‘DISPLAY_VER’
  if (DISPLAY_VER(i915) >= 11)
      ^~~~~~~~~~~
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/display/intel_fbc.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_fbc.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


