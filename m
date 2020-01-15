Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B42913CA21
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 18:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D756189D3E;
	Wed, 15 Jan 2020 17:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 100CE89CF6;
 Wed, 15 Jan 2020 17:00:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F17A0A011A;
 Wed, 15 Jan 2020 17:00:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 15 Jan 2020 17:00:13 -0000
Message-ID: <157910761396.2010.2529761507290297027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev14=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev14)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7750 -> Patchwork_16113
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16113 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16113, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16113:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16113 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@vgem_basic@second-client:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-tgl-y/igt@vgem_basic@second-client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-tgl-y/igt@vgem_basic@second-client.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [INCOMPLETE][9] ([i915#937]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-tgl-y/igt@kms_addfb_basic@clobberred-modifier.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-tgl-y/igt@kms_addfb_basic@clobberred-modifier.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][13] ([i915#770]) -> [DMESG-FAIL][14] ([i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][15] ([fdo#111764] / [i915#577]) -> [FAIL][16] ([i915#577])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-cml-s/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-cml-s/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][17] ([i915#858]) -> [FAIL][18] ([i915#192] / [i915#193] / [i915#194])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7750/fi-kbl-8809g/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (49 -> 47)
------------------------------

  Additional (4): fi-kbl-soraka fi-glk-dsi fi-byt-n2820 fi-pnv-d510 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7750 -> Patchwork_16113

  CI-20190529: 20190529
  CI_DRM_7750: ec37dea96d01dd08389ca8c32382145c4a57973d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16113: 70cfdb1a187ea6f70887258c0f6454f2ffd802a9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16113/build_32bit.log

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

70cfdb1a187e drm/i915: Correctly map DBUF slices to pipes
c95f56d70250 drm/i915: Introduce parameterized DBUF_CTL
8f1e0b214049 drm/i915: Manipulate DBuf slices properly
b0a11bc83b40 drm/i915: Move dbuf slice update to proper place
3ae5ebdd596a drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16113/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
