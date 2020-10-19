Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C9229289C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 15:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AD46E9A3;
	Mon, 19 Oct 2020 13:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D05366E9A3;
 Mon, 19 Oct 2020 13:51:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB9D7A008A;
 Mon, 19 Oct 2020 13:51:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 19 Oct 2020 13:51:58 -0000
Message-ID: <160311551882.32025.9803295174633175545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev10=29?=
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
Content-Type: multipart/mixed; boundary="===============1144521259=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1144521259==
Content-Type: multipart/alternative;
 boundary="===============8939438217086599001=="

--===============8939438217086599001==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev10)
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9162 -> Patchwork_18730
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18730:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-soraka:      [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-lmem:        [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-kefka:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-icl-u2:          [PASS][65] -> [SKIP][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][67] -> [SKIP][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][69] -> [SKIP][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][71] -> [SKIP][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][73] -> [SKIP][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][75] -> [SKIP][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][77] -> [SKIP][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18730 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][79] -> [DMESG-WARN][80] ([i915#1982] / [k.org#205379])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@i915_module_load@reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][81] -> [FAIL][82] ([i915#1161] / [i915#262])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][85] ([i915#1982] / [k.org#205379]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [DMESG-WARN][87] ([i915#1982]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-icl-u2:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9162 -> Patchwork_18730

  CI-20190529: 20190529
  CI_DRM_9162: 837e8c755c4a5087a1f87ccbe6893e37bd99ea85 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18730: bcf18162657aa597ae58fdd62ff6ede15e21bd12 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bcf18162657a drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
3be3289e6d62 drm/i915: Finally remove obj->mm.lock.
5462aa34d8c6 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
8a1e7a1d42b7 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
19e36d85a769 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
6f7e43c69354 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
87509d8f908e drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
b6fdfa7d55f7 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
ba5a3e576413 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
14772bc7b669 drm/i915/selftests: Prepare execlists for obj->mm.lock removal
9efa81ca6a38 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
483372599ffd drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
2aea11ba9a17 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
572cebd80c43 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
d5368fe4403e drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
97f924c03247 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
25e0f16a49a3 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
491ae6d66428 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
0698353336eb drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
450efdb3b6e5 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
b5d97b6b92a2 drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
f723410c1840 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
46e5a7cf8b36 drm/i915: Use a single page table lock for each gtt.
132031dfaac0 drm/i915: Fix ww locking in shmem_create_from_object
924e9f0e0ded drm/i915: Add missing ww lock in intel_dsb_prepare.
be60364681f4 drm/i915: Add ww locking to dma-buf ops.
e547a3f5d7cf drm/i915: Lock ww in ucode objects correctly
491ec59fa0f3 drm/i915: Increase ww locking for perf.
a02ed25df605 drm/i915: Add ww locking around vm_access()
3d4a256cdf8c drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
f5f320e70f10 drm/i915: Prepare for obj->mm.lock removal
c18316ca0319 drm/i915: Fix workarounds selftest, part 1
0fc4ea9ba7b6 drm/i915: Fix pread/pwrite to work with new locking rules.
da966f332f83 drm/i915: Defer pin calls in buffer pool until first use by caller.
2e1d8e358498 drm/i915: Take obj lock around set_domain ioctl
f98bc085f8a1 drm/i915: Make __engine_unpark() compatible with ww locking.
76b560a1a45a drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
c7f386c8a071 drm/i915: Take reservation lock around i915_vma_pin.
2a7ce2e41ea1 drm/i915: Move pinning to inside engine_wa_list_verify()
1b5060c11695 drm/i915: Add object locking to vm_fault_cpu
57c03b8d7f68 drm/i915: Pass ww ctx to intel_pin_to_display_plane
6af827c60c60 drm/i915: Rework clflush to work correctly without obj->mm.lock.
e67277a7b097 drm/i915: Handle ww locking in init_status_page
5318a1dac4d4 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
37f08d1de510 drm/i915: Populate logical context during first pin.
484ac2e3e0b6 drm/i915: Flatten obj->mm.lock
7e1cdef24fda drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v4.
cfac37ac0a95 drm/i915: Reject UNSYNCHRONIZED for userptr
c7cb9297e019 drm/i915: Reject more ioctls for userptr
e283b29660e7 drm/i915: No longer allow exporting userptr through dma-buf
fbe1d4c0257e drm/i915: Disable userptr pread/pwrite support.
996a8929b824 drm/i915: make lockdep slightly happier about execbuf.
ef5fc449bb58 drm/i915: Convert i915_gem_object_attach_phys() to ww locking
1e84fb47ed9f drm/i915: Rework struct phys attachment handling
36de3e911aff drm/i915: Move HAS_STRUCT_PAGE to obj->flags
1c39ebfaa050 drm/i915: Add gem object locking to madvise.
88d89a0244a0 drm/i915: Ensure we hold the object mutex in pin correctly.
a32aadf1947f drm/i915: Pin timeline map after first timeline pin, v3.
cdb7097261d7 drm/i915: Do not share hwsp across contexts any more, v5.
fd1c6790339e drm/i915: Add missing -EDEADLK handling to execbuf pinning
f559c8e6c1e1 drm/i915: Move cmd parser pinning to execbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html

--===============8939438217086599001==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9162 -&gt; Patchwork_18730</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18730:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18730 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 38)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9162 -&gt; Patchwork_18730</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9162: 837e8c755c4a5087a1f87ccbe6893e37bd99ea85 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18730: bcf18162657aa597ae58fdd62ff6ede15e21bd12 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bcf18162657a drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
3be3289e6d62 drm/i915: Finally remove obj-&gt;mm.lock.<br />
5462aa34d8c6 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
8a1e7a1d42b7 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
19e36d85a769 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
6f7e43c69354 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
87509d8f908e drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
b6fdfa7d55f7 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
ba5a3e576413 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
14772bc7b669 drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
9efa81ca6a38 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
483372599ffd drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
2aea11ba9a17 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
572cebd80c43 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
d5368fe4403e drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
97f924c03247 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
25e0f16a49a3 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
491ae6d66428 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
0698353336eb drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
450efdb3b6e5 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
b5d97b6b92a2 drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
f723410c1840 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
46e5a7cf8b36 drm/i915: Use a single page table lock for each gtt.<br />
132031dfaac0 drm/i915: Fix ww locking in shmem_create_from_object<br />
924e9f0e0ded drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
be60364681f4 drm/i915: Add ww locking to dma-buf ops.<br />
e547a3f5d7cf drm/i915: Lock ww in ucode objects correctly<br />
491ec59fa0f3 drm/i915: Increase ww locking for perf.<br />
a02ed25df605 drm/i915: Add ww locking around vm_access()<br />
3d4a256cdf8c drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
f5f320e70f10 drm/i915: Prepare for obj-&gt;mm.lock removal<br />
c18316ca0319 drm/i915: Fix workarounds selftest, part 1<br />
0fc4ea9ba7b6 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
da966f332f83 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
2e1d8e358498 drm/i915: Take obj lock around set_domain ioctl<br />
f98bc085f8a1 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
76b560a1a45a drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
c7f386c8a071 drm/i915: Take reservation lock around i915_vma_pin.<br />
2a7ce2e41ea1 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
1b5060c11695 drm/i915: Add object locking to vm_fault_cpu<br />
57c03b8d7f68 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
6af827c60c60 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
e67277a7b097 drm/i915: Handle ww locking in init_status_page<br />
5318a1dac4d4 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
37f08d1de510 drm/i915: Populate logical context during first pin.<br />
484ac2e3e0b6 drm/i915: Flatten obj-&gt;mm.lock<br />
7e1cdef24fda drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v4.<br />
cfac37ac0a95 drm/i915: Reject UNSYNCHRONIZED for userptr<br />
c7cb9297e019 drm/i915: Reject more ioctls for userptr<br />
e283b29660e7 drm/i915: No longer allow exporting userptr through dma-buf<br />
fbe1d4c0257e drm/i915: Disable userptr pread/pwrite support.<br />
996a8929b824 drm/i915: make lockdep slightly happier about execbuf.<br />
ef5fc449bb58 drm/i915: Convert i915_gem_object_attach_phys() to ww locking<br />
1e84fb47ed9f drm/i915: Rework struct phys attachment handling<br />
36de3e911aff drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
1c39ebfaa050 drm/i915: Add gem object locking to madvise.<br />
88d89a0244a0 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
a32aadf1947f drm/i915: Pin timeline map after first timeline pin, v3.<br />
cdb7097261d7 drm/i915: Do not share hwsp across contexts any more, v5.<br />
fd1c6790339e drm/i915: Add missing -EDEADLK handling to execbuf pinning<br />
f559c8e6c1e1 drm/i915: Move cmd parser pinning to execbuffer</p>

</body>
</html>

--===============8939438217086599001==--

--===============1144521259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1144521259==--
