Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF60B13E77A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 18:26:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED6F6EE3D;
	Thu, 16 Jan 2020 17:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7E1C6EE3D;
 Thu, 16 Jan 2020 17:26:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEAF5A0138;
 Thu, 16 Jan 2020 17:26:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 16 Jan 2020 17:26:24 -0000
Message-ID: <157919558477.12913.516371624618147797@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_HWs_=28rev2=29?=
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

Series: Security mitigation for Intel Gen7 HWs (rev2)
URL   : https://patchwork.freedesktop.org/series/72028/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7755 -> Patchwork_16133
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/index.html

Known issues
------------

  Here are the changes found in Patchwork_16133 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#505] / [i915#671])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770:        [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-hsw-4770/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  * igt@prime_self_import@basic-with_fd_dup:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         [INCOMPLETE][13] ([i915#937]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-ehl-1/igt@gem_exec_parallel@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-ehl-1/igt@gem_exec_parallel@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][15] ([i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-icl-dsi:         [DMESG-WARN][19] ([i915#109]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/fi-icl-dsi/igt@vgem_basic@dmabuf-mmap.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/fi-icl-dsi/igt@vgem_basic@dmabuf-mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (48 -> 41)
------------------------------

  Additional (1): fi-kbl-r 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-6770hq fi-byt-squawks fi-kbl-x1275 fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7755 -> Patchwork_16133

  CI-20190529: 20190529
  CI_DRM_7755: 9bb4096398e728d98fb5721175edd1281c4732e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16133: 6b4f188b8e71ad6e664b7c083809d7cc48252215 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16133/build_32bit.log

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

6b4f188b8e71 drm/i915/gen7: Clear all EU/L3 residual contexts
92c14eedb4e1 drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16133/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
