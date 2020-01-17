Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FCE140FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 18:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3025B6F877;
	Fri, 17 Jan 2020 17:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 591E06F64E;
 Fri, 17 Jan 2020 17:30:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48F3BA0138;
 Fri, 17 Jan 2020 17:30:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 17:30:15 -0000
Message-ID: <157928221527.26756.4807030555976990396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Be_paranoid_and_reset_the_GPU_before_release?=
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

Series: drm/i915/gt: Be paranoid and reset the GPU before release
URL   : https://patchwork.freedesktop.org/series/72185/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7764 -> Patchwork_16153
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16153 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16153, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16153:

### IGT changes ###

#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-cml-u2:          [FAIL][1] ([i915#410]) -> [SKIP][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][3] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16153 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][4] -> [DMESG-WARN][5] ([i915#889])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][6] ([i915#505] / [i915#671]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][8] ([i915#889]) -> [PASS][9] +23 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][10] ([i915#770]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][12] ([i915#889]) -> [PASS][13] +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [FAIL][14] ([i915#410]) -> [PASS][15] +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [FAIL][16] ([i915#410]) -> [DMESG-WARN][17] ([IGT#4])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cml-u2:          [FAIL][18] ([i915#410]) -> [SKIP][19] ([fdo#109309]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7764/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [i915#410]: https://gitlab.freedesktop.org/drm/intel/issues/410
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (44 -> 42)
------------------------------

  Additional (6): fi-hsw-4770r fi-skl-6770hq fi-kbl-7500u fi-kbl-7560u fi-bsw-nick fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-gdg-551 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7764 -> Patchwork_16153

  CI-20190529: 20190529
  CI_DRM_7764: 390553573eeaaf2d76f53d5fa3dc1aff9acd9140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16153: a9ae56b6a45c505c327e7d0460b38afa74a43ee7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16153/build_32bit.log

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

a9ae56b6a45c drm/i915/gt: Be paranoid and reset the GPU before release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16153/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
