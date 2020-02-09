Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 952A21568D8
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 05:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B07E6E9D5;
	Sun,  9 Feb 2020 04:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BF286E07B;
 Sun,  9 Feb 2020 04:41:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 938D0A0093;
 Sun,  9 Feb 2020 04:41:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 09 Feb 2020 04:41:06 -0000
Message-ID: <158122326657.18127.7681823890593406575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjUp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev5)
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7892 -> Patchwork_16499
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16499 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16499, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16499:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-whl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16499 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6770hq:      [PASS][4] -> [INCOMPLETE][5] ([i915#198])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][6] -> [INCOMPLETE][7] ([fdo#103927])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][8] -> [DMESG-FAIL][9] ([fdo#108569])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-y/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][10] ([i915#45]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][12] ([i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][14] ([i915#424]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][16] ([fdo#112271]) -> [FAIL][17] ([i915#694])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (44 -> 44)
------------------------------

  Additional (7): fi-bxt-dsi fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-ilk-650 fi-blb-e6850 fi-skl-6600u 
  Missing    (7): fi-kbl-soraka fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7892 -> Patchwork_16499

  CI-20190529: 20190529
  CI_DRM_7892: c53ff44eb14e48089e25c34874b318e8f0d11c4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5427: b7aaa77467742b977b1ea8716d90c7a9a2768220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16499: 9b3bbcfd33a7ee67c21b59c4945ca7991f6d4138 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b3bbcfd33a7 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
2e50c25511e4 drm/i915/dp: Add compute routine for DP PSR VSC SDP
0042085e5a2e drm/i915: Stop sending DP SDPs on ddi disable
a220a96f626c drm/i915: Program DP SDPs on pipe updates
49b1bee40f5f drm/i915: Disable DIPs when LSPCON is used
7d27e4306e8f drm/i915: Add state readout for DP VSC SDP
78a4484e3e5e drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
19496c35ab4f drm/i915: Program DP SDPs with computed configs
f55238bf17aa drm/i915: Include DP VSC SDP in the crtc state dump
b75f42532124 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
124747292677 drm/i915: Include HDMI DRM infoframe in the crtc state dump
b1151c62aadb drm: Add logging function for DP VSC SDP
a53c04de5983 drm/i915/dp: Read out DP SDPs
23aa39d1f68a video/hdmi: Add Unpack only function for DRM infoframe
6b0660d21141 drm/i915/dp: Add writing of DP SDPs
2b6b72262c8c drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
f337401d8678 drm/i915/dp: Add compute routine for DP VSC SDP
00b0268b3c35 drm: Add DP1.4 VSC SDP Payload related Data Structures

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16499/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
