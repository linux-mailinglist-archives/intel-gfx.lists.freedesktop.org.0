Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FB72C40BF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 14:00:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016186E9A1;
	Wed, 25 Nov 2020 13:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FCF06E8AB;
 Wed, 25 Nov 2020 13:00:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86A8CA47EB;
 Wed, 25 Nov 2020 13:00:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 25 Nov 2020 13:00:07 -0000
Message-ID: <160630920754.8878.13645228802245521054@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev11=29?=
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
Content-Type: multipart/mixed; boundary="===============1269550598=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1269550598==
Content-Type: multipart/alternative;
 boundary="===============2141630251721422486=="

--===============2141630251721422486==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev11)
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9389 -> Patchwork_18975
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18975:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-soraka:      [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-y:           [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-tgl-y:           [PASS][67] -> [SKIP][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][69] -> [SKIP][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][71] -> [SKIP][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][73] -> [SKIP][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][75] -> [SKIP][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][77] -> [SKIP][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][79] -> [SKIP][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ehl-1/igt@prime_vgem@basic-userptr.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9389 and Patchwork_18975:

### New CI tests (1) ###

  * boot:
    - Statuses : 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18975 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-icl-u2:          [PASS][81] -> [DMESG-WARN][82] ([i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][85] -> [DMESG-WARN][86] ([i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [PASS][87] -> [DMESG-WARN][88] ([i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-snb-2520m:       [PASS][89] -> [DMESG-WARN][90] ([i915#1982])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [PASS][91] -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [PASS][93] -> [DMESG-WARN][94] ([i915#402]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][97] ([i915#1982]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][99] ([i915#1982]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][101] ([i915#1982]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - fi-tgl-y:           [DMESG-WARN][103] ([i915#1982]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [DMESG-WARN][105] ([i915#402]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9389 -> Patchwork_18975

  CI-20190529: 20190529
  CI_DRM_9389: b0c2cf3ad04abd9e7a44abe12e736bb5ab587393 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18975: 291ba97334e69dc47fe0903c1cb8e7d1bc9ff9d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

291ba97334e6 drm/i915: Move gt_revoke() slightly
dd8198f7fc21 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
f894a3001d3e drm/i915: Finally remove obj->mm.lock.
5a60a1a40560 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
e001d0512655 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
7eb4aaa48f43 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
86737adbce6e drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
4c5960a00cfb drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
2428c81511f7 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
8e5ca2d058d5 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
a19efa44b824 drm/i915/selftests: Prepare execlists for obj->mm.lock removal
62511fb7686a drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
534b5384e190 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
4baf3a5f63b4 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
be7a7ff76868 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
89b67cb41094 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
193e5ef6071e drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
838e19e54fcc drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
b4ee5afba5f7 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
ed7c36ba915d drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
404d44fb5c23 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
643e7c8989cf drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
ddc5495652aa drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
7144706bf9b7 drm/i915: Use a single page table lock for each gtt.
79a5cbe83215 drm/i915: Fix ww locking in shmem_create_from_object
9482157256a8 drm/i915: Add missing ww lock in intel_dsb_prepare.
168fbc3307bd drm/i915: Add ww locking to dma-buf ops.
083b628fd9fc drm/i915: Lock ww in ucode objects correctly
717105a7c59a drm/i915: Increase ww locking for perf.
7f8987032ba6 drm/i915: Add ww locking around vm_access()
65ac0323ea16 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
f7f7e8bc6776 drm/i915: Prepare for obj->mm.lock removal
5fc24d00bb93 drm/i915: Fix workarounds selftest, part 1
605474284ddd drm/i915: Fix pread/pwrite to work with new locking rules.
c3f2b4de7672 drm/i915: Defer pin calls in buffer pool until first use by caller.
5dcc2390199a drm/i915: Take obj lock around set_domain ioctl
6d462b44b678 drm/i915: Make __engine_unpark() compatible with ww locking.
e3cfef3065b1 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
25344ad4738a drm/i915: Take reservation lock around i915_vma_pin.
080e1d0e580c drm/i915: Move pinning to inside engine_wa_list_verify()
4baca447c52e drm/i915: Add object locking to vm_fault_cpu
4c7d3f7b4afd drm/i915: Pass ww ctx to intel_pin_to_display_plane
a940cfe48b68 drm/i915: Rework clflush to work correctly without obj->mm.lock.
ff391fe16ffa drm/i915: Handle ww locking in init_status_page
8ca3e4c22563 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
8a0dd4b2d00c drm/i915: Populate logical context during first pin.
280fdc0223eb drm/i915: Flatten obj->mm.lock
abf248ad32f8 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v5.
4407f9c68161 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
7171ba7856f7 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
90ae76a78883 drm/i915: Reject more ioctls for userptr
0c07739fa834 drm/i915: No longer allow exporting userptr through dma-buf
93b3d5931a52 drm/i915: Disable userptr pread/pwrite support.
d4601a07e16d drm/i915: make lockdep slightly happier about execbuf.
a1fdfca8521d drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
dca364346602 drm/i915: Rework struct phys attachment handling
8d38426503e9 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
8608559e365a drm/i915: Add gem object locking to madvise.
4a2193e44ceb drm/i915: Ensure we hold the object mutex in pin correctly.
48bd705f7374 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
795a815293db drm/i915: Move cmd parser pinning to execbuffer
01064b64bfb8 drm/i915: Pin timeline map after first timeline pin, v3.
354c163af2a9 drm/i915: Do not share hwsp across contexts any more, v6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html

--===============2141630251721422486==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9389 -&gt; Patchwork_18975</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18975:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9389 and Patchwork_18975:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18975 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence-before:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9389 -&gt; Patchwork_18975</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9389: b0c2cf3ad04abd9e7a44abe12e736bb5ab587393 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18975: 291ba97334e69dc47fe0903c1cb8e7d1bc9ff9d4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>291ba97334e6 drm/i915: Move gt_revoke() slightly<br />
dd8198f7fc21 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
f894a3001d3e drm/i915: Finally remove obj-&gt;mm.lock.<br />
5a60a1a40560 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
e001d0512655 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
7eb4aaa48f43 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
86737adbce6e drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
4c5960a00cfb drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
2428c81511f7 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
8e5ca2d058d5 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
a19efa44b824 drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
62511fb7686a drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
534b5384e190 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
4baf3a5f63b4 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
be7a7ff76868 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
89b67cb41094 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
193e5ef6071e drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
838e19e54fcc drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
b4ee5afba5f7 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
ed7c36ba915d drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
404d44fb5c23 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
643e7c8989cf drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
ddc5495652aa drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
7144706bf9b7 drm/i915: Use a single page table lock for each gtt.<br />
79a5cbe83215 drm/i915: Fix ww locking in shmem_create_from_object<br />
9482157256a8 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
168fbc3307bd drm/i915: Add ww locking to dma-buf ops.<br />
083b628fd9fc drm/i915: Lock ww in ucode objects correctly<br />
717105a7c59a drm/i915: Increase ww locking for perf.<br />
7f8987032ba6 drm/i915: Add ww locking around vm_access()<br />
65ac0323ea16 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
f7f7e8bc6776 drm/i915: Prepare for obj-&gt;mm.lock removal<br />
5fc24d00bb93 drm/i915: Fix workarounds selftest, part 1<br />
605474284ddd drm/i915: Fix pread/pwrite to work with new locking rules.<br />
c3f2b4de7672 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
5dcc2390199a drm/i915: Take obj lock around set_domain ioctl<br />
6d462b44b678 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
e3cfef3065b1 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
25344ad4738a drm/i915: Take reservation lock around i915_vma_pin.<br />
080e1d0e580c drm/i915: Move pinning to inside engine_wa_list_verify()<br />
4baca447c52e drm/i915: Add object locking to vm_fault_cpu<br />
4c7d3f7b4afd drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
a940cfe48b68 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
ff391fe16ffa drm/i915: Handle ww locking in init_status_page<br />
8ca3e4c22563 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
8a0dd4b2d00c drm/i915: Populate logical context during first pin.<br />
280fdc0223eb drm/i915: Flatten obj-&gt;mm.lock<br />
abf248ad32f8 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v5.<br />
4407f9c68161 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
7171ba7856f7 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
90ae76a78883 drm/i915: Reject more ioctls for userptr<br />
0c07739fa834 drm/i915: No longer allow exporting userptr through dma-buf<br />
93b3d5931a52 drm/i915: Disable userptr pread/pwrite support.<br />
d4601a07e16d drm/i915: make lockdep slightly happier about execbuf.<br />
a1fdfca8521d drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
dca364346602 drm/i915: Rework struct phys attachment handling<br />
8d38426503e9 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
8608559e365a drm/i915: Add gem object locking to madvise.<br />
4a2193e44ceb drm/i915: Ensure we hold the object mutex in pin correctly.<br />
48bd705f7374 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
795a815293db drm/i915: Move cmd parser pinning to execbuffer<br />
01064b64bfb8 drm/i915: Pin timeline map after first timeline pin, v3.<br />
354c163af2a9 drm/i915: Do not share hwsp across contexts any more, v6</p>

</body>
</html>

--===============2141630251721422486==--

--===============1269550598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1269550598==--
