Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500918A33B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 20:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D156E951;
	Wed, 18 Mar 2020 19:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F12A86E88F;
 Wed, 18 Mar 2020 19:38:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA613A41FB;
 Wed, 18 Mar 2020 19:38:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 19:38:16 -0000
Message-ID: <158456029693.25099.11683076424478348242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318182518.31618-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200318182518.31618-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Skip_drm=5Fmode=5Fconfig=5Fvalidate=28=29_for_!modeset?=
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

Series: drm: Skip drm_mode_config_validate() for !modeset
URL   : https://patchwork.freedesktop.org/series/74843/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8152 -> Patchwork_17012
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17012 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17012, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17012:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-bwr-2160:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_17012 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [DMESG-WARN][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
    - fi-pnv-d510:        [DMESG-WARN][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [DMESG-WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-elk-e7500:       [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         [DMESG-WARN][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-byt-j1900:       [DMESG-WARN][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [DMESG-WARN][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-u}:         [DMESG-WARN][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-tgl-u/igt@gem_exec_fence@basic-busy@vecs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-tgl-u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bxt-dsi:         [DMESG-WARN][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6700k2:      [DMESG-WARN][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8700k:       [DMESG-WARN][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-guc:         [DMESG-WARN][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-icl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-icl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-ehl-1}:         [DMESG-WARN][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-n3050:       [DMESG-WARN][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-lmem:        [DMESG-WARN][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-soraka:      [DMESG-WARN][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [DMESG-WARN][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-x1275:       [DMESG-WARN][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-guc:         [DMESG-WARN][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-kefka:       [DMESG-WARN][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-glk-dsi:         [DMESG-WARN][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-8809g:       [DMESG-WARN][44] -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-hsw-peppy:       [DMESG-WARN][46] -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-hsw-peppy/igt@gem_exec_fence@basic-busy@vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-hsw-peppy/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-r:           [DMESG-WARN][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8109u:       [DMESG-WARN][50] -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-y:           [DMESG-WARN][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-guc:         [DMESG-WARN][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-nick:        [DMESG-WARN][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-5557u:       [DMESG-WARN][58] -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7500u:       [DMESG-WARN][60] -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-dsi}:       [DMESG-WARN][62] -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-kbl-7560u}:     [DMESG-WARN][64] -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-guc:         [DMESG-WARN][66] -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-dsi:         [DMESG-WARN][68] -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-icl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-icl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][70] ([i915#997]) -> [FAIL][71] ([i915#1209])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8152/fi-kbl-8809g/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997


Participating hosts (44 -> 41)
------------------------------

  Additional (3): fi-cml-u2 fi-bwr-2160 fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8152 -> Patchwork_17012

  CI-20190529: 20190529
  CI_DRM_8152: ce1895bf390da53060aa60a90367b706d92bf431 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17012: 044186ca6b0d82cd0f2c0880da8a6f5e3e64adb5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

044186ca6b0d drm: Skip drm_mode_config_validate() for !modeset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17012/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
