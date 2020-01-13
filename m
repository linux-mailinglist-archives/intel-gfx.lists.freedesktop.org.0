Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E21396F2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3334C6E0A6;
	Mon, 13 Jan 2020 17:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B29D6E096;
 Mon, 13 Jan 2020 17:05:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28C66A0096;
 Mon, 13 Jan 2020 17:05:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jan 2020 17:05:03 -0000
Message-ID: <157893510314.25474.14803537412790868816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113132614.1820518-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113132614.1820518-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Sanitize_and_reset_GPU_before_removing_powercontext?=
 =?utf-8?q?_=28rev5=29?=
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

Series: drm/i915/gt: Sanitize and reset GPU before removing powercontext (rev5)
URL   : https://patchwork.freedesktop.org/series/71952/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733 -> Patchwork_16075
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/index.html

Known issues
------------

  Here are the changes found in Patchwork_16075 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#184])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#163] / [i915#184])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-cfl-guc/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-cfl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-skl-guc:         [PASS][7] -> [INCOMPLETE][8] ([i915#184] / [i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-skl-guc/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-skl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-apl-guc:         [PASS][9] -> [INCOMPLETE][10] ([fdo#103927] / [i915#184])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-apl-guc/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-apl-guc/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][11] -> [DMESG-FAIL][12] ([i915#623])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_pm:
    - fi-icl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#140])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-icl-guc/igt@i915_selftest@live_gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][15] -> [FAIL][16] ([fdo#111096] / [i915#323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - {fi-ehl-1}:         [INCOMPLETE][17] ([i915#937]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-ehl-1/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-ehl-1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][19] ([i915#879]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][23] ([i915#656]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [FAIL][25] ([fdo#109635] / [i915#217]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#163]: https://gitlab.freedesktop.org/drm/intel/issues/163
  [i915#184]: https://gitlab.freedesktop.org/drm/intel/issues/184
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (43 -> 41)
------------------------------

  Additional (6): fi-bwr-2160 fi-ilk-650 fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-skl-lmem 
  Missing    (8): fi-hsw-4770r fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-whl-u fi-byt-n2820 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16075

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16075: d73a5619f4291d5bae984c4ab92fe40c5b0ec760 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16075/build_32bit.log

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

d73a5619f429 drm/i915/gt: Sanitize and reset GPU before removing powercontext

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16075/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
