Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B31F28BDC62
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 09:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE5C10EE31;
	Tue,  7 May 2024 07:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3327D10EE31;
 Tue,  7 May 2024 07:26:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5819088662437740095=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/hdcp=3A_Disable_HD?=
 =?utf-8?q?CP_Line_Rekeying_for_HDCP2=2E2_on_HDMI_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 May 2024 07:26:41 -0000
Message-ID: <171506680120.1960922.15496445145696199784@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240416033918.567386-2-suraj.kandpal@intel.com>
In-Reply-To: <20240416033918.567386-2-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5819088662437740095==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI (rev7)
URL   : https://patchwork.freedesktop.org/series/132479/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14716 -> Patchwork_132479v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132479v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132479v7, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/index.html

Participating hosts (38 -> 41)
------------------------------

  Additional (5): bat-dg1-7 fi-glk-j4005 fi-elk-e7500 fi-kbl-8809g bat-mtlp-6 
  Missing    (2): bat-arls-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132479v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-j4005:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-modeset@d-dp6:
    - {bat-mtlp-9}:       [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html

  
Known issues
------------

  Here are the changes found in Patchwork_132479v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-6:         NOTRUN -> [SKIP][4] ([i915#9318])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-mtlp-6:         NOTRUN -> [SKIP][5] ([i915#1849] / [i915#2582])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@fbdev@info.html

  * igt@fbdev@write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][6] ([i915#2582]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@fbdev@write.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][11] ([i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][12] ([i915#4083])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_mmap@basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][13] ([i915#4083])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][14] ([i915#4077]) +2 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#4077]) +2 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][16] ([i915#4079]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_tiled_pread_basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][17] ([i915#4079]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][18] ([i915#6621])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][19] ([i915#6621])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][20] ([i915#4212] / [i915#9792]) +8 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][21] ([i915#4212]) +7 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][22] ([i915#5190] / [i915#9792])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][23] ([i915#4215])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][24] +10 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][25] ([i915#4103] / [i915#4213]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][26] ([i915#9792]) +17 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][27] ([i915#3555] / [i915#3840])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         NOTRUN -> [SKIP][28] ([i915#3637] / [i915#9792]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][29] +30 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-7:          NOTRUN -> [SKIP][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][31] ([i915#5274] / [i915#9792])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][32] ([i915#4342] / [i915#5354] / [i915#9792])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-7:          NOTRUN -> [SKIP][33] ([i915#433])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-7:          NOTRUN -> [SKIP][34] ([i915#5354])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][35] ([i915#5354] / [i915#9792])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][36] +24 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-mtlp-6:         NOTRUN -> [SKIP][37] ([i915#1072] / [i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][38] ([i915#1072] / [i915#9732]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][39] ([i915#3555] / [i915#8809] / [i915#9792])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          NOTRUN -> [SKIP][40] ([i915#3555])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][41] ([i915#3708]) +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][42] ([i915#3708] / [i915#9792])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][43] ([i915#3708] / [i915#4077]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][44] ([i915#3708] / [i915#4077]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-read:
    - bat-mtlp-6:         NOTRUN -> [SKIP][45] ([i915#3708]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][46] ([i915#10216] / [i915#3708])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {bat-apl-1}:        [DMESG-WARN][47] ([i915#10900] / [i915#8585]) -> [PASS][48] +1 other test pass
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@debugfs_test@read_all_entries.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - {bat-apl-1}:        [DMESG-WARN][49] ([i915#180] / [i915#1982] / [i915#8585]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@requests:
    - {bat-apl-1}:        [DMESG-WARN][51] ([i915#10900]) -> [PASS][52] +41 other tests pass
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@i915_selftest@live@requests.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - {bat-apl-1}:        [DMESG-WARN][53] ([i915#10435] / [i915#10900]) -> [PASS][54] +34 other tests pass
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_busy@basic@flip:
    - {bat-apl-1}:        [DMESG-WARN][55] ([i915#180] / [i915#1982]) -> [PASS][56] +1 other test pass
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_busy@basic@flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-apl-1}:        [DMESG-WARN][57] ([i915#10435] / [i915#180]) -> [PASS][58] +1 other test pass
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - {bat-apl-1}:        [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +24 other tests pass
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7:
    - {bat-mtlp-9}:       [FAIL][61] ([i915#6121]) -> [PASS][62] +7 other tests pass
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-apl-1}:        [DMESG-WARN][63] ([i915#180] / [i915#8585]) -> [PASS][64] +8 other tests pass
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10900]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10900
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#8585]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14716 -> Patchwork_132479v7

  CI-20190529: 20190529
  CI_DRM_14716: 980de4c8f9c4fc65bd51d355372e06dc576c3ea7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7835: 4b767566bbc6c3ac342b54620aec0fabc8cdd4bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132479v7: 980de4c8f9c4fc65bd51d355372e06dc576c3ea7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/index.html

--===============5819088662437740095==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132479/">https://patchwork.freedesktop.org/series/132479/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14716 -&gt; Patchwork_132479v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132479v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132479v7, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/index.html</p>
<h2>Participating hosts (38 -&gt; 41)</h2>
<p>Additional (5): bat-dg1-7 fi-glk-j4005 fi-elk-e7500 fi-kbl-8809g bat-mtlp-6 <br />
  Missing    (2): bat-arls-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132479v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@i915_selftest@live@execlists.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@d-dp6:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132479v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433">i915#433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +3 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10900">i915#10900</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@debugfs_test@read_all_entries.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@i915_selftest@live@requests.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10900">i915#10900</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@i915_selftest@live@requests.html">PASS</a> +41 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10900">i915#10900</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> +34 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14716/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132479v7/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14716 -&gt; Patchwork_132479v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14716: 980de4c8f9c4fc65bd51d355372e06dc576c3ea7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7835: 4b767566bbc6c3ac342b54620aec0fabc8cdd4bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132479v7: 980de4c8f9c4fc65bd51d355372e06dc576c3ea7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5819088662437740095==--
