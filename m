Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 935D4281483
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D694F6E0C5;
	Fri,  2 Oct 2020 13:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 997BD6E0C5;
 Fri,  2 Oct 2020 13:53:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 913C3A47E9;
 Fri,  2 Oct 2020 13:53:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 02 Oct 2020 13:53:53 -0000
Message-ID: <160164683356.3609.11209358124661549190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!?=
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
Content-Type: multipart/mixed; boundary="===============0395554995=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0395554995==
Content-Type: multipart/alternative;
 boundary="===============3843387244723078534=="

--===============3843387244723078534==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock!
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9092 -> Patchwork_18613
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18613:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - {fi-kbl-7560u}:     [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-lmem:        [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-kefka:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18613 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-skl-6700k2:      [PASS][63] -> [INCOMPLETE][64] ([i915#2398])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-6700k2/igt@gem_exec_parallel@engines@contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-6700k2/igt@gem_exec_parallel@engines@contexts.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-hsw-4770:        [PASS][65] -> [INCOMPLETE][66] ([i915#2439])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-hsw-4770/igt@i915_selftest@live@gt_lrc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-hsw-4770/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@vgem_basic@unload:
    - fi-kbl-x1275:       [PASS][69] -> [DMESG-WARN][70] ([i915#62] / [i915#92])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@vgem_basic@unload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][71] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][73] ([i915#1982]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [DMESG-WARN][75] ([i915#2203]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-guc/igt@vgem_basic@unload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-guc/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][77] ([i915#1982] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][78] ([i915#62] / [i915#92] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][79] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][80] ([i915#62] / [i915#92]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([i915#62] / [i915#92]) -> [DMESG-WARN][82] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9092 -> Patchwork_18613

  CI-20190529: 20190529
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18613: 6ac5d2f0c380fdc4d44d6f072450e17750edac34 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6ac5d2f0c380 drm/i915: Keep userpointer bindings if seqcount is unchanged
10fab6916d63 drm/i915: Finally remove obj->mm.lock.
464da619467e drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
3c9b7f2a451c drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
41032a3c2599 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
5d4d643b15a7 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
b1465a4725e1 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
610729040b18 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
e6a023cda980 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
3fcb207632aa drm/i915/selftests: Prepare execlists for obj->mm.lock removal
4fbdcf6f106a drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
cb959108f9e0 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
99ab066c757a drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
7e88b15952fb drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
cbe0faec8a8f drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
533178c42238 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
28a476a326c7 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
cfb9a05f7848 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
82072ae11e34 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
06f482cf9b6c drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
95a4b72ba5bf drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
cda64dc3d0c2 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
611b31c2b0a1 drm/i915: Use a single page table lock for each gtt.
f909b0b95137 drm/i915: Fix ww locking in shmem_create_from_object
d66e4d26dcb9 drm/i915: Add missing ww lock in intel_dsb_prepare.
ae77b8878568 drm/i915: Add ww locking to dma-buf ops.
1e905a2ca8a8 drm/i915: Lock ww in ucode objects correctly
309536c5e1e4 drm/i915: Increase ww locking for perf.
0e0680293f65 drm/i915: Add ww locking around vm_access()
c277bba0c2c9 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
3490ae0b23ad drm/i915: Prepare for obj->mm.lock removal
eec3e2576d6a drm/i915: Fix workarounds selftest, part 1
5b3f99081e34 drm/i915: Fix pread/pwrite to work with new locking rules.
051028c27f02 drm/i915: Defer pin calls in buffer pool until first use by caller.
95a06746bede drm/i915: Take obj lock around set_domain ioctl
2e60b6935a70 drm/i915: Make __engine_unpark() compatible with ww locking.
9d253d77555a drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
d89b40e89d95 drm/i915: Take reservation lock around i915_vma_pin.
488cf5b361c6 drm/i915: Move pinning to inside engine_wa_list_verify()
330c1363105d drm/i915: Add object locking to vm_fault_cpu
00cc3fee49c6 drm/i915: Pass ww ctx to intel_pin_to_display_plane
5860cc74e8c2 drm/i915: Rework clflush to work correctly without obj->mm.lock.
ff34bbe790da drm/i915: Handle ww locking in init_status_page
d417e3b29831 drm/i915: Make ring submission compatible with obj->mm.lock removal.
ea8442151297 drm/i915: Populate logical context during first pin.
b9204f647008 drm/i915: Pin timeline map after first timeline pin.
293229a3392e drm/i915: Flatten obj->mm.lock
90b12c9b3be8 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock
6b8e7fbf5f45 drm/i915: Reject UNSYNCHRONIZED for userptr
3d09843abb77 drm/i915: Reject more ioctls for userptr
862c1cea3f01 drm/i915: No longer allow exporting userptr through dma-buf
ee1dcb191613 drm/i915: Disable userptr pread/pwrite support.
1d33535cbf2a drm/i915: make lockdep slightly happier about execbuf.
e4a8da6ff13d drm/i915: Convert i915_gem_object_attach_phys() to ww locking
cefdd1d1154f drm/i915: Rework struct phys attachment handling
30a3910e36c4 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
ec8d56a64d7b drm/i915: Add gem object locking to madvise.
27c0fecca238 drm/i915: Ensure we hold the object mutex in pin correctly.
65a00ae26cba drm/i915: Do not share hwsp across contexts any more, v2.
4f9efd22f64d drm/i915: Add missing -EDEADLK handling to execbuf pinning
5d32b210c8e5 drm/i915: Move cmd parser pinning to execbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html

--===============3843387244723078534==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock!</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9092 -&gt; Patchwork_18613</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18613:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18613 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-6700k2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-6700k2/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-hsw-4770/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-hsw-4770/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9092 -&gt; Patchwork_18613</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18613: 6ac5d2f0c380fdc4d44d6f072450e17750edac34 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6ac5d2f0c380 drm/i915: Keep userpointer bindings if seqcount is unchanged<br />
10fab6916d63 drm/i915: Finally remove obj-&gt;mm.lock.<br />
464da619467e drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
3c9b7f2a451c drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
41032a3c2599 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
5d4d643b15a7 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
b1465a4725e1 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
610729040b18 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
e6a023cda980 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
3fcb207632aa drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
4fbdcf6f106a drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
cb959108f9e0 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
99ab066c757a drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
7e88b15952fb drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
cbe0faec8a8f drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
533178c42238 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
28a476a326c7 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
cfb9a05f7848 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
82072ae11e34 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
06f482cf9b6c drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
95a4b72ba5bf drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
cda64dc3d0c2 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
611b31c2b0a1 drm/i915: Use a single page table lock for each gtt.<br />
f909b0b95137 drm/i915: Fix ww locking in shmem_create_from_object<br />
d66e4d26dcb9 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
ae77b8878568 drm/i915: Add ww locking to dma-buf ops.<br />
1e905a2ca8a8 drm/i915: Lock ww in ucode objects correctly<br />
309536c5e1e4 drm/i915: Increase ww locking for perf.<br />
0e0680293f65 drm/i915: Add ww locking around vm_access()<br />
c277bba0c2c9 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
3490ae0b23ad drm/i915: Prepare for obj-&gt;mm.lock removal<br />
eec3e2576d6a drm/i915: Fix workarounds selftest, part 1<br />
5b3f99081e34 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
051028c27f02 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
95a06746bede drm/i915: Take obj lock around set_domain ioctl<br />
2e60b6935a70 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
9d253d77555a drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
d89b40e89d95 drm/i915: Take reservation lock around i915_vma_pin.<br />
488cf5b361c6 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
330c1363105d drm/i915: Add object locking to vm_fault_cpu<br />
00cc3fee49c6 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
5860cc74e8c2 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
ff34bbe790da drm/i915: Handle ww locking in init_status_page<br />
d417e3b29831 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal.<br />
ea8442151297 drm/i915: Populate logical context during first pin.<br />
b9204f647008 drm/i915: Pin timeline map after first timeline pin.<br />
293229a3392e drm/i915: Flatten obj-&gt;mm.lock<br />
90b12c9b3be8 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock<br />
6b8e7fbf5f45 drm/i915: Reject UNSYNCHRONIZED for userptr<br />
3d09843abb77 drm/i915: Reject more ioctls for userptr<br />
862c1cea3f01 drm/i915: No longer allow exporting userptr through dma-buf<br />
ee1dcb191613 drm/i915: Disable userptr pread/pwrite support.<br />
1d33535cbf2a drm/i915: make lockdep slightly happier about execbuf.<br />
e4a8da6ff13d drm/i915: Convert i915_gem_object_attach_phys() to ww locking<br />
cefdd1d1154f drm/i915: Rework struct phys attachment handling<br />
30a3910e36c4 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
ec8d56a64d7b drm/i915: Add gem object locking to madvise.<br />
27c0fecca238 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
65a00ae26cba drm/i915: Do not share hwsp across contexts any more, v2.<br />
4f9efd22f64d drm/i915: Add missing -EDEADLK handling to execbuf pinning<br />
5d32b210c8e5 drm/i915: Move cmd parser pinning to execbuffer</p>

</body>
</html>

--===============3843387244723078534==--

--===============0395554995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0395554995==--
