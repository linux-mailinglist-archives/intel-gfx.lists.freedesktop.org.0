Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C0A2C68AF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 16:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44B46EE36;
	Fri, 27 Nov 2020 15:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E41C6EE33;
 Fri, 27 Nov 2020 15:25:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73A17A41FB;
 Fri, 27 Nov 2020 15:25:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 27 Nov 2020 15:25:59 -0000
Message-ID: <160649075946.26781.12524713518010372588@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201127120718.454037-1-matthew.auld@intel.com>
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgREcx?=
 =?utf-8?q?_+_LMEM_enabling?=
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
Content-Type: multipart/mixed; boundary="===============1896446602=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1896446602==
Content-Type: multipart/alternative;
 boundary="===============3861329306514907165=="

--===============3861329306514907165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DG1 + LMEM enabling
URL   : https://patchwork.freedesktop.org/series/84344/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9398 -> Patchwork_18999
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18999 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18999, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18999:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-byt-j1900/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-byt-j1900/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-glk-dsi:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
    - fi-apl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-bxt-dsi:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-bxt-dsi:         [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bxt-dsi/igt@gem_exec_parallel@engines@userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bxt-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-apl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][34] -> [FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][36] -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][44] -> [FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][46] -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - {fi-kbl-7560u}:     [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - {fi-dg1-1}:         NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-soraka:      [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][71] -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-y:           [PASS][73] -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][75] -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][77] -> [FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][79] -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][81] -> [FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][83] -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_exec_suspend@basic-s0:
    - {fi-dg1-1}:         [SKIP][85] ([i915#2575]) -> [DMESG-WARN][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@gem_exec_suspend@basic-s0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - {fi-dg1-1}:         [SKIP][87] ([i915#2575]) -> [INCOMPLETE][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-tgl-y:           [PASS][89] -> [SKIP][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][91] -> [SKIP][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][93] -> [SKIP][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][95] -> [SKIP][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][97] -> [SKIP][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          NOTRUN -> [SKIP][99]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][100] -> [SKIP][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@prime_vgem@basic-userptr.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9398 and Patchwork_18999:

### New CI tests (1) ###

  * boot:
    - Statuses : 39 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (1) ###

  * igt@i915_selftest@live@win_blt_copy:
    - Statuses : 33 pass(s)
    - Exec time: [0.44, 6.51] s

  

Known issues
------------

  Here are the changes found in Patchwork_18999 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][102] -> [DMESG-WARN][103] ([i915#402]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][104] -> [DMESG-WARN][105] ([i915#1982])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@i915_module_load@reload.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][106] -> [DMESG-FAIL][107] ([i915#541])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-tgl-y:           [PASS][108] -> [DMESG-WARN][109] ([i915#1982])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-dg1-1}:         [SKIP][110] ([i915#2575]) -> [PASS][111] +12 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@debugfs_test@read_all_entries.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@debugfs_test@read_all_entries.html
    - fi-tgl-y:           [DMESG-WARN][112] ([i915#402]) -> [PASS][113] +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * {igt@fbdev@read}:
    - {fi-dg1-1}:         [SKIP][114] ([i915#2582]) -> [PASS][115] +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@fbdev@read.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@fbdev@read.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-ehl-1}:         [DMESG-WARN][116] ([i915#1982]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-apl-guc:         [DMESG-WARN][118] ([i915#1982]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [DMESG-WARN][120] ([i915#1982]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][122] ([i915#1982]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [DMESG-WARN][124] ([i915#1982]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][126] ([i915#165]) -> [PASS][127] +15 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (43 -> 39)
------------------------------

  Additional (1): fi-cml-u2 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9398 -> Patchwork_18999

  CI-20190529: 20190529
  CI_DRM_9398: 31a04133814ab8f7b3aab042517e3f104df5ee2d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5873: b6321b58dcaa41ba1d28aced42d6b15dc3d49ca2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18999: 6308b9d298372639e94b1fb28f7a28ca5ae2f4e2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6308b9d29837 drm/i915: drop fake lmem
91802d0e6465 drm/i915/dg1: allow pci to auto probe
a2a7eee3b71b drm/i915/dg1: Fix GPU hang due to shmemfs page drop
2105c55a88e1 drm/i915/dg1: Fix mapping type for default state object
7de35bf9f62a drm/i915: Support ww locks in suspend/resume
737dfb23d460 drm/i915: Improve accuracy of eviction stats
32deab2bab4b drm/i915: Use a ww transaction in i915_gem_object_pin_map_unlocked()
7ad1c0697fb2 drm/i915: Use a ww transaction in the fault handler
02ce389f0623 drm/i915: Support ww eviction
bc70e7e45bcb drm/i915: Implement eviction locking v2
6fbe288750c4 drm/i915: Perform execbuffer object locking as a separate step
69ba4c87d1c0 drm/i915: move eviction to prepare hook
b333606856ec drm/i915: need consider system BO snoop for dgfx
d868fcf1ecf1 drm/i915: suspend/resume handling of perma-pinned objects
7f4379debc55 drm/i915: suspend/resume enable blitter eviction
9054df43c6e6 drm/i915/gt: Allocate default ctx objects in SMEM
5138a90c0179 drm/i915/pm: suspend and restore ppgtt mapping
2b5c568f6237 drm/i915/dg1: Add dedicated context for blitter eviction
fe6486a08fff drm/i915: Reset blitter context when unpark engine
5f2a87a3c62a drm/i915: suspend/resume eviction
e77001d0741d drm/i915/gem/selftest: test and measure window based blt cpy
d30141a1c7dc drm/i915: Lmem eviction statistics by category
0fb68f1c3c17 drm/i915: window_blt_copy is used for swapin and swapout
efc0c590d514 drm/i915/dg1: Keep engine awake across whole blit
3e237c57e079 drm/i915/dg1: Eliminate eviction mutex
84d54dd2aedf drm/i915: blt copy between objs using pre-created vma windows
7f58be45fa4a drm/i915: create and destroy dummy vma
7a3906ab73e5 drm/i915: define intel_partial_pages_for_sg_table
dea599a449c3 drm/i915/dg1: Measure swap in/out timing stats
45aa0145d9d7 drm/i915/dg1: Track swap in/out stats via debugfs
94618502032f drm/i915/dg1: Add lmem_size modparam
c43e26b457ba drm/i915/dg1: Add enable_eviction modparam
8df8e087dc74 drm/i915/dg1: Eviction logic
280d036c6cc4 drm/i915/dg1: i915_gem_object_memcpy(..) infrastructure
e371a4fda4c8 drm/i915/dg1: intel_memory_region_evict() changes for eviction
85bcec541bc6 drm/i915: Allow non-uniform subslices in gen12+
14fefe71abbe drm/i915/gem: Update shmem available memory
599eb2888fa7 drm/i915/lmem: Limit block size to 4G
a7be54957ebd drm/i915/lmem: allocate HWSP in lmem
a076828abb5c drm/i915/dg1: Double memory bandwidth available
fca06b7ce6d8 drm/i915/dg1: Compute MEM Bandwidth using MCHBAR
3c364e753afe drm/i915: WA for zero memory channel
ca804dda82c6 drm/i915/oprom: Basic sanitization
adf64d641e06 drm/i915/dg1: Read OPROM via SPI controller
bd91b2337589 drm/i915/dg1: Reserve first 1MB of local memory
362b620d7074 drm/i915: Reintroduce mem->reserved
9dd81dae303d drm/i915/dsb: Enable lmem for dsb
a5830c8b075a drm/i915/lmem: reset the lmem buffer created by fbdev
4e7c3c2116df drm/i915/lmem: Bypass aperture when lmem is available
2b03d5d4546d drm/i915: Create stolen memory region from local memory
31c4a0f29ed1 drm/i915/guc: put all guc objects in lmem when available
39aed9c40f1a drm/i915/lmem: support optional CPU clearing for special internal use
5ec0749cbeac drm/i915: finish memory region support for stolen objects.
8adce9072e8d drm/i915: add i915_gem_object_is_devmem() function
ebf42a2d1043 drm/i915: Fix object page offset within a region
1588b3cc3983 drm/i915: setup GPU device lmem region
7d2a163655ac drm/i915: i915 returns -EBUSY on thread contention
3f5760d53851 drm/i915: Provide a way to disable PCIe relaxed write ordering
ae1d26ee9713 drm/i915: move engine scratch to LMEM
333376c17e45 drm/i915: allocate context from LMEM
3bac8276df64 drm/i915/gtt/dg1: add PTE_LM plumbing for GGTT
95c33d19bc2e drm/i915/gtt/dg1: add PTE_LM plumbing for PPGTT
934cf6d2978f drm/i915/gtt: make flushing conditional
a5a268b53456 drm/i915/gtt/dgfx: place the PD in LMEM
33489c547561 drm/i915/gtt: map the PD up front
7fb05ce64cc0 drm/i915: Distinction of memory regions
29e876fe2352 drm/i915: setup the LMEM region
4a88133b064b drm/i915/dg1: Introduce dmabuf mmap to LMEM
5e1663900ad4 drm/i915/dg1: Do not check r->sgt.pfn for NULL
6491c69340d4 drm/i915/lmem: allocate cmd ring in lmem
37b5e5cb7b02 drm/i915/uapi: introduce drm_i915_gem_create_ext
29499067db3b drm/i915: Store gt in memory region
985600b152ca drm/i915/query: Expose memory regions through the query uAPI
87518556758f drm/i915/dg1: Fix occasional migration error
bd78bfa4452f drm/i915: support basic object migration
ccd239f2c053 drm/i915: Delay publishing objects on the eviction lists
1e5ec74bb7b8 drm/i915: Add blit functions that can be called from within a WW transaction
4bb2bb3961aa drm/i915/region: support basic eviction
3db87b4f64ed drm/i915: introduce kernel blitter_context
36db22233ecf drm/i915: Update the helper to set correct mapping
7c7b8d398ff6 HAX drm/i915/lmem: support pread and pwrite
638e59094088 HAX drm/i915/lmem: support CPU relocations
425ac61c78e0 drm/i915/lmem: Fail driver init if LMEM training failed
7160b8cb229a drm/i915/dmabuf: Disallow LMEM objects from dma-buf
fd9e9f4efbc5 drm/i915: Return error value when bo not in LMEM for discrete
f5559b991383 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
f9f3ea170515 drm/i915: Untangle the vma pages_mutex
94aeb7363b28 drm/i915: Introduce a for_i915_gem_ww(){}
ad0364e0969c drm/i915: Break out dma_resv ww locking utilities to separate files
d58138a3962d drm/i915: Reference contending lock objects
9d27adfe1cd7 drm/i915: Avoid some false positives in assert_object_held()
fcf207bef4c6 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
84a9ca7ba448 drm/i915: Finally remove obj->mm.lock.
e83d2d2ded23 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
285510611ec9 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
f5a8a22004f2 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
27d90930aa00 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
37021ba46236 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
dd71228759cc drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
602f787839eb drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
a94b8d1885c2 drm/i915/selftests: Prepare execlists for obj->mm.lock removal
795a67bb1fbf drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
8fec33b51cda drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
5a39c68fb094 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
4a4950747bae drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
ba084a771fd9 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
89afabcc408e drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
3f28d8d73a33 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
c25eb6821a19 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
57c19694c266 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
639fcd5ea986 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
2c146f16bb0f drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
f95d0fb66807 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
fae9a34de3ad drm/i915: Use a single page table lock for each gtt.
0cd52e7ebb96 drm/i915: Fix ww locking in shmem_create_from_object
09740eb15ae0 drm/i915: Add missing ww lock in intel_dsb_prepare.
333090d025a8 drm/i915: Add ww locking to dma-buf ops.
244dae79052a drm/i915: Lock ww in ucode objects correctly
cd47b7ad5405 drm/i915: Increase ww locking for perf.
eb6fcc0954ff drm/i915: Add ww locking around vm_access()
52f9f5f31a0f drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
79bd0897399a drm/i915: Prepare for obj->mm.lock removal
c6c0c64d6026 drm/i915: Fix workarounds selftest, part 1
ce9f6c46fc3a drm/i915: Fix pread/pwrit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/index.html

--===============3861329306514907165==
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
<tr><td><b>Series:</b></td><td>DG1 + LMEM enabling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84344/">https://patchwork.freedesktop.org/series/84344/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9398 -&gt; Patchwork_18999</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18999 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18999, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18999:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-byt-j1900/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-byt-j1900/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bxt-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bxt-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@gem_exec_suspend@basic-s0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9398 and Patchwork_18999:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@win_blt_copy:<ul>
<li>Statuses : 33 pass(s)</li>
<li>Exec time: [0.44, 6.51] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18999 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@debugfs_test@read_all_entries.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@debugfs_test@read_all_entries.html">PASS</a> +12 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@fbdev@read}:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-dg1-1/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-dg1-1/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18999/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +15 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Additional (1): fi-cml-u2 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9398 -&gt; Patchwork_18999</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9398: 31a04133814ab8f7b3aab042517e3f104df5ee2d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5873: b6321b58dcaa41ba1d28aced42d6b15dc3d49ca2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18999: 6308b9d298372639e94b1fb28f7a28ca5ae2f4e2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6308b9d29837 drm/i915: drop fake lmem<br />
91802d0e6465 drm/i915/dg1: allow pci to auto probe<br />
a2a7eee3b71b drm/i915/dg1: Fix GPU hang due to shmemfs page drop<br />
2105c55a88e1 drm/i915/dg1: Fix mapping type for default state object<br />
7de35bf9f62a drm/i915: Support ww locks in suspend/resume<br />
737dfb23d460 drm/i915: Improve accuracy of eviction stats<br />
32deab2bab4b drm/i915: Use a ww transaction in i915_gem_object_pin_map_unlocked()<br />
7ad1c0697fb2 drm/i915: Use a ww transaction in the fault handler<br />
02ce389f0623 drm/i915: Support ww eviction<br />
bc70e7e45bcb drm/i915: Implement eviction locking v2<br />
6fbe288750c4 drm/i915: Perform execbuffer object locking as a separate step<br />
69ba4c87d1c0 drm/i915: move eviction to prepare hook<br />
b333606856ec drm/i915: need consider system BO snoop for dgfx<br />
d868fcf1ecf1 drm/i915: suspend/resume handling of perma-pinned objects<br />
7f4379debc55 drm/i915: suspend/resume enable blitter eviction<br />
9054df43c6e6 drm/i915/gt: Allocate default ctx objects in SMEM<br />
5138a90c0179 drm/i915/pm: suspend and restore ppgtt mapping<br />
2b5c568f6237 drm/i915/dg1: Add dedicated context for blitter eviction<br />
fe6486a08fff drm/i915: Reset blitter context when unpark engine<br />
5f2a87a3c62a drm/i915: suspend/resume eviction<br />
e77001d0741d drm/i915/gem/selftest: test and measure window based blt cpy<br />
d30141a1c7dc drm/i915: Lmem eviction statistics by category<br />
0fb68f1c3c17 drm/i915: window_blt_copy is used for swapin and swapout<br />
efc0c590d514 drm/i915/dg1: Keep engine awake across whole blit<br />
3e237c57e079 drm/i915/dg1: Eliminate eviction mutex<br />
84d54dd2aedf drm/i915: blt copy between objs using pre-created vma windows<br />
7f58be45fa4a drm/i915: create and destroy dummy vma<br />
7a3906ab73e5 drm/i915: define intel_partial_pages_for_sg_table<br />
dea599a449c3 drm/i915/dg1: Measure swap in/out timing stats<br />
45aa0145d9d7 drm/i915/dg1: Track swap in/out stats via debugfs<br />
94618502032f drm/i915/dg1: Add lmem_size modparam<br />
c43e26b457ba drm/i915/dg1: Add enable_eviction modparam<br />
8df8e087dc74 drm/i915/dg1: Eviction logic<br />
280d036c6cc4 drm/i915/dg1: i915_gem_object_memcpy(..) infrastructure<br />
e371a4fda4c8 drm/i915/dg1: intel_memory_region_evict() changes for eviction<br />
85bcec541bc6 drm/i915: Allow non-uniform subslices in gen12+<br />
14fefe71abbe drm/i915/gem: Update shmem available memory<br />
599eb2888fa7 drm/i915/lmem: Limit block size to 4G<br />
a7be54957ebd drm/i915/lmem: allocate HWSP in lmem<br />
a076828abb5c drm/i915/dg1: Double memory bandwidth available<br />
fca06b7ce6d8 drm/i915/dg1: Compute MEM Bandwidth using MCHBAR<br />
3c364e753afe drm/i915: WA for zero memory channel<br />
ca804dda82c6 drm/i915/oprom: Basic sanitization<br />
adf64d641e06 drm/i915/dg1: Read OPROM via SPI controller<br />
bd91b2337589 drm/i915/dg1: Reserve first 1MB of local memory<br />
362b620d7074 drm/i915: Reintroduce mem-&gt;reserved<br />
9dd81dae303d drm/i915/dsb: Enable lmem for dsb<br />
a5830c8b075a drm/i915/lmem: reset the lmem buffer created by fbdev<br />
4e7c3c2116df drm/i915/lmem: Bypass aperture when lmem is available<br />
2b03d5d4546d drm/i915: Create stolen memory region from local memory<br />
31c4a0f29ed1 drm/i915/guc: put all guc objects in lmem when available<br />
39aed9c40f1a drm/i915/lmem: support optional CPU clearing for special internal use<br />
5ec0749cbeac drm/i915: finish memory region support for stolen objects.<br />
8adce9072e8d drm/i915: add i915_gem_object_is_devmem() function<br />
ebf42a2d1043 drm/i915: Fix object page offset within a region<br />
1588b3cc3983 drm/i915: setup GPU device lmem region<br />
7d2a163655ac drm/i915: i915 returns -EBUSY on thread contention<br />
3f5760d53851 drm/i915: Provide a way to disable PCIe relaxed write ordering<br />
ae1d26ee9713 drm/i915: move engine scratch to LMEM<br />
333376c17e45 drm/i915: allocate context from LMEM<br />
3bac8276df64 drm/i915/gtt/dg1: add PTE_LM plumbing for GGTT<br />
95c33d19bc2e drm/i915/gtt/dg1: add PTE_LM plumbing for PPGTT<br />
934cf6d2978f drm/i915/gtt: make flushing conditional<br />
a5a268b53456 drm/i915/gtt/dgfx: place the PD in LMEM<br />
33489c547561 drm/i915/gtt: map the PD up front<br />
7fb05ce64cc0 drm/i915: Distinction of memory regions<br />
29e876fe2352 drm/i915: setup the LMEM region<br />
4a88133b064b drm/i915/dg1: Introduce dmabuf mmap to LMEM<br />
5e1663900ad4 drm/i915/dg1: Do not check r-&gt;sgt.pfn for NULL<br />
6491c69340d4 drm/i915/lmem: allocate cmd ring in lmem<br />
37b5e5cb7b02 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
29499067db3b drm/i915: Store gt in memory region<br />
985600b152ca drm/i915/query: Expose memory regions through the query uAPI<br />
87518556758f drm/i915/dg1: Fix occasional migration error<br />
bd78bfa4452f drm/i915: support basic object migration<br />
ccd239f2c053 drm/i915: Delay publishing objects on the eviction lists<br />
1e5ec74bb7b8 drm/i915: Add blit functions that can be called from within a WW transaction<br />
4bb2bb3961aa drm/i915/region: support basic eviction<br />
3db87b4f64ed drm/i915: introduce kernel blitter_context<br />
36db22233ecf drm/i915: Update the helper to set correct mapping<br />
7c7b8d398ff6 HAX drm/i915/lmem: support pread and pwrite<br />
638e59094088 HAX drm/i915/lmem: support CPU relocations<br />
425ac61c78e0 drm/i915/lmem: Fail driver init if LMEM training failed<br />
7160b8cb229a drm/i915/dmabuf: Disallow LMEM objects from dma-buf<br />
fd9e9f4efbc5 drm/i915: Return error value when bo not in LMEM for discrete<br />
f5559b991383 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete<br />
f9f3ea170515 drm/i915: Untangle the vma pages_mutex<br />
94aeb7363b28 drm/i915: Introduce a for_i915_gem_ww(){}<br />
ad0364e0969c drm/i915: Break out dma_resv ww locking utilities to separate files<br />
d58138a3962d drm/i915: Reference contending lock objects<br />
9d27adfe1cd7 drm/i915: Avoid some false positives in assert_object_held()<br />
fcf207bef4c6 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
84a9ca7ba448 drm/i915: Finally remove obj-&gt;mm.lock.<br />
e83d2d2ded23 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
285510611ec9 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
f5a8a22004f2 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
27d90930aa00 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
37021ba46236 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
dd71228759cc drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
602f787839eb drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
a94b8d1885c2 drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
795a67bb1fbf drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
8fec33b51cda drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
5a39c68fb094 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
4a4950747bae drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
ba084a771fd9 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
89afabcc408e drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
3f28d8d73a33 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
c25eb6821a19 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
57c19694c266 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
639fcd5ea986 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
2c146f16bb0f drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
f95d0fb66807 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
fae9a34de3ad drm/i915: Use a single page table lock for each gtt.<br />
0cd52e7ebb96 drm/i915: Fix ww locking in shmem_create_from_object<br />
09740eb15ae0 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
333090d025a8 drm/i915: Add ww locking to dma-buf ops.<br />
244dae79052a drm/i915: Lock ww in ucode objects correctly<br />
cd47b7ad5405 drm/i915: Increase ww locking for perf.<br />
eb6fcc0954ff drm/i915: Add ww locking around vm_access()<br />
52f9f5f31a0f drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
79bd0897399a drm/i915: Prepare for obj-&gt;mm.lock removal<br />
c6c0c64d6026 drm/i915: Fix workarounds selftest, part 1<br />
ce9f6c46fc3a drm/i915: Fix pread/pwrit</p>

</body>
</html>

--===============3861329306514907165==--

--===============1896446602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1896446602==--
