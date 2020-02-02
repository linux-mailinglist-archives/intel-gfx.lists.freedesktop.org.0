Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D07A14FE67
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 17:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017FF6EB05;
	Sun,  2 Feb 2020 16:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6A3E6E0E0;
 Sun,  2 Feb 2020 16:53:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF131A0093;
 Sun,  2 Feb 2020 16:53:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 02 Feb 2020 16:53:33 -0000
Message-ID: <158066241388.17037.966856580285605248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjIp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev2)
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7856 -> Patchwork_16383
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16383 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16383, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16383:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6770hq:      [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-whl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16383 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][8] ([i915#725]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][10] ([i915#1052]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][12] ([fdo#109383] / [fdo#111012]) -> [FAIL][13] ([i915#192] / [i915#193] / [i915#194])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-kbl-soraka/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][14] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][15] ([i915#577])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-cml-s/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/fi-cml-s/igt@runner@aborted.html

  
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (43 -> 42)
------------------------------

  Additional (5): fi-bdw-5557u fi-ilk-650 fi-bsw-kefka fi-skl-lmem fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-hsw-4770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7856 -> Patchwork_16383

  CI-20190529: 20190529
  CI_DRM_7856: a113999b001035a5b6474407b228363c163574a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16383: 2e4da14a99b99a3a1860113c6cde8be40256a50d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e4da14a99b9 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
948bdde86a99 drm/i915/dp: Add compute routine for DP PSR VSC SDP
3045bd7f3d1c drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
203b78b49e5d drm/i915: Program DP SDPs on pipe updates
b00ca0ef9afa drm/i915: Add state readout for DP VSC SDP
0c1409bfc54e drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
05f50974f33c drm/i915: Program DP SDPs with computed configs
f53de2c1ea0a drm/i915: Include DP VSC SDP in the crtc state dump
4feab04a1555 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
1fd82d1db39d drm/i915: Include HDMI DRM infoframe in the crtc state dump
a13ab11796ef drm/i915/dp: Add logging function for DP VSC SDP
56220d9f4ad2 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
1cb28037364e video/hdmi: Add Unpack only function for DRM infoframe
94709dc29218 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
b82b2a59941d drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
c5ac25c1a5f8 drm/i915/dp: Add compute routine for DP VSC SDP
fd79588e7005 drm/i915: Add DP VSC SDP payload data to intel_crtc_state.infoframes
20e405544f77 drm: add DP 1.4 VSC SDP Payload related enums

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16383/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
