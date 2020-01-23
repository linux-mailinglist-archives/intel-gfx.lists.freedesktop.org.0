Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E814670A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 12:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E58A6FBFB;
	Thu, 23 Jan 2020 11:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBFEF6FBFA;
 Thu, 23 Jan 2020 11:45:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA764A0093;
 Thu, 23 Jan 2020 11:45:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 23 Jan 2020 11:45:08 -0000
Message-ID: <157977990879.1145.16670939941755589343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122155030.29304-1-jani.nikula@intel.com>
In-Reply-To: <20200122155030.29304-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm=3A_add_drm=5Fcore=5Fcheck?=
 =?utf-8?q?=5Fall=5Ffeatures=28=29_to_check_for_a_mask_of_features_=28rev2?=
 =?utf-8?q?=29?=
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

Series: series starting with [v3,1/2] drm: add drm_core_check_all_features() to check for a mask of features (rev2)
URL   : https://patchwork.freedesktop.org/series/72407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7801 -> Patchwork_16227
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16227 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16227, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16227:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2] +134 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-r/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-r/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][3] -> [FAIL][4] +19 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][5] +145 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-byt-n2820/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@mmap:
    - fi-tgl-y:           NOTRUN -> [SKIP][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-tgl-y/igt@fbdev@mmap.html

  * igt@gem_basic@bad-close:
    - fi-gdg-551:         [PASS][7] -> [FAIL][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-gdg-551/igt@gem_basic@bad-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-gdg-551/igt@gem_basic@bad-close.html

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bsw-nick/igt@gem_busy@busy-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bsw-nick/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][11] -> [FAIL][12] +129 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@nb-await-default:
    - fi-hsw-4770r:       [PASS][13] -> [FAIL][14] +128 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [PASS][15] -> [FAIL][16] +133 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  * igt@gem_flink_basic@double-flink:
    - fi-blb-e6850:       [PASS][17] -> [FAIL][18] +117 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-blb-e6850/igt@gem_flink_basic@double-flink.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-blb-e6850/igt@gem_flink_basic@double-flink.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-pnv-d510:        [PASS][19] -> [FAIL][20] +34 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html

  * igt@gem_mmap@basic:
    - fi-bsw-kefka:       [PASS][21] -> [FAIL][22] +39 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bsw-kefka/igt@gem_mmap@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bsw-kefka/igt@gem_mmap@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-hsw-peppy:       [PASS][23] -> [FAIL][24] +127 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
    - fi-cfl-8700k:       [PASS][25] -> [FAIL][26] +129 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][27] -> [FAIL][28] +134 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-guc/igt@gem_sync@basic-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_tiled_pread_basic:
    - fi-icl-u3:          [PASS][29] -> [FAIL][30] +134 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u3/igt@gem_tiled_pread_basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u3/igt@gem_tiled_pread_basic.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2600:        [PASS][31] -> [FAIL][32] +127 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-u2:          [PASS][33] -> [SKIP][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-guc:         [PASS][35] -> [SKIP][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u3:          [PASS][37] -> [SKIP][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cml-u2:          [PASS][39] -> [SKIP][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][41] -> [SKIP][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [PASS][43] -> [SKIP][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cml-s:           NOTRUN -> [SKIP][45] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-s/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][46] -> [FAIL][47] +130 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][48] -> [FAIL][49] +129 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][50] -> [FAIL][51] +137 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-whl-u:           [PASS][52] -> [FAIL][53] +130 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][54] -> [FAIL][55] +129 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][56] -> [FAIL][57] +129 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@no-handle:
    - fi-kbl-8809g:       [PASS][58] -> [FAIL][59] +101 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@size-max:
    - fi-apl-guc:         [PASS][60] -> [FAIL][61] +126 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-apl-guc/igt@kms_addfb_basic@size-max.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-apl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][62] -> [FAIL][63] +103 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bwr-2160/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-bdw-5557u:       [PASS][64] -> [FAIL][65] +128 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][66] -> [FAIL][67] +133 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][68] -> [FAIL][69] +139 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [FAIL][70] +143 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-cml-s:           NOTRUN -> [FAIL][71] +125 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-s/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-byt-j1900:       [PASS][72] -> [FAIL][73] +127 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-ilk-650:         [PASS][74] -> [FAIL][75] +126 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][76] -> [FAIL][77] +129 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [PASS][78] -> [FAIL][79] +122 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6600u:       [PASS][80] -> [FAIL][81] +134 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-lmem:        [PASS][82] -> [FAIL][83] +129 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-snb-2520m:       [PASS][84] -> [FAIL][85] +127 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-guc:         [PASS][86] -> [FAIL][87] +129 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][88] -> [FAIL][89] +104 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-guc/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][90] -> [FAIL][91] +125 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       [SKIP][92] ([fdo#109271]) -> [FAIL][93] +6 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-skl-6600u:       [SKIP][94] ([fdo#109271]) -> [FAIL][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-hsw-peppy:       [SKIP][96] ([fdo#109271]) -> [FAIL][97] +9 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u2:          [SKIP][98] ([fdo#109315]) -> [FAIL][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-cfl-8700k:       [SKIP][100] ([fdo#109271]) -> [FAIL][101] +6 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-y:           [SKIP][102] ([fdo#109315]) -> [FAIL][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-ivb-3770:        [SKIP][104] ([fdo#109271]) -> [FAIL][105] +6 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-whl-u:           [SKIP][106] ([fdo#109271]) -> [FAIL][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u3:          [SKIP][108] ([fdo#109315]) -> [FAIL][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-guc:         [SKIP][110] ([fdo#109315]) -> [FAIL][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       [SKIP][112] ([fdo#109271]) -> [FAIL][113] +9 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-icl-dsi:         [SKIP][114] ([fdo#109315]) -> [FAIL][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-u2:          [SKIP][116] ([fdo#109315]) -> [FAIL][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_basic@create-close:
    - fi-icl-dsi:         [DMESG-WARN][118] ([i915#109]) -> [FAIL][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-dsi/igt@gem_basic@create-close.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-dsi/igt@gem_basic@create-close.html

  * igt@gem_busy@busy-all:
    - fi-gdg-551:         [SKIP][120] ([fdo#109271]) -> [FAIL][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-gdg-551/igt@gem_busy@busy-all.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-gdg-551/igt@gem_busy@busy-all.html

  * igt@gem_ctx_param@basic-default:
    - fi-pnv-d510:        [SKIP][122] ([fdo#109271]) -> [FAIL][123] +4 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-pnv-d510/igt@gem_ctx_param@basic-default.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-pnv-d510/igt@gem_ctx_param@basic-default.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [INCOMPLETE][124] ([i915#283]) -> [FAIL][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [DMESG-WARN][126] ([i915#289]) -> [SKIP][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - fi-blb-e6850:       [SKIP][128] ([fdo#109271]) -> [FAIL][129] +18 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-blb-e6850/igt@i915_pm_rps@basic-api.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-blb-e6850/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small:
    - fi-bdw-5557u:       [SKIP][130] ([fdo#109271]) -> [FAIL][131] +7 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        [SKIP][132] ([fdo#109271] / [fdo#111827]) -> [FAIL][133] +8 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-whl-u:           [SKIP][134] ([fdo#109271] / [fdo#111827]) -> [FAIL][135] +8 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-7500u:       [DMESG-WARN][136] ([IGT#4] / [i915#62] / [i915#74] / [i915#92]) -> [FAIL][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-icl-u2:          [DMESG-WARN][138] ([IGT#4] / [i915#263]) -> [FAIL][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-cml-u2:          [DMESG-WARN][140] ([IGT#4]) -> [FAIL][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][142] ([fdo#109284] / [fdo#111827]) -> [FAIL][143] +8 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-guc:         [SKIP][144] ([fdo#109271] / [fdo#111827]) -> [FAIL][145] +8 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-bwr-2160:        [SKIP][146] ([fdo#109271] / [fdo#111827]) -> [FAIL][147] +8 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       [SKIP][148] ([fdo#109271] / [fdo#111827]) -> [FAIL][149] +8 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][150] ([fdo#109284] / [fdo#111827]) -> [FAIL][151] +8 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         [SKIP][152] ([fdo#109271] / [fdo#111827]) -> [FAIL][153] +8 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-icl-guc:         [SKIP][154] ([fdo#109284] / [fdo#111827]) -> [FAIL][155] +8 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-elk-e7500:       [SKIP][156] ([fdo#109271] / [fdo#111827]) -> [FAIL][157] +8 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         [SKIP][158] ([fdo#109271] / [fdo#111827]) -> [FAIL][159] +8 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-skl-6700k2:      [SKIP][160] ([fdo#109271]) -> [FAIL][161] +11 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        [SKIP][162] ([fdo#109271] / [fdo#111827]) -> [FAIL][163] +8 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       [SKIP][164] ([fdo#109271] / [fdo#111827]) -> [FAIL][165] +8 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-skl-lmem:        [SKIP][166] ([fdo#109271] / [fdo#111827]) -> [FAIL][167] +8 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-kbl-x1275:       [SKIP][168] ([fdo#109271] / [fdo#111827]) -> [FAIL][169] +8 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-icl-u3:          [SKIP][170] ([fdo#109284] / [fdo#111827]) -> [FAIL][171] +8 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-icl-u3/igt@kms_chamelium@hdmi-crc-fast.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-icl-u3/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-snb-2600:        [SKIP][172] ([fdo#109271] / [fdo#111827]) -> [FAIL][173] +8 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7801/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-hsw-peppy:       [SKIP][174] ([fdo#109271] / [fdo#111827]) -> [FAIL][175] +8 similar issues
   [174]:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16227/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
