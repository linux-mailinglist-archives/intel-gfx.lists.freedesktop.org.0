Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18E7B50471
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 19:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C72710E33A;
	Tue,  9 Sep 2025 17:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C0010E339;
 Tue,  9 Sep 2025 17:27:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7499649326448255735=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Miscellaneous_fixe?=
 =?utf-8?q?s_in_drm_code_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Sep 2025 17:27:57 -0000
Message-ID: <175743887798.318924.17793456776264983442@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1757416325.git.krzysztof.karas@intel.com>
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
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

--===============7499649326448255735==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Miscellaneous fixes in drm code (rev2)
URL   : https://patchwork.freedesktop.org/series/154173/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17161 -> Patchwork_154173v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_154173v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154173v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154173v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         [PASS][1] -> [FAIL][2] +15 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] +11 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - fi-ilk-650:         [PASS][5] -> [FAIL][6] +11 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8] +27 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-mtlp-8:         [PASS][9] -> [FAIL][10] +19 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
    - bat-jsl-1:          [PASS][11] -> [FAIL][12] +18 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:
    - bat-adls-6:         [PASS][13] -> [FAIL][14] +19 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
    - bat-rpls-4:         [PASS][15] -> [FAIL][16] +35 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp1:
    - bat-dg2-9:          [PASS][17] -> [FAIL][18] +19 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
    - fi-tgl-1115g4:      [PASS][19] -> [FAIL][20] +19 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       [PASS][21] -> [FAIL][22] +15 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-dg2-14:         [PASS][23] -> [FAIL][24] +35 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-adlp-6:         [PASS][25] -> [FAIL][26] +35 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - fi-bsw-n3050:       [PASS][27] -> [FAIL][28] +7 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - bat-twl-2:          [PASS][29] -> [FAIL][30] +15 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - bat-dg1-7:          [PASS][31] -> [FAIL][32] +19 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - fi-hsw-4770:        [PASS][33] -> [FAIL][34] +15 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
    - fi-ivb-3770:        [PASS][35] -> [FAIL][36] +15 other tests fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
    - fi-elk-e7500:       [PASS][37] -> [FAIL][38] +19 other tests fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:
    - bat-arls-5:         [PASS][39] -> [FAIL][40] +19 other tests fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:
    - bat-mtlp-9:         [PASS][41] -> [FAIL][42] +41 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - bat-adlp-9:         [PASS][43] -> [FAIL][44] +27 other tests fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
    - bat-apl-1:          [PASS][45] -> [FAIL][46] +15 other tests fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - bat-twl-1:          [PASS][47] -> [FAIL][48] +10 other tests fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html
    - bat-rplp-1:         [PASS][49] -> [FAIL][50] +25 other tests fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
    - bat-arls-6:         [PASS][51] -> [FAIL][52] +19 other tests fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@b-edp1:
    - bat-arlh-3:         [PASS][53] -> [FAIL][54] +19 other tests fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - fi-glk-j4005:       [PASS][55] -> [FAIL][56] +15 other tests fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - bat-dg2-8:          [PASS][57] -> [FAIL][58] +19 other tests fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_flip@basic-plain-flip@c-edp1:
    - fi-skl-6600u:       [PASS][59] -> [FAIL][60] +16 other tests fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][61] -> [FAIL][62] +29 other tests fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
Known issues
------------

  Here are the changes found in Patchwork_154173v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][63] -> [DMESG-FAIL][64] ([i915#12061]) +1 other test dmesg-fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][65] -> [DMESG-FAIL][66] ([i915#12061]) +1 other test dmesg-fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-mtlp-9:         [PASS][67] -> [FAIL][68] ([i915#10826]) +1 other test fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-arls-6:         [PASS][69] -> [SKIP][70] ([i915#11190]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - fi-glk-j4005:       [ABORT][71] ([i915#12904]) -> [PASS][72] +1 other test pass
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@dmabuf@all-tests.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@dmabuf@all-tests.html
    - bat-apl-1:          [ABORT][73] ([i915#12904]) -> [PASS][74] +1 other test pass
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@dmabuf@all-tests.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][75] ([i915#12061]) -> [PASS][76] +1 other test pass
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-arlh-2:         [DMESG-FAIL][77] ([i915#12061]) -> [PASS][78] +1 other test pass
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][79] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][80] ([i915#12061] / [i915#14204])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][81] ([i915#13929]) -> [DMESG-FAIL][82] ([i915#14204])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live@mman.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - fi-kbl-7567u:       [DMESG-WARN][83] ([i915#13735] / [i915#13890] / [i915#180]) -> [DMESG-FAIL][84] ([i915#180]) +15 other tests dmesg-fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html

  
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180


Build changes
-------------

  * Linux: CI_DRM_17161 -> Patchwork_154173v2

  CI-20190529: 20190529
  CI_DRM_17161: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8526: 13cd231d5da440137bc5d1c26fd3f7c170ace253 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_154173v2: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html

--===============7499649326448255735==
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
<tr><td><b>Series:</b></td><td>drm: Miscellaneous fixes in drm code (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154173/">https://patchwork.freedesktop.org/series/154173/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17161 -&gt; Patchwork_154173v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_154173v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154173v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154173v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">FAIL</a> +11 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">FAIL</a> +11 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html">FAIL</a> +27 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">FAIL</a> +19 other tests fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">FAIL</a> +18 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">FAIL</a> +35 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +15 other tests fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +35 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +35 other tests fail</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +15 other tests fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +15 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">FAIL</a> +41 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">FAIL</a> +27 other tests fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html">FAIL</a> +10 other tests fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html">FAIL</a> +25 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a2:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-edp1:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">FAIL</a> +15 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> +19 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-edp1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html">FAIL</a> +16 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">FAIL</a> +29 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154173v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +15 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17161 -&gt; Patchwork_154173v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17161: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8526: 13cd231d5da440137bc5d1c26fd3f7c170ace253 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_154173v2: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7499649326448255735==--
