Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9DC2162FB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 02:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679896E4CF;
	Tue,  7 Jul 2020 00:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B5B76E1E5;
 Tue,  7 Jul 2020 00:26:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24460A47E0;
 Tue,  7 Jul 2020 00:26:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 07 Jul 2020 00:26:09 -0000
Message-ID: <159408156911.7661.15617572320195119541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706234337.124814-1-jose.souza@intel.com>
In-Reply-To: <20200706234337.124814-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915=3A_Initial_implementa?=
 =?utf-8?q?tion_of_PSR2_selective_fetch?=
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

Series: series starting with [v3,1/2] drm/i915: Initial implementation of PSR2 selective fetch
URL   : https://patchwork.freedesktop.org/series/79172/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708 -> Patchwork_18090
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/index.html

Known issues
------------

  Here are the changes found in Patchwork_18090 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-byt-j1900/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-WARN][6] ([i915#62] / [i915#92] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@prime_vgem@basic-write.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-tgl-y/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#402]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@vgem_basic@setversion.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8708 -> Patchwork_18090

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18090: 8e71f149e88ee209335866f0af865f4566debc30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e71f149e88e drm/i915/display: Implement WA 1408330847
2596ea8971cb drm/i915: Initial implementation of PSR2 selective fetch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
