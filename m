Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9328BEDB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 19:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5323D6E4A2;
	Mon, 12 Oct 2020 17:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D70D6E4A2;
 Mon, 12 Oct 2020 17:13:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54D2BA00CC;
 Mon, 12 Oct 2020 17:13:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 12 Oct 2020 17:13:10 -0000
Message-ID: <160252279031.31909.102713753347293580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2136484441=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2136484441==
Content-Type: multipart/alternative;
 boundary="===============2060154454972752546=="

--===============2060154454972752546==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev2)
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9130 -> Patchwork_18677
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18677:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][18] -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][20] -> [FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          [PASS][22] -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][24] -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][26] -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][28] -> [FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][30] -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-lmem:        [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-kefka:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-tgl-y:           NOTRUN -> [SKIP][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][68] -> [SKIP][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][70] -> [SKIP][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][72] -> [SKIP][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][74] -> [SKIP][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][76] -> [SKIP][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][78] -> [SKIP][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][80] -> [SKIP][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18677 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][82] -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - fi-skl-guc:         [PASS][84] -> [DMESG-WARN][85] ([i915#2203])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-guc/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-guc/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@unbind-rebind}:
    - fi-blb-e6850:       [INCOMPLETE][86] ([i915#2540]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][88] ([i915#2417]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][90] ([i915#1888]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [DMESG-FAIL][92] ([i915#1748]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][94] ([i915#1982]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][96] ([i915#1982]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2540]: https://gitlab.freedesktop.org/drm/intel/issues/2540


Participating hosts (45 -> 41)
------------------------------

  Additional (3): fi-kbl-soraka fi-tgl-y fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9130 -> Patchwork_18677

  CI-20190529: 20190529
  CI_DRM_9130: da13fb4f671901dbcf26437592f352579cc3b617 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5810: f78ce760920efb5015725c749f411c5724114bda @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18677: 83b79b693e31c4c5dad13b749b795e57e2735a23 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

83b79b693e31 drm/i915: Keep userpointer bindings if seqcount is unchanged
a1686a8a2dc6 drm/i915: Finally remove obj->mm.lock.
72f9158f799b drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
d6c5e39e6e62 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
d3a4fc3e2ff4 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
741c1bd4e1bd drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
508424e39e90 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
66894ecd6ed2 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
bb30a39d7d79 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
9b3887878326 drm/i915/selftests: Prepare execlists for obj->mm.lock removal
0c18f21d3ec6 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
75db7b2bc301 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
ada5922697ca drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
33f4131dcc86 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
479b492085a6 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
907e895aff17 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
68384a23fb92 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
808639cb86bd drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
1179c9f3b0c3 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
e73cbf498354 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
8d2d0b5c5a6b drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
b296545b74d6 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
cff75ce36089 drm/i915: Use a single page table lock for each gtt.
839044c810e5 drm/i915: Fix ww locking in shmem_create_from_object
35779eb08a1d drm/i915: Add missing ww lock in intel_dsb_prepare.
f148eedce17a drm/i915: Add ww locking to dma-buf ops.
86ae06998f44 drm/i915: Lock ww in ucode objects correctly
1d26619caf00 drm/i915: Increase ww locking for perf.
2ec4da54d3f8 drm/i915: Add ww locking around vm_access()
b676ba99f5f4 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
c865717b2b7e drm/i915: Prepare for obj->mm.lock removal
f899d71edb0d drm/i915: Fix workarounds selftest, part 1
d5f941d41c86 drm/i915: Fix pread/pwrite to work with new locking rules.
7f3fadccaa43 drm/i915: Defer pin calls in buffer pool until first use by caller.
465dcdc78269 drm/i915: Take obj lock around set_domain ioctl
424250227d5f drm/i915: Make __engine_unpark() compatible with ww locking.
b57dc18de910 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
d10a12984174 drm/i915: Take reservation lock around i915_vma_pin.
e23134d2dd6f drm/i915: Move pinning to inside engine_wa_list_verify()
a1e5ec4912b7 drm/i915: Add object locking to vm_fault_cpu
12a10bf2b7d8 drm/i915: Pass ww ctx to intel_pin_to_display_plane
55921185af2b drm/i915: Rework clflush to work correctly without obj->mm.lock.
660dea569998 drm/i915: Handle ww locking in init_status_page
d0fd3756776c drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
c1ed4a428c27 drm/i915: Populate logical context during first pin.
c30e420a9750 drm/i915: Pin timeline map after first timeline pin, v2.
15650ee070ab drm/i915: Flatten obj->mm.lock
353f6c46c4bf drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v2.
55ecb181e541 drm/i915: Reject UNSYNCHRONIZED for userptr
9f6c05f13de3 drm/i915: Reject more ioctls for userptr
d506fc3aa2ed drm/i915: No longer allow exporting userptr through dma-buf
84b4313f5488 drm/i915: Disable userptr pread/pwrite support.
d82af28768ae drm/i915: make lockdep slightly happier about execbuf.
17d0c0aef20f drm/i915: Convert i915_gem_object_attach_phys() to ww locking
f9fc09dae4ce drm/i915: Rework struct phys attachment handling
cfd65d6c3cad drm/i915: Move HAS_STRUCT_PAGE to obj->flags
6360b8ee9c2e drm/i915: Add gem object locking to madvise.
930bd5654347 drm/i915: Ensure we hold the object mutex in pin correctly.
d968753cabcd drm/i915: Do not share hwsp across contexts any more, v3.
f524499cf8c7 drm/i915: Add missing -EDEADLK handling to execbuf pinning
ad5a5f0624eb drm/i915: Move cmd parser pinning to execbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/index.html

--===============2060154454972752546==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9130 -&gt; Patchwork_18677</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18677:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18677 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-skl-guc/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-skl-guc/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@unbind-rebind}:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2540">i915#2540</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18677/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (3): fi-kbl-soraka fi-tgl-y fi-kbl-r <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9130 -&gt; Patchwork_18677</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9130: da13fb4f671901dbcf26437592f352579cc3b617 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5810: f78ce760920efb5015725c749f411c5724114bda @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18677: 83b79b693e31c4c5dad13b749b795e57e2735a23 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>83b79b693e31 drm/i915: Keep userpointer bindings if seqcount is unchanged<br />
a1686a8a2dc6 drm/i915: Finally remove obj-&gt;mm.lock.<br />
72f9158f799b drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
d6c5e39e6e62 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
d3a4fc3e2ff4 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
741c1bd4e1bd drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
508424e39e90 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
66894ecd6ed2 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
bb30a39d7d79 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
9b3887878326 drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
0c18f21d3ec6 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
75db7b2bc301 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
ada5922697ca drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
33f4131dcc86 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
479b492085a6 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
907e895aff17 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
68384a23fb92 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
808639cb86bd drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
1179c9f3b0c3 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
e73cbf498354 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
8d2d0b5c5a6b drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
b296545b74d6 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
cff75ce36089 drm/i915: Use a single page table lock for each gtt.<br />
839044c810e5 drm/i915: Fix ww locking in shmem_create_from_object<br />
35779eb08a1d drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
f148eedce17a drm/i915: Add ww locking to dma-buf ops.<br />
86ae06998f44 drm/i915: Lock ww in ucode objects correctly<br />
1d26619caf00 drm/i915: Increase ww locking for perf.<br />
2ec4da54d3f8 drm/i915: Add ww locking around vm_access()<br />
b676ba99f5f4 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
c865717b2b7e drm/i915: Prepare for obj-&gt;mm.lock removal<br />
f899d71edb0d drm/i915: Fix workarounds selftest, part 1<br />
d5f941d41c86 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
7f3fadccaa43 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
465dcdc78269 drm/i915: Take obj lock around set_domain ioctl<br />
424250227d5f drm/i915: Make __engine_unpark() compatible with ww locking.<br />
b57dc18de910 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
d10a12984174 drm/i915: Take reservation lock around i915_vma_pin.<br />
e23134d2dd6f drm/i915: Move pinning to inside engine_wa_list_verify()<br />
a1e5ec4912b7 drm/i915: Add object locking to vm_fault_cpu<br />
12a10bf2b7d8 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
55921185af2b drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
660dea569998 drm/i915: Handle ww locking in init_status_page<br />
d0fd3756776c drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
c1ed4a428c27 drm/i915: Populate logical context during first pin.<br />
c30e420a9750 drm/i915: Pin timeline map after first timeline pin, v2.<br />
15650ee070ab drm/i915: Flatten obj-&gt;mm.lock<br />
353f6c46c4bf drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v2.<br />
55ecb181e541 drm/i915: Reject UNSYNCHRONIZED for userptr<br />
9f6c05f13de3 drm/i915: Reject more ioctls for userptr<br />
d506fc3aa2ed drm/i915: No longer allow exporting userptr through dma-buf<br />
84b4313f5488 drm/i915: Disable userptr pread/pwrite support.<br />
d82af28768ae drm/i915: make lockdep slightly happier about execbuf.<br />
17d0c0aef20f drm/i915: Convert i915_gem_object_attach_phys() to ww locking<br />
f9fc09dae4ce drm/i915: Rework struct phys attachment handling<br />
cfd65d6c3cad drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
6360b8ee9c2e drm/i915: Add gem object locking to madvise.<br />
930bd5654347 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
d968753cabcd drm/i915: Do not share hwsp across contexts any more, v3.<br />
f524499cf8c7 drm/i915: Add missing -EDEADLK handling to execbuf pinning<br />
ad5a5f0624eb drm/i915: Move cmd parser pinning to execbuffer</p>

</body>
</html>

--===============2060154454972752546==--

--===============2136484441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2136484441==--
