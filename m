Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2438412BE30
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 18:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64B26E0BE;
	Sat, 28 Dec 2019 17:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 303656E083;
 Sat, 28 Dec 2019 17:46:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07676A0099;
 Sat, 28 Dec 2019 17:46:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 28 Dec 2019 17:46:34 -0000
Message-ID: <157755519400.778.11614730297431425006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191228171309.3114627-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191228171309.3114627-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Avoid_using_tag_0_for_the_very_first_submission?=
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

Series: drm/i915/gt: Avoid using tag 0 for the very first submission
URL   : https://patchwork.freedesktop.org/series/71458/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7646 -> Patchwork_15938
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15938 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15938, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15938:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-apl-guc/igt@i915_selftest@live_gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-apl-guc/igt@i915_selftest@live_gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_15938 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4] ([i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#770])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-nick:        [PASS][7] -> [DMESG-FAIL][8] ([i915#541])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][9] ([i915#671]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-glk-dsi:         [INCOMPLETE][11] ([i915#58] / [k.org#198133]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][13] ([fdo#106070] / [i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hugepages:
    - fi-byt-n2820:       [DMESG-FAIL][15] ([i915#845]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-byt-n2820/igt@i915_selftest@live_hugepages.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-byt-n2820/igt@i915_selftest@live_hugepages.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-icl-dsi:         [DMESG-WARN][17] ([i915#109]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#725]) -> [DMESG-FAIL][20] ([i915#563])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7646/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#845]: https://gitlab.freedesktop.org/drm/intel/issues/845
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (44 -> 41)
------------------------------

  Additional (5): fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-6770hq fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7646 -> Patchwork_15938

  CI-20190529: 20190529
  CI_DRM_7646: e3cd28462f0f3e5a6a999014a4d7e7fadb61ef9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15938: f3de47f8cd4105d9f41daaa170c4cb9b996b5431 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f3de47f8cd41 drm/i915/gt: Avoid using tag 0 for the very first submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15938/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
