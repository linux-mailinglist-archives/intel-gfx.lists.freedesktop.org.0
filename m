Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC298736B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 14:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0AD890BB;
	Thu, 26 Sep 2024 12:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1461410EB11;
 Thu, 26 Sep 2024 12:18:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8153086668672166203=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Add_FEC_Enab?=
 =?utf-8?q?le_Retry_mechanism?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2024 12:18:42 -0000
Message-ID: <172735312207.1106867.5124522907394346204@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
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

--===============8153086668672166203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Add FEC Enable Retry mechanism
URL   : https://patchwork.freedesktop.org/series/138963/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15446 -> Patchwork_138963v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_138963v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138963v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): bat-dg1-7 
  Missing    (3): bat-arls-2 bat-rpls-4 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138963v1:

### IGT changes ###

#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-twl-2:          [SKIP][1] ([i915#11731]) -> [SKIP][2] +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-twl-1:          [SKIP][3] ([i915#11731]) -> [SKIP][4] +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_138963v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][5] ([i915#4083])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][6] ([i915#4077]) +2 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][7] ([i915#4079]) +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][8] ([i915#6621])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-apl-1:          [PASS][9] -> [DMESG-WARN][10] ([i915#11621]) +46 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][11] ([i915#4212]) +7 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][12] ([i915#4215])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_busy@basic@flip:
    - bat-apl-1:          [PASS][13] -> [DMESG-WARN][14] ([i915#180] / [i915#1982]) +4 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#4103] / [i915#4213]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][16] ([i915#3555] / [i915#3840])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - bat-apl-1:          [PASS][17] -> [DMESG-WARN][18] ([i915#11621] / [i915#180]) +32 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - bat-apl-1:          [PASS][19] -> [DMESG-WARN][20] ([i915#11621] / [i915#180] / [i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-7:          NOTRUN -> [SKIP][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-7:          NOTRUN -> [SKIP][22] ([i915#433])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-kbl-8809g:       [PASS][23] -> [SKIP][24] +4 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-apl-1:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +9 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-7:          NOTRUN -> [SKIP][27] ([i915#5354])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][28] ([i915#1072] / [i915#9732]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-7:          NOTRUN -> [SKIP][29] ([i915#3555])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][30] ([i915#3708]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][31] ([i915#3708] / [i915#4077]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       [DMESG-WARN][32] ([i915#10462]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@info:
    - fi-kbl-8809g:       [SKIP][34] ([i915#1849]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@fbdev@info.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@fbdev@info.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][36] ([i915#12216]) -> [PASS][37] +1 other test pass
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-mtlp-8/igt@i915_selftest@live.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [INCOMPLETE][38] ([i915#9413]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@i915_selftest@live.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [INCOMPLETE][40] ([i915#10886] / [i915#9413]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-kbl-8809g:       [SKIP][42] -> [PASS][43] +22 other tests pass
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - fi-kbl-8809g:       [FAIL][44] ([i915#12288]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@bo-too-small:
    - fi-kbl-8809g:       [FAIL][46] ([i915#12290]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       [FAIL][48] ([i915#12289]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       [DMESG-FAIL][50] ([i915#12287]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       [DMESG-WARN][52] ([i915#12287]) -> [PASS][53] +1 other test pass
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-8809g:       [FAIL][54] ([IGT#3]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@gem_mmap@basic:
    - bat-arls-1:         [SKIP][56] ([i915#4083]) -> [SKIP][57] ([i915#11343] / [i915#4083])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-1/igt@gem_mmap@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-1/igt@gem_mmap@basic.html
    - bat-arls-5:         [SKIP][58] ([i915#4083]) -> [SKIP][59] ([i915#11343] / [i915#4083])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@gem_mmap@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@gem_mmap@basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-apl-1:          [DMESG-WARN][60] ([i915#11621]) -> [DMESG-WARN][61] ([i915#11621] / [i915#180])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-WARN][62] ([i915#10341] / [i915#12133]) -> [ABORT][63] ([i915#12061] / [i915#12133])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@i915_selftest@live.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-WARN][64] ([i915#10341] / [i915#11637]) -> [ABORT][65] ([i915#12061])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10462]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10462
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12287]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12287
  [i915#12288]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12288
  [i915#12289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12289
  [i915#12290]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12290
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
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
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_15446 -> Patchwork_138963v1

  CI-20190529: 20190529
  CI_DRM_15446: 6b498b1015e38b1b7dbd1c7e3ab0a9be5d48f4da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8032: 8032
  Patchwork_138963v1: 6b498b1015e38b1b7dbd1c7e3ab0a9be5d48f4da @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/index.html

--===============8153086668672166203==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Add FEC Enable Retry mechanism</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138963/">https://patchwork.freedesktop.org/series/138963/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15446 -&gt; Patchwork_138963v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_138963v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138963v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): bat-dg1-7 <br />
  Missing    (3): bat-arls-2 bat-rpls-4 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138963v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138963v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +46 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +32 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433">i915#433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +9 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10462">i915#10462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> +22 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12288">i915#12288</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12290">i915#12290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12289">i915#12289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12287">i915#12287</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12287">i915#12287</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15446/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15446 -&gt; Patchwork_138963v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15446: 6b498b1015e38b1b7dbd1c7e3ab0a9be5d48f4da @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8032: 8032<br />
  Patchwork_138963v1: 6b498b1015e38b1b7dbd1c7e3ab0a9be5d48f4da @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8153086668672166203==--
