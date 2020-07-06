Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B34215C87
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 19:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95EE895E1;
	Mon,  6 Jul 2020 17:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3602C895E1;
 Mon,  6 Jul 2020 17:03:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3079EA011C;
 Mon,  6 Jul 2020 17:03:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal@hardline.pl>
Date: Mon, 06 Jul 2020 17:03:08 -0000
Message-ID: <159405498819.17684.1002655661068173490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706144107.204821-1-michal@hardline.pl>
In-Reply-To: <20200706144107.204821-1-michal@hardline.pl>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915=3A_Reboot_CI_if_we_ge?=
 =?utf-8?q?t_wedged_during_driver_init?=
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

Series: series starting with [v3,1/3] drm/i915: Reboot CI if we get wedged during driver init
URL   : https://patchwork.freedesktop.org/series/79161/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708 -> Patchwork_18087
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/index.html

Known issues
------------

  Here are the changes found in Patchwork_18087 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-icl-y/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
    - fi-bsw-kefka:       [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@vgem_basic@second-client:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@vgem_basic@second-client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-tgl-y/igt@vgem_basic@second-client.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@vgem_basic@setversion.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][20] ([i915#62] / [i915#92]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

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

  * Linux: CI_DRM_8708 -> Patchwork_18087

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18087: 9dee7056ef82d0e3f061548ec61e1b2a92683d06 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9dee7056ef82 drm/i915: Don't taint when using fault injection
482d1b25de8f drm/i915: Print caller when tainting for CI
3945d40849f1 drm/i915: Reboot CI if we get wedged during driver init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18087/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
