Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E34DF158403
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD7F6ED44;
	Mon, 10 Feb 2020 20:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D55BF6ED43;
 Mon, 10 Feb 2020 20:04:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE5E3A0118;
 Mon, 10 Feb 2020 20:04:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 10 Feb 2020 20:04:28 -0000
Message-ID: <158136506884.3100.13086611076012683070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjYp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev6)
URL   : https://patchwork.freedesktop.org/series/72853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7903 -> Patchwork_16506
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/index.html

Known issues
------------

  Here are the changes found in Patchwork_16506 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][1] -> [DMESG-WARN][2] ([i915#92]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-skl-6770hq/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][5] -> [SKIP][6] ([fdo#109271]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][7] -> [DMESG-WARN][8] ([i915#106] / [i915#188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [INCOMPLETE][9] ([i915#392]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-bsw-n3050/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][11] ([i915#623]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][13] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][17] ([i915#694]) -> [TIMEOUT][18] ([fdo#112271] / [i915#1084])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][19] ([fdo#109383] / [fdo#111012]) -> [FAIL][20] ([i915#192] / [i915#193] / [i915#194])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-kbl-soraka/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/fi-kbl-soraka/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (47 -> 42)
------------------------------

  Additional (3): fi-hsw-peppy fi-gdg-551 fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-hsw-4770 fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7903 -> Patchwork_16506

  CI-20190529: 20190529
  CI_DRM_7903: 47b768c475f4a11a48bc43e6228660f8b26a542b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16506: 25336a0274e27e80e35d0d4a1f4240a07ecf32a0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

25336a0274e2 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
7d2beb287e3d drm/i915/dp: Add compute routine for DP PSR VSC SDP
b38bdf2a11e4 drm/i915: Stop sending DP SDPs on ddi disable
c10b0ee50bbe drm/i915: Program DP SDPs on pipe updates
d29ea7802a66 drm/i915: Fix enabled infoframe states of lspcon
2f41984fb5fa drm/i915: Add state readout for DP VSC SDP
ca9ed0ad09e1 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
97c094247cb2 drm/i915: Program DP SDPs with computed configs
940af0cd4b8b drm/i915: Include DP VSC SDP in the crtc state dump
877860d453ef drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
26f915701b32 drm/i915: Include HDMI DRM infoframe in the crtc state dump
182c420ece15 drm: Add logging function for DP VSC SDP
4cfa92180bee drm/i915/dp: Read out DP SDPs
90baf15b2a24 video/hdmi: Add Unpack only function for DRM infoframe
32e44c015776 drm/i915/dp: Add writing of DP SDPs
a58f9a4670d6 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
7b89b55cb716 drm/i915/dp: Add compute routine for DP VSC SDP
5b39096a6173 drm: Add DP1.4 VSC SDP Payload related Data Structures

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16506/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
