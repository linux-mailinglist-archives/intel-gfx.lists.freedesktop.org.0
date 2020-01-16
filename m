Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E9913DF02
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 16:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144CF6EDA1;
	Thu, 16 Jan 2020 15:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8512E6ED9F;
 Thu, 16 Jan 2020 15:38:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C389A0019;
 Thu, 16 Jan 2020 15:38:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 15:38:37 -0000
Message-ID: <157918911750.12913.12256765949980033950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116125749.2786743-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200116125749.2786743-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_rogue_space_in_the_middle_of_GT=5FTRACE?=
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

Series: drm/i915/gt: Drop rogue space in the middle of GT_TRACE
URL   : https://patchwork.freedesktop.org/series/72108/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7754 -> Patchwork_16129
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/index.html

Known issues
------------

  Here are the changes found in Patchwork_16129 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-tgl-y/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-tgl-y/igt@gem_exec_parallel@basic.html

  * igt@gem_sync@basic-store-all:
    - fi-tgl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#472])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-tgl-y/igt@gem_sync@basic-store-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-tgl-y/igt@gem_sync@basic-store-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#505])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-FAIL][8] ([i915#889]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [PASS][9] -> [DMESG-WARN][10] ([i915#889]) +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][11] ([i915#770]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111096] / [i915#323]) -> [FAIL][14] ([fdo#111407])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-hsw-4770r fi-byt-n2820 fi-snb-2520m fi-ehl-1 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-elk-e7500 fi-blb-e6850 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7754 -> Patchwork_16129

  CI-20190529: 20190529
  CI_DRM_7754: 4db14301dfa813d24cd2ad46552af83d493c5d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16129: c2dc02f09ced509810045c944c9d9dd5fca1c9f1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16129/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

c2dc02f09ced drm/i915/gt: Drop rogue space in the middle of GT_TRACE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
