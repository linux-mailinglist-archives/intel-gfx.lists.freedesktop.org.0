Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3AE6B750F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 12:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2AE10E0F1;
	Mon, 13 Mar 2023 11:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3344810E0F1;
 Mon, 13 Mar 2023 11:02:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B169AADE3;
 Mon, 13 Mar 2023 11:02:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 13 Mar 2023 11:02:17 -0000
Message-ID: <167870533713.1029.7537039656477322671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Fix_build_with_WERROR=3Dy?=
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

Series: drm/i915: Fix build with WERROR=y
URL   : https://patchwork.freedesktop.org/series/115046/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_workarounds.o
In file included from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
drivers/gpu/drm/i915/gt/intel_workarounds.c: In function ‘dg1_gt_workarounds_init’:
drivers/gpu/drm/i915/gt/intel_workarounds.c:1482:13: error: ‘i915’ undeclared (first use in this function); did you mean ‘to_i915’?
 1482 |  if (IS_DG1(i915))
      |             ^~~~
./drivers/gpu/drm/i915/i915_drv.h:559:45: note: in definition of macro ‘IS_DG1’
  559 | #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
      |                                             ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:1482:13: note: each undeclared identifier is reported only once for each function it appears in
 1482 |  if (IS_DG1(i915))
      |             ^~~~
./drivers/gpu/drm/i915/i915_drv.h:559:45: note: in definition of macro ‘IS_DG1’
  559 | #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
      |                                             ^~~~~~~~
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/intel_workarounds.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2028: .] Error 2


