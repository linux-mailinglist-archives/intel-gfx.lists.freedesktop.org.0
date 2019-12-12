Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C311C602
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 07:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7761F6EC62;
	Thu, 12 Dec 2019 06:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93C076EC61;
 Thu, 12 Dec 2019 06:37:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85874A00C7;
 Thu, 12 Dec 2019 06:37:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 06:37:59 -0000
Message-ID: <157613267952.32007.14383075138872706323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212010353.736593-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212010353.736593-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Pull_intel=5Ftimeline=2Erequests_list_under_a_spinl?=
 =?utf-8?q?ock?=
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

Series: drm/i915/gt: Pull intel_timeline.requests list under a spinlock
URL   : https://patchwork.freedesktop.org/series/70796/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7547 -> Patchwork_15706
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15706 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15706, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15706:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-skl-6770hq:      NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_15706 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][2] -> [DMESG-FAIL][3] ([i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][4] -> [INCOMPLETE][5] ([i915#694])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-ivb-3770:        [FAIL][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-ivb-3770/igt@gem_exec_create@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-ivb-3770/igt@gem_exec_create@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][8] ([i915#44]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][10] ([i915#704]) -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][12] ([i915#553] / [i915#725]) -> [DMESG-FAIL][13] ([i915#725])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][14] ([i915#45]) -> [DMESG-FAIL][15] ([i915#722])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7547/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7547 -> Patchwork_15706

  CI-20190529: 20190529
  CI_DRM_7547: e0c7239f747c14879732b0e94c9bbe816b7a241a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15706: 6ae8510dc6d5c71c0fcdcf821e72b4afb60e4679 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6ae8510dc6d5 drm/i915/gt: Pull intel_timeline.requests list under a spinlock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15706/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
