Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB1813D0D2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 00:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0FB6E138;
	Wed, 15 Jan 2020 23:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A16596E138;
 Wed, 15 Jan 2020 23:55:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98582A0134;
 Wed, 15 Jan 2020 23:55:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 15 Jan 2020 23:55:37 -0000
Message-ID: <157913253759.2008.11269907856953960768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev15=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev15)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7752 -> Patchwork_16120
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16120 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16120, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16120:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u3:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-y:           [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-icl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-icl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-dsi:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-u}:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-tgl-u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-tgl-u/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_16120 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][15] -> [FAIL][16] ([i915#579])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] ([i915#770]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][19] ([i915#889]) -> [PASS][20] +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-skl-6600u:       [DMESG-WARN][21] ([i915#889]) -> [PASS][22] +23 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#111096] / [i915#323]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][25] ([i915#553] / [i915#725]) -> [DMESG-FAIL][26] ([i915#725])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7752/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (52 -> 47)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (6): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7752 -> Patchwork_16120

  CI-20190529: 20190529
  CI_DRM_7752: 1acaf8e4ce01dbf5b65be9d60f93e88ebcabbfe0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16120: a4f1da78d27c3445b0d7575d5c41cdedaab56379 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16120/build_32bit.log

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

a4f1da78d27c drm/i915: Correctly map DBUF slices to pipes
675df31dc312 drm/i915: Introduce parameterized DBUF_CTL
7d4987449c84 drm/i915: Manipulate DBuf slices properly
08817b999ca8 drm/i915: Move dbuf slice update to proper place
20b932365f4f drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16120/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
