Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7BD14013D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 02:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082F96E49F;
	Fri, 17 Jan 2020 01:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 400A56E49F;
 Fri, 17 Jan 2020 01:00:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37649A363B;
 Fri, 17 Jan 2020 01:00:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Fri, 17 Jan 2020 01:00:51 -0000
Message-ID: <157922285120.26755.3125620549585426303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117091627.1697-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200117091627.1697-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1606054188=3Btgl?=
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

Series: drm/i915/tgl: Add Wa_1606054188;tgl
URL   : https://patchwork.freedesktop.org/series/72148/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758 -> Patchwork_16140
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/index.html

Known issues
------------

  Here are the changes found in Patchwork_16140 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([i915#879])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#889]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([fdo#109635] / [i915#217] / [i915#976])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-icl-dsi:         [DMESG-WARN][11] ([i915#109]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-icl-dsi/igt@gem_exec_create@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-icl-dsi/igt@gem_exec_create@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#553] / [i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][15] ([fdo#111096] / [i915#323]) -> [FAIL][16] ([fdo#111407])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (47 -> 43)
------------------------------

  Additional (4): fi-kbl-soraka fi-byt-j1900 fi-byt-n2820 fi-tgl-y 
  Missing    (8): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-gdg-551 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16140

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16140: 7bd0232eb6eccdcde8ee3c919d956c52e6bcf855 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16140/build_32bit.log

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

7bd0232eb6ec drm/i915/tgl: Add Wa_1606054188;tgl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16140/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
