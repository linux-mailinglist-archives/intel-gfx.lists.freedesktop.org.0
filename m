Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF2A145D87
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944236E044;
	Wed, 22 Jan 2020 21:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 207E06E040;
 Wed, 22 Jan 2020 21:12:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E118A0003;
 Wed, 22 Jan 2020 21:12:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 22 Jan 2020 21:12:24 -0000
Message-ID: <157972754402.22393.13284827641205989450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122140259.12086-1-jani.nikula@intel.com>
In-Reply-To: <20200122140259.12086-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm=3A_support_feature_masks_i?=
 =?utf-8?q?n_drm=5Fcore=5Fcheck=5Ffeature=28=29?=
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

Series: series starting with [v2,1/2] drm: support feature masks in drm_core_check_feature()
URL   : https://patchwork.freedesktop.org/series/72403/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7797 -> Patchwork_16212
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16212 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16212, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16212:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2] +134 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-r/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-r/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][3] -> [FAIL][4] +134 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       [PASS][5] -> [FAIL][6] +124 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-n2820/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@mmap:
    - fi-tgl-y:           NOTRUN -> [SKIP][7] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-tgl-y/igt@fbdev@mmap.html

  * igt@gem_basic@bad-close:
    - fi-gdg-551:         [PASS][8] -> [FAIL][9] +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-gdg-551/igt@gem_basic@bad-close.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-gdg-551/igt@gem_basic@bad-close.html

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][10] -> [FAIL][11] +5 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-nick/igt@gem_busy@busy-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bsw-nick/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][12] -> [FAIL][13] +129 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][14] -> [FAIL][15] +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@nb-await-default:
    - fi-hsw-4770r:       [PASS][16] -> [FAIL][17] +128 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-hsw-4770r/igt@gem_exec_fence@nb-await-default.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [PASS][18] -> [FAIL][19] +134 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  * igt@gem_flink_basic@double-flink:
    - fi-blb-e6850:       [PASS][20] -> [FAIL][21] +117 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-blb-e6850/igt@gem_flink_basic@double-flink.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-blb-e6850/igt@gem_flink_basic@double-flink.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-pnv-d510:        [PASS][22] -> [FAIL][23] +32 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-pnv-d510/igt@gem_flink_basic@flink-lifetime.html

  * igt@gem_mmap@basic:
    - fi-bsw-kefka:       [PASS][24] -> [FAIL][25] +39 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-kefka/igt@gem_mmap@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bsw-kefka/igt@gem_mmap@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-hsw-peppy:       [PASS][26] -> [FAIL][27] +126 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
    - fi-cfl-8700k:       [PASS][28] -> [FAIL][29] +129 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][30] -> [FAIL][31] +134 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@gem_sync@basic-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_tiled_pread_basic:
    - fi-icl-u3:          [PASS][32] -> [FAIL][33] +134 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@gem_tiled_pread_basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u3/igt@gem_tiled_pread_basic.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2600:        [PASS][34] -> [FAIL][35] +127 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-u2:          [PASS][36] -> [SKIP][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-guc:         [PASS][38] -> [SKIP][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u3:          [PASS][40] -> [SKIP][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cml-u2:          [PASS][42] -> [SKIP][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][44] -> [SKIP][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [PASS][46] -> [SKIP][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cml-s:           [PASS][48] -> [SKIP][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-s/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][50] -> [FAIL][51] +130 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][52] -> [FAIL][53] +129 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][54] -> [FAIL][55] +137 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-whl-u:           [PASS][56] -> [FAIL][57] +130 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-whl-u/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-bsw-n3050:       [PASS][58] -> [FAIL][59] +118 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][60] -> [FAIL][61] +129 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][62] -> [FAIL][63] +129 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@no-handle:
    - fi-kbl-8809g:       [PASS][64] -> [FAIL][65] +101 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-8809g/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@size-max:
    - fi-apl-guc:         [PASS][66] -> [FAIL][67] +126 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-apl-guc/igt@kms_addfb_basic@size-max.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-apl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][68] -> [FAIL][69] +103 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bwr-2160/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-bdw-5557u:       [PASS][70] -> [FAIL][71] +128 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][72] -> [FAIL][73] +133 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][74] +138 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][75] -> [FAIL][76] +139 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [FAIL][77] +143 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][78] +144 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-ilk-650:         [PASS][79] -> [FAIL][80] +126 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][81] -> [FAIL][82] +129 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [PASS][83] -> [FAIL][84] +122 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6600u:       [PASS][85] -> [FAIL][86] +134 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-lmem:        [PASS][87] -> [FAIL][88] +129 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-snb-2520m:       [PASS][89] -> [FAIL][90] +127 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-guc:         [PASS][91] -> [FAIL][92] +129 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-bxt-dsi:         [PASS][93] -> [FAIL][94] +129 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][95] -> [FAIL][96] +104 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-guc/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][97] -> [FAIL][98] +126 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       [SKIP][99] ([fdo#109271]) -> [FAIL][100] +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-skl-6600u:       [SKIP][101] ([fdo#109271]) -> [FAIL][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-6600u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-hsw-peppy:       [SKIP][103] ([fdo#109271]) -> [FAIL][104] +9 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-hsw-peppy/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u2:          [SKIP][105] ([fdo#109315]) -> [FAIL][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-cfl-8700k:       [SKIP][107] ([fdo#109271]) -> [FAIL][108] +6 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cfl-8700k/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-y:           [SKIP][109] ([fdo#109315]) -> [FAIL][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-ivb-3770:        [SKIP][111] ([fdo#109271]) -> [FAIL][112] +6 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-whl-u:           [SKIP][113] ([fdo#109271]) -> [FAIL][114] +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-whl-u/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u3:          [SKIP][115] ([fdo#109315]) -> [FAIL][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-guc:         [SKIP][117] ([fdo#109315]) -> [FAIL][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       [SKIP][119] ([fdo#109271]) -> [FAIL][120] +9 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-icl-dsi:         [SKIP][121] ([fdo#109315]) -> [FAIL][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-s:           [SKIP][123] ([fdo#109315]) -> [FAIL][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-u2:          [SKIP][125] ([fdo#109315]) -> [FAIL][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_busy@busy-all:
    - fi-gdg-551:         [SKIP][127] ([fdo#109271]) -> [FAIL][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-gdg-551/igt@gem_busy@busy-all.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-gdg-551/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][129] ([i915#45]) -> [FAIL][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_param@basic-default:
    - fi-pnv-d510:        [SKIP][131] ([fdo#109271]) -> [FAIL][132] +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-pnv-d510/igt@gem_ctx_param@basic-default.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-pnv-d510/igt@gem_ctx_param@basic-default.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-byt-n2820:       [TIMEOUT][133] ([fdo#112271] / [i915#895]) -> [FAIL][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@gem_exec_suspend@basic-s3.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-n2820/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [DMESG-WARN][135] ([i915#289]) -> [SKIP][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - fi-blb-e6850:       [SKIP][137] ([fdo#109271]) -> [FAIL][138] +18 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-blb-e6850/igt@i915_pm_rps@basic-api.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-blb-e6850/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small:
    - fi-bdw-5557u:       [SKIP][139] ([fdo#109271]) -> [FAIL][140] +7 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-byt-n2820:       [SKIP][141] ([fdo#109271]) -> [FAIL][142] +9 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@kms_busy@basic-flip-pipe-c.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-n2820/igt@kms_busy@basic-flip-pipe-c.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         [SKIP][143] ([fdo#109271] / [fdo#111827]) -> [FAIL][144] +8 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        [SKIP][145] ([fdo#109271] / [fdo#111827]) -> [FAIL][146] +8 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-whl-u:           [SKIP][147] ([fdo#109271] / [fdo#111827]) -> [FAIL][148] +8 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-7500u:       [DMESG-WARN][149] ([IGT#4] / [i915#62] / [i915#74] / [i915#92]) -> [FAIL][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-icl-u2:          [DMESG-WARN][151] ([IGT#4] / [i915#263]) -> [FAIL][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-cml-u2:          [DMESG-WARN][153] ([IGT#4]) -> [FAIL][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][155] ([fdo#109284] / [fdo#111827]) -> [FAIL][156] +8 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-guc:         [SKIP][157] ([fdo#109271] / [fdo#111827]) -> [FAIL][158] +8 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-bwr-2160:        [SKIP][159] ([fdo#109271] / [fdo#111827]) -> [FAIL][160] +8 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       [SKIP][161] ([fdo#109271] / [fdo#111827]) -> [FAIL][162] +8 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][163] ([fdo#109284] / [fdo#111827]) -> [FAIL][164] +8 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         [SKIP][165] ([fdo#109271] / [fdo#111827]) -> [FAIL][166] +8 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-byt-n2820:       [SKIP][167] ([fdo#109271] / [fdo#111827]) -> [FAIL][168] +8 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@kms_chamelium@dp-edid-read.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-byt-n2820/igt@kms_chamelium@dp-edid-read.html
    - fi-icl-guc:         [SKIP][169] ([fdo#109284] / [fdo#111827]) -> [FAIL][170] +8 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-elk-e7500:       [SKIP][171] ([fdo#109271] / [fdo#111827]) -> [FAIL][172] +8 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         [SKIP][173] ([fdo#109271] / [fdo#111827]) -> [FAIL][174] +8 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cml-s:           [SKIP][175] ([fdo#109284] / [fdo#111827]) -> [FAIL][176] +8 similar issues
   [175]: https:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16212/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
