Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218A84DA3BD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65BE10E1AD;
	Tue, 15 Mar 2022 20:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DB1610E1AD;
 Tue, 15 Mar 2022 20:09:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E666AADDE;
 Tue, 15 Mar 2022 20:09:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 15 Mar 2022 20:09:22 -0000
Message-ID: <164737496205.20493.11778736897262537921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315180444.3327283-1-bob.beckett@collabora.com>
In-Reply-To: <20220315180444.3327283-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915=3A_ttm_for_stolen?=
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

Series: drm/i915: ttm for stolen
URL   : https://patchwork.freedesktop.org/series/101396/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o
In file included from ./include/drm/ttm/ttm_resource.h:32,
                 from ./include/drm/ttm/ttm_device.h:30,
                 from ./drivers/gpu/drm/i915/i915_drv.h:41,
                 from drivers/gpu/drm/i915/display/intel_fbc.c:45:
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_alloc_cfb’:
drivers/gpu/drm/i915/display/intel_fbc.c:800:7: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘size_t’ {aka ‘unsigned int’} [-Werror=format=]
       "reserved %lu bytes of contiguous stolen space for FBC, limit: %d\n",
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       fbc->compressed_fb->base.size, fbc->limit);
       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:463:53: note: in definition of macro ‘drm_dbg_kms’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_KMS, fmt, ##__VA_ARGS__)
                                                     ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_fbc.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_fbc.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/build_32bit.log
