Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241DB49786
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 19:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D24410E198;
	Mon,  8 Sep 2025 17:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD1C10E198;
 Mon,  8 Sep 2025 17:48:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0697829079692123496=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Miscellaneous_fixe?=
 =?utf-8?q?s_in_drm_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Sep 2025 17:48:15 -0000
Message-ID: <175735369511.313432.11084373277977850276@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1756995162.git.krzysztof.karas@intel.com>
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
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

--===============0697829079692123496==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Miscellaneous fixes in drm code
URL   : https://patchwork.freedesktop.org/series/154173/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17150 -> Patchwork_154173v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_154173v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154173v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154173v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         [PASS][1] -> [FAIL][2] +15 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] +11 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - fi-ilk-650:         [PASS][5] -> [FAIL][6] +11 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8] +27 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-mtlp-8:         [PASS][9] -> [FAIL][10] +19 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:
    - bat-adls-6:         [PASS][11] -> [FAIL][12] +19 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
    - bat-rpls-4:         [PASS][13] -> [FAIL][14] +35 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp1:
    - bat-dg2-9:          [PASS][15] -> [FAIL][16] +19 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
    - fi-tgl-1115g4:      [PASS][17] -> [FAIL][18] +19 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20] +15 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-dg2-14:         [PASS][21] -> [FAIL][22] +35 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-adlp-6:         [PASS][23] -> [FAIL][24] +37 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - fi-bsw-n3050:       [PASS][25] -> [FAIL][26] +7 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - bat-twl-2:          [PASS][27] -> [FAIL][28] +15 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - bat-dg1-7:          [PASS][29] -> [FAIL][30] +19 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - fi-hsw-4770:        [PASS][31] -> [FAIL][32] +15 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
    - fi-ivb-3770:        [PASS][33] -> [FAIL][34] +15 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
    - fi-elk-e7500:       [PASS][35] -> [FAIL][36] +19 other tests fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - bat-jsl-1:          [PASS][37] -> [FAIL][38] +16 other tests fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-jsl-1/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:
    - bat-arls-5:         [PASS][39] -> [FAIL][40] +19 other tests fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:
    - bat-mtlp-9:         NOTRUN -> [FAIL][41] +43 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - bat-adlp-9:         [PASS][42] -> [FAIL][43] +25 other tests fail
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
    - bat-apl-1:          [PASS][44] -> [FAIL][45] +17 other tests fail
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - bat-twl-1:          [PASS][46] -> [FAIL][47] +11 other tests fail
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
    - bat-arls-6:         [PASS][48] -> [FAIL][49] +19 other tests fail
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - fi-kbl-7567u:       [PASS][50] -> [FAIL][51] +15 other tests fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - fi-glk-j4005:       [PASS][52] -> [FAIL][53] +15 other tests fail
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - bat-dg2-8:          [PASS][54] -> [FAIL][55] +19 other tests fail
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_flip@basic-plain-flip@c-edp1:
    - fi-skl-6600u:       [PASS][56] -> [FAIL][57] +15 other tests fail
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][58] -> [FAIL][59] +24 other tests fail
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1:
    - bat-rplp-1:         [PASS][60] -> [FAIL][61] +28 other tests fail
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-rplp-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-rplp-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_154173v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-mtlp-9:         NOTRUN -> [SKIP][62] ([i915#4613]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-mtlp-9:         NOTRUN -> [SKIP][63] ([i915#4083])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-9:         NOTRUN -> [SKIP][64] ([i915#4079]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-mtlp-9:         NOTRUN -> [SKIP][65] ([i915#4077]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-9:         NOTRUN -> [SKIP][66] ([i915#11681] / [i915#6621])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-dg2-11:         NOTRUN -> [ABORT][67] ([i915#14201])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][68] -> [DMESG-FAIL][69] ([i915#12061]) +1 other test dmesg-fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         NOTRUN -> [DMESG-FAIL][70] ([i915#12061])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-read:
    - bat-mtlp-9:         NOTRUN -> [SKIP][71] ([i915#7707]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-9:         NOTRUN -> [SKIP][72] ([i915#5190])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-9:         NOTRUN -> [SKIP][73] ([i915#4212]) +8 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-mtlp-9:         NOTRUN -> [SKIP][74] ([i915#4213]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-mtlp-9:         NOTRUN -> [SKIP][75] ([i915#3555] / [i915#3840] / [i915#9159])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-9:         NOTRUN -> [SKIP][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-9:         NOTRUN -> [SKIP][77] ([i915#4077] / [i915#9688]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-9:         NOTRUN -> [SKIP][78] ([i915#3555] / [i915#8809])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-gtt:
    - bat-mtlp-9:         NOTRUN -> [SKIP][79] ([i915#3708] / [i915#4077]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-mtlp-9:         NOTRUN -> [SKIP][80] ([i915#3708]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-9:         NOTRUN -> [SKIP][81] ([i915#10216] / [i915#3708])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [ABORT][82] ([i915#13494]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-mtlp-9/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][84] ([i915#14803] / [i915#14838]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arlh-2/igt@i915_selftest@live.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@execlists:
    - bat-arlh-2:         [INCOMPLETE][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arlh-2/igt@i915_selftest@live@execlists.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arlh-2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@uncore:
    - bat-dg2-11:         [ABORT][88] ([i915#14201]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@i915_selftest@live@uncore.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@uncore.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-11:         [ABORT][90] ([i915#14201]) -> [ABORT][91] ([i915#12061])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@i915_selftest@live.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live.html

  
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14803]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803
  [i915#14838]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688


Build changes
-------------

  * Linux: CI_DRM_17150 -> Patchwork_154173v1

  CI-20190529: 20190529
  CI_DRM_17150: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8524: 8524
  Patchwork_154173v1: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/index.html

--===============0697829079692123496==
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
<tr><td><b>Series:</b></td><td>drm: Miscellaneous fixes in drm code</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154173/">https://patchwork.freedesktop.org/series/154173/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17150 -&gt; Patchwork_154173v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_154173v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154173v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154173v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">FAIL</a> +11 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">FAIL</a> +11 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html">FAIL</a> +27 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">FAIL</a> +35 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +15 other tests fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +35 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +37 other tests fail</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +15 other tests fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +15 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-jsl-1/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">FAIL</a> +16 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">FAIL</a> +43 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">FAIL</a> +25 other tests fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html">FAIL</a> +17 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html">FAIL</a> +11 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a2:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-edp1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">FAIL</a> +24 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-rplp-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-rplp-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-edp-1.html">FAIL</a> +28 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154173v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@guc_multi_lrc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803">i915#14803</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838">i915#14838</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arlh-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-arlh-2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-arlh-2/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v1/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17150 -&gt; Patchwork_154173v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17150: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8524: 8524<br />
  Patchwork_154173v1: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0697829079692123496==--
