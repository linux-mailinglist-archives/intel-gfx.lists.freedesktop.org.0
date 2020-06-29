Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A7720CDE6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 12:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050046E06B;
	Mon, 29 Jun 2020 10:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 786486E06B;
 Mon, 29 Jun 2020 10:28:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72DF3A0BC6;
 Mon, 29 Jun 2020 10:28:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 29 Jun 2020 10:28:35 -0000
Message-ID: <159342651546.746.14080228126994947768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200626234834.26864-1-lucas.demarchi@intel.com>
In-Reply-To: <20200626234834.26864-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVmFy?=
 =?utf-8?q?iable_renames?=
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

Series: Variable renames
URL   : https://patchwork.freedesktop.org/series/78869/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8671 -> Patchwork_18033
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/index.html

Known issues
------------

  Here are the changes found in Patchwork_18033 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-n2820:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-byt-n2820/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-byt-n2820/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-y/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-cml-s:           [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-cml-s/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-cml-s/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
#### Possible fixes ####

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#402]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@blt:
    - fi-bsw-kefka:       [INCOMPLETE][19] ([i915#392]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-bsw-kefka/igt@i915_selftest@live@blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-bsw-kefka/igt@i915_selftest@live@blt.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [DMESG-WARN][27] ([i915#402]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][30] ([i915#62] / [i915#92]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92]) -> [DMESG-WARN][32] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8671/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8671 -> Patchwork_18033

  CI-20190529: 20190529
  CI_DRM_8671: d5765fff817aa868cbbb86ff3d3ef58d7e27251d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18033: 24d770b5b1a3f1ff36a3b93f78b059dd42a565ed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

24d770b5b1a3 drm/i915/display: prefer dig_port to reference intel_digital_port
9284e42b0c14 drm/i915/display: remove alias to dig_port

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18033/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
