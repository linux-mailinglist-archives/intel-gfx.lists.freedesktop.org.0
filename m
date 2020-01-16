Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9E113DAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 13:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0AF6ECED;
	Thu, 16 Jan 2020 12:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AE2B6ECED;
 Thu, 16 Jan 2020 12:58:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41026A010F;
 Thu, 16 Jan 2020 12:58:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 16 Jan 2020 12:58:24 -0000
Message-ID: <157917950426.12914.6801673961577755532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116114544.16118-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200116114544.16118-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Set_num=5Fqgv=5Fpoints_to_zero_if_we_can=27t_query_the?=
 =?utf-8?q?_actual_points?=
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

Series: drm/i915: Set num_qgv_points to zero if we can't query the actual points
URL   : https://patchwork.freedesktop.org/series/72107/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753 -> Patchwork_16128
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16128:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-ehl-1/igt@gem_exec_parallel@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16128 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][2] -> [DMESG-FAIL][3] ([i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][4] -> [DMESG-FAIL][5] ([i915#553] / [i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][6] -> [DMESG-FAIL][7] ([i915#656])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][8] -> [DMESG-FAIL][9] ([i915#722])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][10] -> [INCOMPLETE][11] ([fdo#106070] / [i915#424])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][12] -> [FAIL][13] ([fdo#111407])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - {fi-ehl-1}:         [INCOMPLETE][14] ([i915#937]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ehl-1/igt@gem_ctx_param@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-ehl-1/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][16] ([i915#889]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][18] ([i915#889]) -> [PASS][19] +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-7500u:       [DMESG-WARN][20] ([i915#889]) -> [PASS][21] +23 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-skl-6600u:       [DMESG-WARN][22] ([i915#889]) -> [PASS][23] +23 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html

  * igt@i915_selftest@live_uncore:
    - fi-kbl-7500u:       [DMESG-FAIL][24] ([i915#889]) -> [PASS][25] +7 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_uncore.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-kbl-7500u/igt@i915_selftest@live_uncore.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][26] ([i915#725]) -> [DMESG-FAIL][27] ([i915#553] / [i915#725])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][28] ([i915#858]) -> [FAIL][29] ([i915#192] / [i915#193] / [i915#194])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-8809g/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16128

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16128: 01b867e00551d18680abdabd41ecc796990c420a @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16128/build_32bit.log

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

01b867e00551 drm/i915: Set num_qgv_points to zero if we can't query the actual points

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
