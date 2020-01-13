Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175D13950C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 16:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041076E0FB;
	Mon, 13 Jan 2020 15:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 719B56E0F6;
 Mon, 13 Jan 2020 15:40:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6928AA0096;
 Mon, 13 Jan 2020 15:40:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jan 2020 15:40:40 -0000
Message-ID: <157893004040.25474.15416810231562534038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Preemptive_timeline_retirement_=28rev3=29?=
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

Series: drm/i915: Preemptive timeline retirement (rev3)
URL   : https://patchwork.freedesktop.org/series/71958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733 -> Patchwork_16072
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16072:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16072 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][4] -> [FAIL][5] ([fdo#103375])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][6] -> [INCOMPLETE][7] ([i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-glk-dsi:         [PASS][8] -> [DMESG-WARN][9] ([i915#889]) +23 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-glk-dsi/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-glk-dsi/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_engines:
    - fi-glk-dsi:         [PASS][10] -> [DMESG-FAIL][11] ([i915#889]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-glk-dsi/igt@i915_selftest@live_gt_engines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-glk-dsi/igt@i915_selftest@live_gt_engines.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][12] ([fdo#111764]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [INCOMPLETE][14] ([i915#671]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [INCOMPLETE][16] ([i915#879]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][18] ([i915#563]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][20] ([i915#656]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [FAIL][22] ([fdo#109635] / [i915#217]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (43 -> 43)
------------------------------

  Additional (7): fi-bwr-2160 fi-ilk-650 fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-skl-lmem fi-kbl-7560u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-blb-e6850 fi-byt-clapper fi-bsw-nick 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16072

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16072: 052f69323628c8a5cfa6a1b6bee927a893ba7065 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16072/build_32bit.log

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

052f69323628 drm/i915: More proactive timeline retirement before new requests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
