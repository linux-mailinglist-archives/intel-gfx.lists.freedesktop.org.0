Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94A21BF9A
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 00:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0697F6E1C4;
	Fri, 10 Jul 2020 22:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE6686E1C4;
 Fri, 10 Jul 2020 22:19:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D802BA0118;
 Fri, 10 Jul 2020 22:19:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 10 Jul 2020 22:19:04 -0000
Message-ID: <159441954485.20500.13708729876321209707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710203408.23039-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200710203408.23039-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Recalculate_FBC_w/a_stride_when_needed?=
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

Series: drm/i915: Recalculate FBC w/a stride when needed
URL   : https://patchwork.freedesktop.org/series/79368/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8731 -> Patchwork_18137
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18137 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18137, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18137:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@flip:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-whl-u/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-whl-u/igt@kms_busy@basic@flip.html
    - fi-cml-s:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-cml-s/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-cml-s/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-skl-6600u/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-cml-u2:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-cml-u2/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-cml-u2/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_18137 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-tgl-u2/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [PASS][19] -> [INCOMPLETE][20] ([i915#2045])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@flip:
    - fi-bxt-dsi:         [PASS][21] -> [INCOMPLETE][22] ([i915#1635])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-bxt-dsi/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-bxt-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [PASS][25] -> [DMESG-WARN][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][27] ([i915#1888]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [DMESG-WARN][29] ([i915#402]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [DMESG-WARN][31] ([i915#1635] / [i915#1982]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][33] ([fdo#109271]) -> [DMESG-FAIL][34] ([i915#62])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][35] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][36] ([i915#62] / [i915#92]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][37] ([i915#62] / [i915#92]) -> [DMESG-WARN][38] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 35)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8731 -> Patchwork_18137

  CI-20190529: 20190529
  CI_DRM_8731: f88955370bca7351fd1d92420c523e35634d7e69 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5732: 8a50ca9985d2dbb0293186c3286af46468fb4b84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18137: 4bd6f4b8a817218b42565854e07760ac599e73c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4bd6f4b8a817 drm/i915: Recalculate FBC w/a stride when needed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18137/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
