Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9A2909A5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 18:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162C06EE3E;
	Fri, 16 Oct 2020 16:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E8816EE38;
 Fri, 16 Oct 2020 16:25:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87D65A008A;
 Fri, 16 Oct 2020 16:25:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 16 Oct 2020 16:25:39 -0000
Message-ID: <160286553954.8601.5916780783895612740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0343192084=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0343192084==
Content-Type: multipart/alternative;
 boundary="===============8968224597619557625=="

--===============8968224597619557625==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev8)
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9149 -> Patchwork_18718
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18718:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - {fi-kbl-7560u}:     [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-lmem:        [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-y:           [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-kefka:       [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-tgl-y:           [PASS][71] -> [SKIP][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][73] -> [SKIP][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][75] -> [SKIP][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][77] -> [SKIP][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][79] -> [SKIP][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][81] -> [SKIP][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][83] -> [SKIP][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][85] -> [SKIP][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18718 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][87] -> [DMESG-WARN][88] ([i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-u2:          [PASS][89] -> [INCOMPLETE][90] ([i915#2557])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [PASS][91] -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][93] -> [DMESG-WARN][94] ([i915#402]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][95] ([i915#1888]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [DMESG-WARN][97] ([i915#402]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][99] ([i915#1982]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][101] ([i915#1982]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2557]: https://gitlab.freedesktop.org/drm/intel/issues/2557
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9149 -> Patchwork_18718

  CI-20190529: 20190529
  CI_DRM_9149: f5546e5f34810d0e58f6c79228bc11ee511cad2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18718: 8f716caa264ec4a7cab309e3f9e8698a1077ed8a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f716caa264e drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
908f14a92e4a drm/i915: Finally remove obj->mm.lock.
733919ef0b66 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
2769b22737e3 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
f4937b0df49d drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
b5e1a5c015e7 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
8ab46a5b4335 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
0da28f9bb622 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
860a68a819eb drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
a716081fe319 drm/i915/selftests: Prepare execlists for obj->mm.lock removal
8322d3111639 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
e5f8dc58cdb9 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
57130374dc6f drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
4f28302eb1e3 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
588f4f5e3fa8 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
bc6c558d584d drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
801e1661833a drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
a1c9cf68da1c drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
30a7e27e4635 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
8f889023ba33 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
d5c76890a59f drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
24b1c124b686 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
ad12e91272ba drm/i915: Use a single page table lock for each gtt.
20f3947c7354 drm/i915: Fix ww locking in shmem_create_from_object
4274adf91b06 drm/i915: Add missing ww lock in intel_dsb_prepare.
2bd379ce7284 drm/i915: Add ww locking to dma-buf ops.
6f091934cfd0 drm/i915: Lock ww in ucode objects correctly
01bc5a20d4f2 drm/i915: Increase ww locking for perf.
e9907b3ca3a5 drm/i915: Add ww locking around vm_access()
2b6c123ed361 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
e1688dc7479a drm/i915: Prepare for obj->mm.lock removal
d87e52aa55b4 drm/i915: Fix workarounds selftest, part 1
7c1606d6d299 drm/i915: Fix pread/pwrite to work with new locking rules.
b60941c28bf3 drm/i915: Defer pin calls in buffer pool until first use by caller.
fa371fc40513 drm/i915: Take obj lock around set_domain ioctl
375d99b1d2a7 drm/i915: Make __engine_unpark() compatible with ww locking.
4a0da901373f drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
d71ea3e23ad6 drm/i915: Take reservation lock around i915_vma_pin.
41aa20ceb70b drm/i915: Move pinning to inside engine_wa_list_verify()
2284d6c7118a drm/i915: Add object locking to vm_fault_cpu
8056e2444996 drm/i915: Pass ww ctx to intel_pin_to_display_plane
af50fa854941 drm/i915: Rework clflush to work correctly without obj->mm.lock.
0f29eae64a65 drm/i915: Handle ww locking in init_status_page
ad1d55f3d681 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
e5804c66e752 drm/i915: Populate logical context during first pin.
7fd2b6345736 drm/i915: Flatten obj->mm.lock
e7e0452508da drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v4.
f75d81ecd524 drm/i915: Reject UNSYNCHRONIZED for userptr
e7436f5f1e77 drm/i915: Reject more ioctls for userptr
9f1d8101a0ee drm/i915: No longer allow exporting userptr through dma-buf
5585b6565924 drm/i915: Disable userptr pread/pwrite support.
f36602118f4e drm/i915: make lockdep slightly happier about execbuf.
f956c0fbb9a5 drm/i915: Convert i915_gem_object_attach_phys() to ww locking
da50a22c2c73 drm/i915: Rework struct phys attachment handling
48f2325f6009 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
e24f84e20fbf drm/i915: Add gem object locking to madvise.
8ee2dbc32daf drm/i915: Ensure we hold the object mutex in pin correctly.
da03a901bab6 drm/i915: Pin timeline map after first timeline pin, v3.
4249400a8848 drm/i915: Do not share hwsp across contexts any more, v4.
21b445301cb6 drm/i915: Add missing -EDEADLK handling to execbuf pinning
d212e6113fa5 drm/i915: Move cmd parser pinning to execbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html

--===============8968224597619557625==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9149 -&gt; Patchwork_18718</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18718:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18718 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2557">i915#2557</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-tgl-y/igt@gem_flink_basic@double-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-tgl-y/igt@gem_flink_basic@double-flink.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 41)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9149 -&gt; Patchwork_18718</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9149: f5546e5f34810d0e58f6c79228bc11ee511cad2e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18718: 8f716caa264ec4a7cab309e3f9e8698a1077ed8a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8f716caa264e drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
908f14a92e4a drm/i915: Finally remove obj-&gt;mm.lock.<br />
733919ef0b66 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
2769b22737e3 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
f4937b0df49d drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
b5e1a5c015e7 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
8ab46a5b4335 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
0da28f9bb622 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
860a68a819eb drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
a716081fe319 drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
8322d3111639 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
e5f8dc58cdb9 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
57130374dc6f drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
4f28302eb1e3 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
588f4f5e3fa8 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
bc6c558d584d drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
801e1661833a drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
a1c9cf68da1c drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
30a7e27e4635 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
8f889023ba33 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
d5c76890a59f drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
24b1c124b686 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
ad12e91272ba drm/i915: Use a single page table lock for each gtt.<br />
20f3947c7354 drm/i915: Fix ww locking in shmem_create_from_object<br />
4274adf91b06 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
2bd379ce7284 drm/i915: Add ww locking to dma-buf ops.<br />
6f091934cfd0 drm/i915: Lock ww in ucode objects correctly<br />
01bc5a20d4f2 drm/i915: Increase ww locking for perf.<br />
e9907b3ca3a5 drm/i915: Add ww locking around vm_access()<br />
2b6c123ed361 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
e1688dc7479a drm/i915: Prepare for obj-&gt;mm.lock removal<br />
d87e52aa55b4 drm/i915: Fix workarounds selftest, part 1<br />
7c1606d6d299 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
b60941c28bf3 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
fa371fc40513 drm/i915: Take obj lock around set_domain ioctl<br />
375d99b1d2a7 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
4a0da901373f drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
d71ea3e23ad6 drm/i915: Take reservation lock around i915_vma_pin.<br />
41aa20ceb70b drm/i915: Move pinning to inside engine_wa_list_verify()<br />
2284d6c7118a drm/i915: Add object locking to vm_fault_cpu<br />
8056e2444996 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
af50fa854941 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
0f29eae64a65 drm/i915: Handle ww locking in init_status_page<br />
ad1d55f3d681 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
e5804c66e752 drm/i915: Populate logical context during first pin.<br />
7fd2b6345736 drm/i915: Flatten obj-&gt;mm.lock<br />
e7e0452508da drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v4.<br />
f75d81ecd524 drm/i915: Reject UNSYNCHRONIZED for userptr<br />
e7436f5f1e77 drm/i915: Reject more ioctls for userptr<br />
9f1d8101a0ee drm/i915: No longer allow exporting userptr through dma-buf<br />
5585b6565924 drm/i915: Disable userptr pread/pwrite support.<br />
f36602118f4e drm/i915: make lockdep slightly happier about execbuf.<br />
f956c0fbb9a5 drm/i915: Convert i915_gem_object_attach_phys() to ww locking<br />
da50a22c2c73 drm/i915: Rework struct phys attachment handling<br />
48f2325f6009 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
e24f84e20fbf drm/i915: Add gem object locking to madvise.<br />
8ee2dbc32daf drm/i915: Ensure we hold the object mutex in pin correctly.<br />
da03a901bab6 drm/i915: Pin timeline map after first timeline pin, v3.<br />
4249400a8848 drm/i915: Do not share hwsp across contexts any more, v4.<br />
21b445301cb6 drm/i915: Add missing -EDEADLK handling to execbuf pinning<br />
d212e6113fa5 drm/i915: Move cmd parser pinning to execbuffer</p>

</body>
</html>

--===============8968224597619557625==--

--===============0343192084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0343192084==--
