Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1385C14F5EC
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 03:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAB16E2A0;
	Sat,  1 Feb 2020 02:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A15536E2A0;
 Sat,  1 Feb 2020 02:29:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81A7CA0088;
 Sat,  1 Feb 2020 02:29:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sat, 01 Feb 2020 02:29:03 -0000
Message-ID: <158052414350.32694.4417119808706779222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7853 -> Patchwork_16368
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16368 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16368, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16368:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6770hq:      [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-whl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16368 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][6] -> [DMESG-FAIL][7] ([i915#553] / [i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#770])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       [PASS][10] -> [DMESG-FAIL][11] ([i915#943])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][12] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][14] ([i915#579]) -> [SKIP][15] ([fdo#109271])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][16] ([fdo#109383] / [fdo#111012]) -> [FAIL][17] ([i915#192] / [i915#193] / [i915#194])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-kbl-soraka/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][18] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][19] ([i915#577])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-cml-s/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/fi-cml-s/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (47 -> 45)
------------------------------

  Additional (5): fi-gdg-551 fi-skl-6600u fi-kbl-7560u fi-skl-6700k2 fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7853 -> Patchwork_16368

  CI-20190529: 20190529
  CI_DRM_7853: 1df04205c16923e525efe9c26d6e98612d38c9b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5409: 93aefe6baa3fabf8c0cabe83e185f7b8f8d8753d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16368: 89ecb4d12fb1435d99ae7245318b67a9a40b1a3c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

89ecb4d12fb1 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
762cbeda3c0d drm/i915/dp: Add compute routine for DP PSR VSC SDP
2d4bcb15a15d drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
4b64dff6dce0 drm/i915: Program DP SDPs on pipe updates
2ca13c74b7ea drm/i915: Add state readout for DP VSC SDP
ed56d2bf8bf9 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
598b9e7b6d4b drm/i915: Program DP SDPs with computed configs
4018f46daed3 drm/i915: Include DP VSC SDP in the crtc state dump
5e7f5283440d drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
36bad01ec45b drm/i915: Include HDMI DRM infoframe in the crtc state dump
71d4541b4e2b drm/i915/dp: Add logging function for DP VSC SDP
ee3cca76be12 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
a1ee3b6d5e37 video/hdmi: Add Unpack only function for DRM infoframe
4d1d1328db05 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
dab670ba6466 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
fe36e97597d0 drm/i915/dp: Add compute routine for DP VSC SDP
b5932d8b337a drm/i915: Add DP VSC SDP payload data to intel_crtc_state.infoframes
974c950dba68 drm: add DP 1.4 VSC SDP Payload related enums

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16368/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
