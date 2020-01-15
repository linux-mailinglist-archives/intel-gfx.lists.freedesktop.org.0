Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B228813BD77
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA5B6E900;
	Wed, 15 Jan 2020 10:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75DE16E901;
 Wed, 15 Jan 2020 10:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E8F5A0087;
 Wed, 15 Jan 2020 10:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 15 Jan 2020 10:33:20 -0000
Message-ID: <157908440045.2009.10707072045310221972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev13=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev13)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7748 -> Patchwork_16107
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16107 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16107, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16107:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-bxt-dsi/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_basic@basic}:
    - {fi-ehl-1}:         NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-ehl-1/igt@gem_exec_basic@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16107 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][4] -> [FAIL][5] ([fdo#109635] / [i915#262])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][6] ([i915#563]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][8] ([i915#217]) -> [DMESG-WARN][9] ([IGT#4] / [i915#263])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][10] ([i915#858]) -> [FAIL][11] ([i915#192] / [i915#193] / [i915#194])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-8809g/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-kbl-8809g/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][12] ([fdo#111764] / [i915#577]) -> [FAIL][13] ([i915#577])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-cml-s/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858


Participating hosts (42 -> 39)
------------------------------

  Additional (6): fi-byt-j1900 fi-ivb-3770 fi-skl-lmem fi-blb-e6850 fi-byt-n2820 fi-bsw-nick 
  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-bsw-kefka 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7748 -> Patchwork_16107

  CI-20190529: 20190529
  CI_DRM_7748: 1793de9a4215356790b87608fcfc9e99eeb6954d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16107: c81891411ee1f80d70dfb63ce3e5b5ace249012e @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16107/build_32bit.log

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

c81891411ee1 drm/i915: Correctly map DBUF slices to pipes
ab2871f866a3 drm/i915: Introduce parameterized DBUF_CTL
6fa5e89f8dfb drm/i915: Manipulate DBuf slices properly
9c02bbfc80f8 drm/i915: Move dbuf slice update to proper place
091637515149 drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16107/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
