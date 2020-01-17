Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0C4140EA8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 17:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2CF6F61C;
	Fri, 17 Jan 2020 16:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 189E26F61B;
 Fri, 17 Jan 2020 16:07:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04E98A0138;
 Fri, 17 Jan 2020 16:07:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 16:07:20 -0000
Message-ID: <157927724099.26757.6923733369937790490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117101314.2897102-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117101314.2897102-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Report_the_currently_active_execlists_request_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/gt: Report the currently active execlists request (rev2)
URL   : https://patchwork.freedesktop.org/series/72179/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7762 -> Patchwork_16152
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/index.html

Known issues
------------

  Here are the changes found in Patchwork_16152 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-glk-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#58] / [k.org#198133])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#553] / [i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-icl-dsi:         [PASS][9] -> [INCOMPLETE][10] ([i915#140])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-icl-dsi/igt@kms_addfb_basic@unused-modifier.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-icl-dsi/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] ([fdo#109635] / [i915#262])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][13] ([fdo#112271] / [i915#816]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [FAIL][15] ([fdo#103375]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][17] ([i915#889]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][19] ([i915#889]) -> [PASS][20] +23 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6770hq:      [DMESG-WARN][21] ([i915#889]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][23] ([i915#725]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][25] ([i915#889]) -> [PASS][26] +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-snb-2520m:       [FAIL][27] ([i915#34]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-snb-2520m/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-snb-2520m/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-skl-6770hq:      [INCOMPLETE][29] -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6770hq/igt@amdgpu/amd_prime@i915-to-amd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6770hq/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [DMESG-WARN][31] ([i915#889]) -> [DMESG-WARN][32] ([i915#88])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][33] ([fdo#109271]) -> [FAIL][34] ([i915#579])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7762/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 37)
------------------------------

  Additional (1): fi-bdw-5557u 
  Missing    (12): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-gdg-551 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7762 -> Patchwork_16152

  CI-20190529: 20190529
  CI_DRM_7762: 82b4da20384b69f4a71dd4a8f2cdf40077f46494 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16152: df4d12c02ecac9092157c31ac253741628f4792e @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16152/build_32bit.log

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

df4d12c02eca drm/i915/gt: Report the currently active execlists request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16152/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
