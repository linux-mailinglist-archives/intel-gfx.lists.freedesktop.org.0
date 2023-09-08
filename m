Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A627980BC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 04:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9D510E852;
	Fri,  8 Sep 2023 02:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AFFC10E57E;
 Fri,  8 Sep 2023 02:57:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D001A0093;
 Fri,  8 Sep 2023 02:57:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2917685344748779405=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 08 Sep 2023 02:57:12 -0000
Message-ID: <169414183217.14898.9881334217521090684@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230908002937.1660911-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230908002937.1660911-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F16018031267_/_Wa=5F16018063123?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2917685344748779405==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Apply Wa_16018031267 / Wa_16018063123
URL   : https://patchwork.freedesktop.org/series/123407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13612 -> Patchwork_123407v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123407v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123407v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (3): fi-kbl-soraka bat-dg2-9 fi-apl-guc 
  Missing    (3): fi-skl-guc bat-dg2-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123407v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - bat-jsl-3:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-jsl-3/igt@i915_selftest@live@gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-jsl-3/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - fi-kbl-8809g:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-8809g/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-8809g/igt@i915_selftest@live@gtt.html
    - bat-mtlp-8:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-8/igt@i915_selftest@live@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-8/igt@i915_selftest@live@gtt.html
    - fi-kbl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-guc/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html
    - bat-jsl-1:          [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-jsl-1/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-jsl-1/igt@i915_selftest@live@gtt.html
    - fi-tgl-1115g4:      [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
    - bat-rpls-1:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-rpls-1/igt@i915_selftest@live@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-rpls-1/igt@i915_selftest@live@gtt.html
    - bat-mtlp-6:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-6/igt@i915_selftest@live@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html
    - fi-skl-6600u:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-skl-6600u/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-skl-6600u/igt@i915_selftest@live@gtt.html
    - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@i915_selftest@live@gtt.html
    - bat-dg1-5:          [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-dg1-5/igt@i915_selftest@live@gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg1-5/igt@i915_selftest@live@gtt.html
    - fi-glk-j4005:       [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-glk-j4005/igt@i915_selftest@live@gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - bat-kbl-2:          [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-kbl-2/igt@i915_selftest@live@gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-kbl-2/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_123407v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        [PASS][36] -> [FAIL][37] ([i915#8293])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-hsw-4770/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2190])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][41] ([i915#4083])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][42] ([i915#4077]) +2 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][43] ([i915#4079]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg2-9:          NOTRUN -> [SKIP][44] ([i915#5354] / [i915#7561])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][45] ([i915#6621])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][46] ([i915#5334] / [i915#7872])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-j4005:       [PASS][47] -> [DMESG-FAIL][48] ([i915#5334])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][49] ([i915#1886] / [i915#7913])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gtt:
    - bat-atsm-1:         [PASS][50] -> [DMESG-FAIL][51] ([i915#7913])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-atsm-1/igt@i915_selftest@live@gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-atsm-1/igt@i915_selftest@live@gtt.html
    - bat-dg2-9:          NOTRUN -> [DMESG-FAIL][52] ([i915#7913])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_selftest@live@gtt.html
    - fi-bsw-n3050:       [PASS][53] -> [DMESG-FAIL][54] ([i915#7913])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
    - bat-adlp-9:         [PASS][55] -> [DMESG-FAIL][56] ([i915#7913])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-adlp-9/igt@i915_selftest@live@gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-adlp-9/igt@i915_selftest@live@gtt.html
    - bat-dg2-11:         [PASS][57] -> [DMESG-FAIL][58] ([i915#7913])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-dg2-11/igt@i915_selftest@live@gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-11/igt@i915_selftest@live@gtt.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][59] ([i915#7913])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        [PASS][60] -> [DMESG-FAIL][61] ([i915#7913])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-nick/igt@i915_selftest@live@gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - bat-adls-5:         [PASS][62] -> [DMESG-FAIL][63] ([i915#7913])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-adls-5/igt@i915_selftest@live@gtt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-adls-5/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hugepages:
    - bat-mtlp-8:         [PASS][64] -> [DMESG-WARN][65] ([i915#9121])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][66] ([i915#5190])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][67] ([i915#4215] / [i915#5190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][68] ([i915#4212]) +7 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][69] ([fdo#109271]) +8 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][70] ([i915#4103] / [i915#4213]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-9:          NOTRUN -> [SKIP][71] ([fdo#109285])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][72] ([i915#5274])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [PASS][73] -> [FAIL][74] ([i915#9276])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][75] ([fdo#109271]) +16 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][76] ([i915#1845]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg2-9:          NOTRUN -> [SKIP][77] ([i915#1072]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][78] ([i915#3555])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][79] ([i915#3708])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-9:          NOTRUN -> [SKIP][80] ([i915#3708] / [i915#4077]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][81] ([i915#3291] / [i915#3708]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-write.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276


Build changes
-------------

  * Linux: CI_DRM_13612 -> Patchwork_123407v1

  CI-20190529: 20190529
  CI_DRM_13612: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123407v1: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

669f654aa709 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123
669cc576f7df drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
7ba4987a3626 drm/i915: Reserve some kernel space per vm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/index.html

--===============2917685344748779405==
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
<tr><td><b>Series:</b></td><td>Apply Wa_16018031267 / Wa_16018063123</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123407/">https://patchwork.freedesktop.org/series/123407/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13612 -&gt; Patchwork_123407v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123407v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123407v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (3): fi-kbl-soraka bat-dg2-9 fi-apl-guc <br />
  Missing    (3): fi-skl-guc bat-dg2-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123407v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-jsl-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-jsl-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-8809g/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-8809g/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-8/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-kbl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-rpls-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-rpls-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-skl-6600u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-skl-6600u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-dg1-5/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg1-5/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-glk-j4005/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-kbl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-kbl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123407v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-atsm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-atsm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-adlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-adlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-dg2-11/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-11/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-nick/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-adls-5/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-adls-5/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123407v1/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13612 -&gt; Patchwork_123407v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13612: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123407v1: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>669f654aa709 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123<br />
669cc576f7df drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123<br />
7ba4987a3626 drm/i915: Reserve some kernel space per vm</p>

</body>
</html>

--===============2917685344748779405==--
