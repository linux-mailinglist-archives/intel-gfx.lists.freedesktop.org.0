Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 898D61A23D7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A446EA77;
	Wed,  8 Apr 2020 14:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DF126EA73;
 Wed,  8 Apr 2020 14:15:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D743A47E2;
 Wed,  8 Apr 2020 14:15:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 14:15:07 -0000
Message-ID: <158635530741.19347.5837345075070517403@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408104812.22386-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200408104812.22386-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/9=5D_drm/i915/gt=3A_Mark_up_racy_re?=
 =?utf-8?q?ad_of_intel=5Fring=2Ehead?=
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

Series: series starting with [CI,1/9] drm/i915/gt: Mark up racy read of intel_ring.head
URL   : https://patchwork.freedesktop.org/series/75667/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8275 -> Patchwork_17252
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17252 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17252, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17252:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-blb-e6850:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-blb-e6850/igt@gem_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-blb-e6850/igt@gem_tiled_blits@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_17252 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * {igt@gem_wait@busy@all}:
    - fi-bwr-2160:        [FAIL][7] ([i915#1604]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-bwr-2160/igt@gem_wait@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-bwr-2160/igt@gem_wait@busy@all.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-dsi:         [INCOMPLETE][9] ([i915#189]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][11] ([i915#62]) -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1604]: https://gitlab.freedesktop.org/drm/intel/issues/1604
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (52 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8275 -> Patchwork_17252

  CI-20190529: 20190529
  CI_DRM_8275: f2a4da2bcd576d1b56aeb53600e8a0b710117a20 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17252: c498c6b039e88f76f02b1b6d714e9d81c3bb4b18 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c498c6b039e8 drm/i915/gem: Bind the fence async for execbuf
27d347f131a9 drm/i915/gem: Asynchronous GTT unbinding
2538bbe3b0dd drm/i915/gem: Separate the ww_mutex walker into its own list
50f81cbd53ef drm/i915: Export a preallocate variant of i915_active_acquire()
390e4f1dba9b drm/i915/gem: Assign context id for async work
5383336232fb drm/i915/gem: Include PIN_GLOBAL prior to using I915_DISPATCH_SECURE
78a5ccdb8c47 drm/i915/gem: Apply more mb() around clflush relocation paths

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17252/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
