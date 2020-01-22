Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A09145E58
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 23:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E016F914;
	Wed, 22 Jan 2020 22:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B3266F914;
 Wed, 22 Jan 2020 22:04:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32FEEA011C;
 Wed, 22 Jan 2020 22:04:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 22 Jan 2020 22:04:59 -0000
Message-ID: <157973069918.22395.11066748449723660199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122155030.29304-1-jani.nikula@intel.com>
In-Reply-To: <20200122155030.29304-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm=3A_add_drm=5Fcore=5Fcheck?=
 =?utf-8?q?=5Fall=5Ffeatures=28=29_to_check_for_a_mask_of_features?=
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

Series: series starting with [v3,1/2] drm: add drm_core_check_all_features() to check for a mask of features
URL   : https://patchwork.freedesktop.org/series/72407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7797 -> Patchwork_16213
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16213 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16213, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16213:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2] +134 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-r/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-r/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][3] -> [FAIL][4] +134 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-s/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@mmap:
    - fi-tgl-y:           NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-tgl-y/igt@fbdev@mmap.html

  * igt@gem_basic@bad-close:
    - fi-gdg-551:         [PASS][6] -> [FAIL][7] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-gdg-551/igt@gem_basic@bad-close.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-gdg-551/igt@gem_basic@bad-close.html

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][8] -> [FAIL][9] +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-nick/igt@gem_busy@busy-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bsw-nick/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][10] -> [FAIL][11] +129 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][12] -> [FAIL][13] +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@nb-await-default:
    - fi-hsw-4770r:       [PASS][14] -> [FAIL][15] +128 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [PASS][16] -> [FAIL][17] +134 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  * igt@gem_flink_basic@double-flink:
    - fi-blb-e6850:       [PASS][18] -> [FAIL][19] +117 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-blb-e6850/igt@gem_flink_basic@double-flink.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-blb-e6850/igt@gem_flink_basic@double-flink.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-pnv-d510:        [PASS][20] -> [FAIL][21] +32 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html

  * igt@gem_mmap@basic:
    - fi-bsw-kefka:       [PASS][22] -> [FAIL][23] +39 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-kefka/igt@gem_mmap@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bsw-kefka/igt@gem_mmap@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-hsw-peppy:       [PASS][24] -> [FAIL][25] +126 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
    - fi-cfl-8700k:       [PASS][26] -> [FAIL][27] +129 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][28] -> [FAIL][29] +134 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@gem_sync@basic-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_tiled_pread_basic:
    - fi-icl-u3:          [PASS][30] -> [FAIL][31] +134 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@gem_tiled_pread_basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u3/igt@gem_tiled_pread_basic.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2600:        [PASS][32] -> [FAIL][33] +127 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-u2:          [PASS][34] -> [SKIP][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-guc:         [PASS][36] -> [SKIP][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u3:          [PASS][38] -> [SKIP][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cml-u2:          [PASS][40] -> [SKIP][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][42] -> [SKIP][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [PASS][44] -> [SKIP][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cml-s:           [PASS][46] -> [SKIP][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-s/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][48] -> [FAIL][49] +130 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][50] -> [FAIL][51] +129 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
    - fi-bsw-n3050:       [PASS][52] -> [FAIL][53] +45 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][54] -> [FAIL][55] +137 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-whl-u:           [PASS][56] -> [FAIL][57] +130 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][58] -> [FAIL][59] +129 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][60] -> [FAIL][61] +129 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@no-handle:
    - fi-kbl-8809g:       [PASS][62] -> [FAIL][63] +101 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@size-max:
    - fi-apl-guc:         [PASS][64] -> [FAIL][65] +126 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-apl-guc/igt@kms_addfb_basic@size-max.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-apl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][66] -> [FAIL][67] +103 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bwr-2160/igt@kms_addfb_basic@too-high.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][68] -> [FAIL][69] +133 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][70] +138 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][71] -> [FAIL][72] +139 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [FAIL][73] +143 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][74] -> [FAIL][75] +129 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6600u:       [PASS][76] -> [FAIL][77] +134 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-lmem:        [PASS][78] -> [FAIL][79] +129 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-snb-2520m:       [PASS][80] -> [FAIL][81] +127 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-guc:         [PASS][82] -> [FAIL][83] +129 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-bxt-dsi:         [PASS][84] -> [FAIL][85] +129 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][86] -> [FAIL][87] +104 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-guc/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][88] -> [FAIL][89] +126 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       [SKIP][90] ([fdo#109271]) -> [FAIL][91] +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-skl-6600u:       [SKIP][92] ([fdo#109271]) -> [FAIL][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-hsw-peppy:       [SKIP][94] ([fdo#109271]) -> [FAIL][95] +9 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u2:          [SKIP][96] ([fdo#109315]) -> [FAIL][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-cfl-8700k:       [SKIP][98] ([fdo#109271]) -> [FAIL][99] +6 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-y:           [SKIP][100] ([fdo#109315]) -> [FAIL][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-ivb-3770:        [SKIP][102] ([fdo#109271]) -> [FAIL][103] +6 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-whl-u:           [SKIP][104] ([fdo#109271]) -> [FAIL][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u3:          [SKIP][106] ([fdo#109315]) -> [FAIL][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-guc:         [SKIP][108] ([fdo#109315]) -> [FAIL][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       [SKIP][110] ([fdo#109271]) -> [FAIL][111] +9 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-icl-dsi:         [SKIP][112] ([fdo#109315]) -> [FAIL][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-s:           [SKIP][114] ([fdo#109315]) -> [FAIL][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-u2:          [SKIP][116] ([fdo#109315]) -> [FAIL][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_busy@busy-all:
    - fi-gdg-551:         [SKIP][118] ([fdo#109271]) -> [FAIL][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-gdg-551/igt@gem_busy@busy-all.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-gdg-551/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][120] ([i915#45]) -> [FAIL][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_param@basic-default:
    - fi-pnv-d510:        [SKIP][122] ([fdo#109271]) -> [FAIL][123] +4 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-pnv-d510/igt@gem_ctx_param@basic-default.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-pnv-d510/igt@gem_ctx_param@basic-default.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [DMESG-WARN][124] ([i915#289]) -> [SKIP][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - fi-blb-e6850:       [SKIP][126] ([fdo#109271]) -> [FAIL][127] +18 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-blb-e6850/igt@i915_pm_rps@basic-api.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-blb-e6850/igt@i915_pm_rps@basic-api.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         [SKIP][128] ([fdo#109271] / [fdo#111827]) -> [FAIL][129] +8 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        [SKIP][130] ([fdo#109271] / [fdo#111827]) -> [FAIL][131] +8 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-whl-u:           [SKIP][132] ([fdo#109271] / [fdo#111827]) -> [FAIL][133] +8 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-7500u:       [DMESG-WARN][134] ([IGT#4] / [i915#62] / [i915#74] / [i915#92]) -> [FAIL][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-icl-u2:          [DMESG-WARN][136] ([IGT#4] / [i915#263]) -> [FAIL][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-cml-u2:          [DMESG-WARN][138] ([IGT#4]) -> [FAIL][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][140] ([fdo#109284] / [fdo#111827]) -> [FAIL][141] +8 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-guc:         [SKIP][142] ([fdo#109271] / [fdo#111827]) -> [FAIL][143] +8 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-bwr-2160:        [SKIP][144] ([fdo#109271] / [fdo#111827]) -> [FAIL][145] +8 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][146] ([fdo#109284] / [fdo#111827]) -> [FAIL][147] +8 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         [SKIP][148] ([fdo#109271] / [fdo#111827]) -> [FAIL][149] +8 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-icl-guc:         [SKIP][150] ([fdo#109284] / [fdo#111827]) -> [FAIL][151] +8 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-s:           [SKIP][152] ([fdo#109284] / [fdo#111827]) -> [FAIL][153] +8 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html
    - fi-skl-6700k2:      [SKIP][154] ([fdo#109271]) -> [FAIL][155] +11 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        [SKIP][156] ([fdo#109271] / [fdo#111827]) -> [FAIL][157] +8 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-lmem:        [SKIP][158] ([fdo#109271] / [fdo#111827]) -> [FAIL][159] +8 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-kbl-x1275:       [SKIP][160] ([fdo#109271] / [fdo#111827]) -> [FAIL][161] +8 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-icl-u3:          [SKIP][162] ([fdo#109284] / [fdo#111827]) -> [FAIL][163] +8 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@kms_chamelium@hdmi-crc-fast.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-icl-u3/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-snb-2600:        [SKIP][164] ([fdo#109271] / [fdo#111827]) -> [FAIL][165] +8 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-hsw-peppy:       [SKIP][166] ([fdo#109271] / [fdo#111827]) -> [FAIL][167] +8 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-peppy/igt@kms_chamelium@hdmi-edid-read.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-hsw-peppy/igt@kms_chamelium@hdmi-edid-read.html
    - fi-blb-e6850:       [SKIP][168] ([fdo#109271] / [fdo#111827]) -> [FAIL][169] +8 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-blb-e6850/igt@kms_chamelium@hdmi-edid-read.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-blb-e6850/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-8809g:       [SKIP][170] ([fdo#109271] / [fdo#111827]) -> [FAIL][171] +8 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-r:           [SKIP][172] ([fdo#109271] / [fdo#111827]) -> [FAIL][173] +8 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         [SKIP][174] ([fdo#109271] / [fdo#111827]) -> [FAIL][175] +8 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-apl-guc:         [SKIP][176] ([fdo#109271] / [fdo#111827]) -> [FAIL][177] +8 similar issues
   [176]: https://inte

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16213/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
