Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ABD12CF08
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 12:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA9189760;
	Mon, 30 Dec 2019 11:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DFA289739;
 Mon, 30 Dec 2019 11:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85178A0019;
 Mon, 30 Dec 2019 11:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 11:01:41 -0000
Message-ID: <157770370151.15517.3631211445582616881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Ensure_that_all_new_?=
 =?utf-8?q?contexts_clear_STOP=5FRING_=28rev3=29?=
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

Series: series starting with [1/7] drm/i915/gt: Ensure that all new contexts clear STOP_RING (rev3)
URL   : https://patchwork.freedesktop.org/series/71479/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7653 -> Patchwork_15943
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15943 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15943, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15943:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15943 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][4] -> [DMESG-WARN][5] ([fdo#111764])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][6] -> [DMESG-WARN][7] ([i915#889]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][8] -> [DMESG-WARN][9] ([i915#889])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][10] -> [DMESG-FAIL][11] ([i915#725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][12] -> [DMESG-FAIL][13] ([i915#656])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770r:       [PASS][14] -> [DMESG-FAIL][15] ([i915#761])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][16] -> [FAIL][17] ([fdo#111096] / [i915#323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][18] ([i915#725]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][20] ([i915#424]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][22] ([i915#889]) -> [PASS][23] +7 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-skl-6600u:       [DMESG-WARN][24] ([i915#889]) -> [PASS][25] +23 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         [INCOMPLETE][26] ([i915#198]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][29] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][30] ([i915#725]) -> [DMESG-FAIL][31] ([i915#770])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][32] ([i915#62] / [i915#92]) -> [DMESG-WARN][33] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][35] ([i915#62] / [i915#92]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7653/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#761]: https://gitlab.freedesktop.org/drm/intel/issues/761
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7653 -> Patchwork_15943

  CI-20190529: 20190529
  CI_DRM_7653: 608642beeaaad64ac9a722fccd6b5dcdad697267 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15943: eae700c5de54e21cdc3107b7037a1f0d693dd4f6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eae700c5de54 drm/i915/gt: Always poison the kernel_context image before unparking
68f7444b3fa8 drm/i915/gt: Discard stale context state from across idling
a47cedbd4598 drm/i915/gt: Ignore stale context state upon resume
14c04417aaac drm/i915/gt: Do not restore invalid RS state
951d45567deb drm/i915/gt: Avoid using the GPU before initialisation
e97dd5714771 drm/i915/gt: Avoid using tag 0 for the very first submission
01424292e511 drm/i915/gt: Ensure that all new contexts clear STOP_RING

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15943/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
