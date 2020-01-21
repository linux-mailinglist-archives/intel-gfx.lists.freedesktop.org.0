Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F278D1447EF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 23:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8A96EDC6;
	Tue, 21 Jan 2020 22:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62E096EDC5;
 Tue, 21 Jan 2020 22:55:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59E72A0093;
 Tue, 21 Jan 2020 22:55:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 22:55:55 -0000
Message-ID: <157964735534.11479.11499274987986188461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121222447.419489-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121222447.419489-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_Clear_the_GGTT=5FWRITE_?=
 =?utf-8?q?bit_on_unbinding_the_vma?=
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

Series: series starting with [1/7] drm/i915: Clear the GGTT_WRITE bit on unbinding the vma
URL   : https://patchwork.freedesktop.org/series/72355/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7786 -> Patchwork_16201
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16201 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16201, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16201:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [INCOMPLETE][1] ([i915#45] / [i915#999]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
    - fi-byt-n2820:       [INCOMPLETE][3] ([i915#45] / [i915#999]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16201 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@bad-close:
    - fi-icl-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#109])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-icl-dsi/igt@gem_basic@bad-close.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-icl-dsi/igt@gem_basic@bad-close.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] ([i915#889])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [PASS][9] -> [INCOMPLETE][10] ([i915#151])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [PASS][11] -> [INCOMPLETE][12] ([fdo#108569] / [i915#140])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#563]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][15] ([i915#656]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][17] ([i915#770]) -> [DMESG-FAIL][18] ([i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (45 -> 44)
------------------------------

  Additional (6): fi-kbl-7560u fi-hsw-peppy fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16201

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16201: 37d47960d06d90958d6f12e542554cd33959058b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

37d47960d06d drm/i915/gt: Yield the timeslice if waiting on a semaphore
1d79c7ddc249 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
c6e519447145 drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
9742a98ce03f drm/i915: Mark the removal of the i915_request from the sched.link
231180d28fd3 drm/i915: Don't show the blank process name for internal/simulated errors
b04be36c5df3 drm/i915/execlists: Reclaim the hanging virtual request
2068495785db drm/i915: Clear the GGTT_WRITE bit on unbinding the vma

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16201/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
