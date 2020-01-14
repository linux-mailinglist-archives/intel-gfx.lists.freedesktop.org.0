Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B73B13A88D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710E86E378;
	Tue, 14 Jan 2020 11:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12BC56E373;
 Tue, 14 Jan 2020 11:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AB21A0138;
 Tue, 14 Jan 2020 11:39:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 11:39:31 -0000
Message-ID: <157900197104.24908.8898765739766936004@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Correct_the_rc6_off?=
 =?utf-8?q?set_upon_enabling?=
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

Series: series starting with [1/2] drm/i915/pmu: Correct the rc6 offset upon enabling
URL   : https://patchwork.freedesktop.org/series/72001/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7737 -> Patchwork_16090
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/index.html

Known issues
------------

  Here are the changes found in Patchwork_16090 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#109])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#889]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [PASS][5] -> [DMESG-WARN][6] ([i915#889]) +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [PASS][7] -> [INCOMPLETE][8] ([i915#140])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-wait-default:
    - {fi-ehl-1}:         [INCOMPLETE][9] ([i915#937]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#553] / [i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (40 -> 42)
------------------------------

  Additional (12): fi-hsw-4770r fi-hsw-peppy fi-skl-6770hq fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-blb-e6850 fi-tgl-y fi-skl-6600u 
  Missing    (10): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-skl-lmem fi-byt-n2820 fi-byt-clapper fi-bsw-nick fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7737 -> Patchwork_16090

  CI-20190529: 20190529
  CI_DRM_7737: 2a331333791d2e499ac843e1dc25cd8ea5bdc81f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16090: 126fa2e67360c681eea5ba6af79582bc95227e52 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16090/build_32bit.log

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

126fa2e67360 drm/i915/gt: Clear rc6 residency trackers across suspend
c8f4c2b3a1c8 drm/i915/pmu: Correct the rc6 offset upon enabling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
