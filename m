Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BA3152666
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 07:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B7B6E945;
	Wed,  5 Feb 2020 06:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FD536E945;
 Wed,  5 Feb 2020 06:45:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20A92A0003;
 Wed,  5 Feb 2020 06:45:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 05 Feb 2020 06:45:25 -0000
Message-ID: <158088512510.17320.12328144494162668969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
In-Reply-To: <20200106174156.11081-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp/mst_=3A_Get_clock_rate_from_sink=27s_available_PBN_=28?=
 =?utf-8?q?rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp/mst : Get clock rate from sink's available PBN (rev2)
URL   : https://patchwork.freedesktop.org/series/71647/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7867 -> Patchwork_16425
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/index.html

Known issues
------------

  Here are the changes found in Patchwork_16425 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/fi-byt-n2820/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][3] -> [FAIL][4] ([i915#178])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_active:
    - fi-whl-u:           [PASS][5] -> [DMESG-FAIL][6] ([i915#666])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-whl-u/igt@i915_selftest@live_active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/fi-whl-u/igt@i915_selftest@live_active.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][9] ([fdo#112271] / [i915#1084]) -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (42 -> 40)
------------------------------

  Additional (9): fi-bdw-5557u fi-bsw-n3050 fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-kbl-7560u fi-kbl-r fi-snb-2600 
  Missing    (11): fi-kbl-soraka fi-hsw-4200u fi-bdw-gvtdvm fi-glk-dsi fi-byt-squawks fi-ilk-650 fi-ctg-p8600 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16425

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16425: 1cb408eb7f9a1e8aea209a6fd4542c67721fa949 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16425/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
ERROR: "__divdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

1cb408eb7f9a drm/i915/dp/mst : Get clock rate from sink's available PBN

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
