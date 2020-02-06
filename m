Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF1F153C47
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 01:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17B76E279;
	Thu,  6 Feb 2020 00:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEBFF6E279;
 Thu,  6 Feb 2020 00:20:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D63A8A0094;
 Thu,  6 Feb 2020 00:20:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 06 Feb 2020 00:20:25 -0000
Message-ID: <158094842584.14484.15731774181491711958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205205647.64902-1-jose.souza@intel.com>
In-Reply-To: <20200205205647.64902-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/ehl=3A_Add_HBR2_and_HBR3_voltage_swing_table?=
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

Series: drm/i915/display/ehl: Add HBR2 and HBR3 voltage swing table
URL   : https://patchwork.freedesktop.org/series/73055/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16443
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/index.html

Known issues
------------

  Here are the changes found in Patchwork_16443 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][1] -> [DMESG-WARN][2] ([i915#92]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][9] -> [SKIP][10] ([fdo#109271]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [PASS][11] -> [DMESG-WARN][12] ([i915#106] / [i915#188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([CI#94] / [i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][15] ([i915#45]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][17] ([CI#94]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][19] ([fdo#112271]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [DMESG-WARN][21] ([CI#94] / [i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][23] ([i915#816]) -> [FAIL][24] ([i915#999])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-byt-n2820/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/fi-byt-n2820/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (45 -> 46)
------------------------------

  Additional (6): fi-bdw-5557u fi-hsw-peppy fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-gdg-551 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16443

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16443: 5dfde56b068c1ddb1b8ef3e6aac8dc584cd86b20 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5dfde56b068c drm/i915/display/ehl: Add HBR2 and HBR3 voltage swing table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
