Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DC1410D6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 19:32:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1926F8A1;
	Fri, 17 Jan 2020 18:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1873E6F8A1;
 Fri, 17 Jan 2020 18:32:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 102B0A0019;
 Fri, 17 Jan 2020 18:32:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 17 Jan 2020 18:32:30 -0000
Message-ID: <157928595006.26754.2686498469746787968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117132413.1170563-1-matthew.auld@intel.com>
In-Reply-To: <20200117132413.1170563-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915/userptr=3A_add_user?=
 =?utf-8?q?=5Fsize_limit_check?=
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

Series: series starting with [v3,1/2] drm/i915/userptr: add user_size limit check
URL   : https://patchwork.freedesktop.org/series/72186/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7764 -> Patchwork_16154
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16154 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16154, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16154:

### IGT changes ###

#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-cml-u2:          [FAIL][1] ([i915#410]) -> [SKIP][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_16154 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8] ([i915#148])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-pnv-d510:        [PASS][9] -> [FAIL][10] ([i915#34])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][11] ([i915#889]) -> [PASS][12] +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][13] ([i915#889]) -> [PASS][14] +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [FAIL][15] ([i915#410]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] -> [DMESG-FAIL][18] ([i915#563])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#770]) -> [DMESG-FAIL][20] ([i915#563])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [FAIL][21] ([i915#410]) -> [DMESG-WARN][22] ([IGT#4])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cml-u2:          [FAIL][23] ([i915#410]) -> [SKIP][24] ([fdo#109309]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#410]: https://gitlab.freedesktop.org/drm/intel/issues/410
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (44 -> 41)
------------------------------

  Additional (4): fi-hsw-4770r fi-skl-6770hq fi-tgl-y fi-bsw-nick 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-cfl-guc fi-elk-e7500 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7764 -> Patchwork_16154

  CI-20190529: 20190529
  CI_DRM_7764: 390553573eeaaf2d76f53d5fa3dc1aff9acd9140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16154: 4f7ef220831cb765a6ea656b5662883f16e367e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16154/build_32bit.log

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

4f7ef220831c drm/i915/userptr: fix size calculation
584a25fcf61b drm/i915/userptr: add user_size limit check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16154/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
