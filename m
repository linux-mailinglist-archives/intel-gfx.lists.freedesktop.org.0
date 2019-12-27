Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B112B5F7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 17:51:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975656E12F;
	Fri, 27 Dec 2019 16:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1231D6E12F;
 Fri, 27 Dec 2019 16:51:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D28DA01BB;
 Fri, 27 Dec 2019 16:51:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Fri, 27 Dec 2019 16:51:39 -0000
Message-ID: <157746549905.27188.14935622162130497183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191227095629.1796-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191227095629.1796-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev3=29?=
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

Series: Add support for mipi dsi cmd mode (rev3)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7642 -> Patchwork_15931
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/index.html

Known issues
------------

  Here are the changes found in Patchwork_15931 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u3:          [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-u3/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-icl-u3/igt@debugfs_test@read_all_entries.html
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-icl-y/igt@debugfs_test@read_all_entries.html
    - fi-icl-u2:          [PASS][5] -> [INCOMPLETE][6] ([i915#140])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-icl-u2/igt@debugfs_test@read_all_entries.html
    - fi-icl-dsi:         [PASS][7] -> [INCOMPLETE][8] ([i915#140])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-dsi/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-icl-dsi/igt@debugfs_test@read_all_entries.html
    - fi-icl-guc:         [PASS][9] -> [INCOMPLETE][10] ([i915#140])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-guc/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-icl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][11] -> [TIMEOUT][12] ([i915#816])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][13] -> [FAIL][14] ([fdo#103375])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][15] -> [DMESG-FAIL][16] ([i915#722])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][17] ([fdo#111764]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#553] / [i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [DMESG-WARN][21] ([i915#889]) -> [INCOMPLETE][22] ([fdo#103927])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [DMESG-FAIL][24] ([i915#563])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 40)
------------------------------

  Additional (9): fi-tgl-guc fi-bdw-5557u fi-skl-6770hq fi-snb-2520m fi-whl-u fi-bsw-kefka fi-skl-lmem fi-tgl-y fi-skl-6600u 
  Missing    (13): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-byt-n2820 fi-byt-clapper fi-kbl-r fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7642 -> Patchwork_15931

  CI-20190529: 20190529
  CI_DRM_7642: c040b352eb9c72e9a6a8dc830245b2ae8089a54e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15931: 9b54c292b6d72a6bd3e1fc9121d0563351ef0b24 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b54c292b6d7 drm/i915/dsi: Initiate fame request in cmd mode
9aac102b8b1a drm/i915/dsi: Add TE handler for dsi cmd mode.
04bb17d7b38b drm/i915/dsi: Configure TE interrupt for cmd mode
0d1656d6b5ea drm/i915/dsi: Use private flags to indicate TE in cmd mode
c1d66fb6ea35 drm/i915/dsi: Add check for periodic command mode
db4d835d306b drm/i915/dsi: Add cmd mode flags in display mode private flags
fa9a3ef77fd2 drm/i915/dsi: Add vblank calculation for command mode
b55a84ce9635 drm/i915/dsi: Configure transcoder operation for command mode.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
