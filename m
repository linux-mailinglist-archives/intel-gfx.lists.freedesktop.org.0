Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEA211A04D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 01:59:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C0F6EA2C;
	Wed, 11 Dec 2019 00:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1129E6EA2C;
 Wed, 11 Dec 2019 00:59:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09139A47DA;
 Wed, 11 Dec 2019 00:59:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 11 Dec 2019 00:59:20 -0000
Message-ID: <157602596001.30690.1690863491049262363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Some_cleanup_near_the_SKL_wm/ddb_area_=28rev3=29?=
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

Series: drm/i915: Some cleanup near the SKL wm/ddb area (rev3)
URL   : https://patchwork.freedesktop.org/series/67930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7533 -> Patchwork_15672
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15672 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15672, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15672:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-b.html
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-hsw-peppy/igt@kms_busy@basic-flip-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-peppy/igt@kms_busy@basic-flip-pipe-b.html
    - fi-hsw-4770r:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-hsw-4770r/igt@kms_busy@basic-flip-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-4770r/igt@kms_busy@basic-flip-pipe-b.html

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-peppy/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-4770/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-hsw-4770r/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15672 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][12] -> [DMESG-WARN][13] ([i915#592])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][14] -> [INCOMPLETE][15] ([i915#45])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][16] -> [FAIL][17] ([fdo#111096] / [i915#323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic-small-bo:
    - fi-icl-dsi:         [DMESG-WARN][18] ([i915#109]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-icl-dsi/igt@gem_mmap_gtt@basic-small-bo.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-icl-dsi/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][20] ([i915#178]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [FAIL][22] ([i915#579]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-kefka:       [DMESG-FAIL][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][27] ([fdo#107139] / [i915#62] / [i915#92])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92]) -> [DMESG-WARN][29] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][31] ([i915#62] / [i915#92]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 46)
------------------------------

  Additional (2): fi-tgl-u fi-tgl-y 
  Missing    (9): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7533 -> Patchwork_15672

  CI-20190529: 20190529
  CI_DRM_7533: 5f07735eaf4b5debe7c2d70908388af179a11d1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15672: 8805fc21abaafbe7f8e6b1cdbfc0d479d8136ce6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8805fc21abaa drm/i915: Nuke skl wm.dirty_pipes bitmask
52b6bbbcf75d drm/i915: Move linetime wms into the crtc state
df9b02b98f43 drm/i915: Polish WM_LINETIME register stuff
89746f18d943 drm/i915: Streamline skl_commit_modeset_enables()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15672/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
