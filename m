Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575991539C8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9417C89B8F;
	Wed,  5 Feb 2020 20:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9A7989B8F;
 Wed,  5 Feb 2020 20:56:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8A94A0003;
 Wed,  5 Feb 2020 20:56:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 05 Feb 2020 20:56:41 -0000
Message-ID: <158093620172.17321.2798769427386326013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjQp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev4)
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16438
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16438 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16438, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16438:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16438 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][9] ([fdo#109383] / [fdo#111012]) -> [FAIL][10] ([i915#192] / [i915#193] / [i915#194])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-kbl-soraka/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][11] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][12] ([i915#577])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cml-s/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/fi-cml-s/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577


Participating hosts (45 -> 38)
------------------------------

  Additional (6): fi-bdw-5557u fi-hsw-peppy fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-gdg-551 
  Missing    (13): fi-byt-j1900 fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-whl-u fi-ivb-3770 fi-elk-e7500 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16438

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16438: f4f8b0f85ef923faf6fed29687c3a926209695cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f4f8b0f85ef9 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
64b807768c4c drm/i915/dp: Add compute routine for DP PSR VSC SDP
279ec55c845f drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
a483a4881789 drm/i915: Program DP SDPs on pipe updates
12492e08c39d drm/i915: Add state readout for DP VSC SDP
f5aeba2edcb3 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
5070b80edd7a drm/i915: Program DP SDPs with computed configs
5716f680b4a0 drm/i915: Include DP VSC SDP in the crtc state dump
983f664b850e drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
60f01133b46c drm/i915: Include HDMI DRM infoframe in the crtc state dump
c754babdda67 drm: Add logging function for DP VSC SDP
7fc4c0069309 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
d587ae502b80 video/hdmi: Add Unpack only function for DRM infoframe
e92dd2d13e47 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
e34ff27be612 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
8e6cf3c5fe7f drm/i915/dp: Add compute routine for DP VSC SDP
337be6e4a25e drm: add DP 1.4 VSC SDP Payload related enums and a structure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16438/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
