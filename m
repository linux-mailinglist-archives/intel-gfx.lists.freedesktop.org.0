Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316A2137329
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 17:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679DF6EA4E;
	Fri, 10 Jan 2020 16:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E8F56EA45;
 Fri, 10 Jan 2020 16:21:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D464A00C7;
 Fri, 10 Jan 2020 16:21:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 16:21:46 -0000
Message-ID: <157867330609.30835.2876147424006978724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Start_chopping_up_?=
 =?utf-8?q?the_GPU_error_capture?=
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

Series: series starting with [CI,1/4] drm/i915: Start chopping up the GPU error capture
URL   : https://patchwork.freedesktop.org/series/71885/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7718 -> Patchwork_16051
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/index.html

Known issues
------------

  Here are the changes found in Patchwork_16051 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#88])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#148])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-FAIL][8] ([i915#722])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][9] -> [DMESG-WARN][10] ([i915#44])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * {igt@gem_exec_basic@basic@bcs0}:
    - fi-byt-n2820:       [FAIL][11] ([i915#694]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-byt-n2820/igt@gem_exec_basic@basic@bcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-byt-n2820/igt@gem_exec_basic@basic@bcs0.html

  * {igt@gem_exec_basic@basic@vcs0}:
    - fi-byt-n2820:       [WARN][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-byt-n2820/igt@gem_exec_basic@basic@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-byt-n2820/igt@gem_exec_basic@basic@vcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][15] ([i915#879]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][17] ([i915#178]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#563]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][21] ([i915#656]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][23] ([i915#725]) -> [DMESG-FAIL][24] ([i915#553] / [i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (46 -> 40)
------------------------------

  Additional (4): fi-bsw-nick fi-bdw-5557u fi-bsw-n3050 fi-snb-2600 
  Missing    (10): fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-ivb-3770 fi-skl-lmem fi-tgl-y fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7718 -> Patchwork_16051

  CI-20190529: 20190529
  CI_DRM_7718: 37be537ac03a8299982f5fd177418aef86fdcc9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5362: c2843f8e06a2cf7d372cd154310bf0e3b7722ab8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16051: 331533c19413db60183f91905e9a5bf767f0d604 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

331533c19413 drm/i915: Drop request list from error state
f295e7438394 drm/i915: Drop the shadow ring state from the error capture
722c6f8f1369 drm/i915: Drop the shadow w/a batch buffer
d117616075ef drm/i915: Start chopping up the GPU error capture

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
