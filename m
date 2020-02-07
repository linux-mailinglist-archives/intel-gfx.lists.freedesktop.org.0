Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98771155D20
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 18:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4EB6FD57;
	Fri,  7 Feb 2020 17:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A6356E0CC;
 Fri,  7 Feb 2020 17:45:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 824CFA011C;
 Fri,  7 Feb 2020 17:45:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 07 Feb 2020 17:45:52 -0000
Message-ID: <158109755250.8752.6528715859205987662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Try_to_fix_encoder_possible=5Fclones/crtc_=28rev2=29?=
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

Series: drm: Try to fix encoder possible_clones/crtc (rev2)
URL   : https://patchwork.freedesktop.org/series/63399/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7886 -> Patchwork_16482
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/index.html

Known issues
------------

  Here are the changes found in Patchwork_16482 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][7] -> [SKIP][8] ([fdo#109271]) +27 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#553] / [i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][11] ([fdo#108569]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-icl-y/igt@i915_selftest@live_execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       [DMESG-FAIL][13] ([i915#943]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][15] ([i915#1052]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_pm:
    - {fi-tgl-dsi}:       [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-tgl-dsi/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-tgl-dsi/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [TIMEOUT][19] ([fdo#112271]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111096] / [i915#323]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][23] ([i915#694]) -> [TIMEOUT][24] ([fdo#112271] / [i915#1084])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (54 -> 42)
------------------------------

  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6700k2 fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7886 -> Patchwork_16482

  CI-20190529: 20190529
  CI_DRM_7886: c76da740823aa950e340a8e53758511680da79ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16482: 3e57a6ac85fa82e45de24c0fe193644ff89d96fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3e57a6ac85fa drm: Validate encoder->possible_crtcs
c9052ff0cc3f drm: Validate encoder->possible_clones
2b6316f16a22 drm/imx: Remove the bogus possible_clones setup
d5b660531144 drm/exynos: Use drm_encoder_mask()
20905e49f113 drm/gma500: Sanitize possible_clones
3ead1c5c3666 drm: Include the encoder itself in possible_clones

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
