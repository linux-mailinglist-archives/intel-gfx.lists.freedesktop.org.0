Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0846B8493A6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 07:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478A71123B6;
	Mon,  5 Feb 2024 06:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761A41123B6;
 Mon,  5 Feb 2024 06:02:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1562447055022882940=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Cursor_Fault_Fixes_=28rev2?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 06:02:54 -0000
Message-ID: <170711297448.1023984.5740327258273939502@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240205043147.3632165-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240205043147.3632165-1-chaitanya.kumar.borah@intel.com>
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

--===============1562447055022882940==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Cursor Fault Fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/129517/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14217 -> Patchwork_129517v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129517v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129517v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/index.html

Participating hosts (34 -> 32)
------------------------------

  Missing    (2): bat-mtlp-8 bat-adls-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129517v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-all:
    - bat-adlp-9:         [PASS][1] -> [DMESG-WARN][2] +81 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-9/igt@gem_sync@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-9/igt@gem_sync@basic-all.html

  * igt@gem_wait@wait@all-engines:
    - bat-adlp-6:         [PASS][3] -> [DMESG-WARN][4] +95 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-6/igt@gem_wait@wait@all-engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-6/igt@gem_wait@wait@all-engines.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-nick:        [PASS][5] -> [DMESG-WARN][6] +68 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [PASS][7] -> [DMESG-WARN][8] +73 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-8/igt@i915_selftest@live@client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-8/igt@i915_selftest@live@client.html
    - fi-kbl-guc:         [PASS][9] -> [DMESG-WARN][10] +42 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-guc/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@evict:
    - fi-pnv-d510:        [PASS][11] -> [DMESG-WARN][12] +84 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-pnv-d510/igt@i915_selftest@live@evict.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-pnv-d510/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][13] -> [DMESG-WARN][14] +58 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][15] -> [DMESG-WARN][16] +60 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - bat-mtlp-6:         [PASS][17] -> [DMESG-WARN][18] +43 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][19] -> [DMESG-WARN][20] +58 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - fi-ivb-3770:        [PASS][21] -> [DMESG-WARN][22] +61 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          NOTRUN -> [DMESG-WARN][23] +75 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][24] +42 other tests dmesg-warn
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][25] -> [DMESG-WARN][26] +65 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-11/igt@i915_selftest@live@perf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][27] -> [DMESG-WARN][28] +43 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-x1275/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][29] -> [DMESG-WARN][30] +73 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][31] -> [DMESG-WARN][32] +77 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][33] -> [DMESG-WARN][34] +57 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@vma:
    - fi-skl-guc:         [PASS][35] -> [DMESG-WARN][36] +61 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-guc/igt@i915_selftest@live@vma.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-guc/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-blb-e6850:       [PASS][37] -> [DMESG-WARN][38] +59 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-blb-e6850/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-blb-e6850/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - bat-jsl-3:          [PASS][39] -> [DMESG-WARN][40] +75 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-glk-j4005:       [PASS][41] -> [DMESG-WARN][42] +62 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_dsc@dsc-basic@pipe-a-dp-1:
    - bat-dg2-9:          [PASS][43] -> [DMESG-WARN][44] +69 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-apl-guc:         [PASS][45] -> [DMESG-WARN][46] +67 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - bat-dg1-7:          [PASS][47] -> [DMESG-WARN][48] +65 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:
    - bat-rplp-1:         [PASS][49] -> [DMESG-WARN][50] +77 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       [PASS][51] -> [DMESG-WARN][52] +71 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-hdmi-a-2:
    - bat-dg2-11:         NOTRUN -> [DMESG-WARN][53] +1 other test dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-hdmi-a-2.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-adln-1:         [PASS][54] -> [DMESG-WARN][55] +72 other tests dmesg-warn
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - {bat-dg2-13}:       [PASS][56] -> [DMESG-WARN][57] +4 other tests dmesg-warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-13/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-13/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:
    - {bat-dg2-14}:       [PASS][58] -> [DMESG-WARN][59] +73 other tests dmesg-warn
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
    - {bat-arls-2}:       [PASS][60] -> [DMESG-WARN][61] +43 other tests dmesg-warn
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-arls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-arls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html

  * {igt@kms_psr@psr-cursor-plane-move@edp-1}:
    - bat-adln-1:         [PASS][62] -> [DMESG-WARN][63] +1 other test dmesg-warn
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html
    - bat-jsl-1:          NOTRUN -> [DMESG-WARN][64] +2 other tests dmesg-warn
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html
    - fi-skl-6600u:       [PASS][65] -> [DMESG-WARN][66] +1 other test dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move@edp-1.html

  * {igt@kms_psr@psr-primary-mmap-gtt@edp-1}:
    - bat-adlp-6:         [PASS][67] -> [DMESG-WARN][68] +3 other tests dmesg-warn
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * {igt@kms_psr@psr-primary-page-flip@edp-1}:
    - bat-jsl-3:          [PASS][69] -> [DMESG-WARN][70] +3 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-3/igt@kms_psr@psr-primary-page-flip@edp-1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-3/igt@kms_psr@psr-primary-page-flip@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129517v2 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-tgl-1115g4:      [FAIL][71] ([i915#8293]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-tgl-1115g4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/boot.html
    - bat-jsl-1:          [FAIL][73] ([i915#8293]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][75] ([i915#9318])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][76] ([i915#9318])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][77] ([i915#1849] / [i915#2582])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][78] ([i915#2582]) +3 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@fbdev@nullptr.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][79] ([i915#2190])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][80] ([i915#2190])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][81] ([i915#4613]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][82] ([i915#4613]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][83] -> [DMESG-WARN][84] ([i915#1982]) +1 other test dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][85] -> [DMESG-WARN][86] ([i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-apl-guc/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-apl-guc/igt@i915_module_load@reload.html
    - bat-rplp-1:         [PASS][87] -> [DMESG-WARN][88] ([i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-rplp-1/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-rplp-1/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][89] -> [DMESG-WARN][90] ([i915#1982])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-9/igt@i915_module_load@reload.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-9/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][91] -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8109u/igt@i915_module_load@reload.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8109u/igt@i915_module_load@reload.html
    - bat-adln-1:         [PASS][93] -> [DMESG-WARN][94] ([i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@i915_module_load@reload.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@i915_module_load@reload.html

  * igt@kms_busy@basic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][95] ([i915#10158] / [i915#4303])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][96] ([i915#4103]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][97] ([i915#10158]) +15 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][98] ([i915#3555] / [i915#9886])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - bat-adlp-9:         [PASS][99] -> [DMESG-WARN][100] ([i915#1982])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-bsw-nick:        [PASS][101] -> [DMESG-WARN][102] ([i915#1982])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][103] ([i915#3637]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][104] ([fdo#109285])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][105] ([fdo#109285])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][106] ([i915#1849])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][107] ([i915#9812])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-dg2-8:          [PASS][108] -> [DMESG-WARN][109] ([i915#1982])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][110] ([i915#3555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][111] ([i915#3555])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][112] ([fdo#109295] / [i915#10158])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#10158]: https://gitlab.freedesktop.org/drm/intel/issues/10158
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14217 -> Patchwork_129517v2

  CI-20190529: 20190529
  CI_DRM_14217: c0cd32d2c1404e5c1218a158e47e6a580e098b61 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129517v2: c0cd32d2c1404e5c1218a158e47e6a580e098b61 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fe63751bfc83 drm/i915: do not defer cleanup work
ba02bef8e3ed drm/i915: Add sanity checks before accessing fb buffer object
a7c2005cdca3 drm/i915: do not destroy plane state if cursor unpin worker is scheduled
d6eff81eece7 drm/i915: Use the same vblank worker for atomic unpin
46c4091f737b drm/i915: Use vblank worker to unpin old legacy cursor fb safely
db3d4bd345a2 drm: Add drm_vblank_work_flush_all().

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/index.html

--===============1562447055022882940==
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
<tr><td><b>Series:</b></td><td>Cursor Fault Fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129517/">https://patchwork.freedesktop.org/series/129517/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14217 -&gt; Patchwork_129517v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129517v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129517v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/index.html</p>
<h2>Participating hosts (34 -&gt; 32)</h2>
<p>Missing    (2): bat-mtlp-8 bat-adls-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129517v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-9/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-9/igt@gem_sync@basic-all.html">DMESG-WARN</a> +81 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all-engines:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-6/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-6/igt@gem_wait@wait@all-engines.html">DMESG-WARN</a> +95 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +68 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +73 other tests dmesg-warn</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-pnv-d510/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-pnv-d510/igt@i915_selftest@live@evict.html">DMESG-WARN</a> +84 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +58 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +60 other tests dmesg-warn</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +58 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +61 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +75 other tests dmesg-warn</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +65 other tests dmesg-warn</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +73 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +77 other tests dmesg-warn</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +57 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-guc/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +61 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +59 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a> +75 other tests dmesg-warn</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a> +62 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic@pipe-a-dp-1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">DMESG-WARN</a> +69 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> +67 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">DMESG-WARN</a> +65 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">DMESG-WARN</a> +77 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">DMESG-WARN</a> +71 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-hdmi-a-2:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-hdmi-a-2.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> +72 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-13/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-13/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:</p>
<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html">DMESG-WARN</a> +73 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-arls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-arls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-cursor-plane-move@edp-1}:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move@edp-1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-primary-mmap-gtt@edp-1}:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-primary-page-flip@edp-1}:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-3/igt@kms_psr@psr-primary-page-flip@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-3/igt@kms_psr@psr-primary-page-flip@edp-1.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129517v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-tgl-1115g4/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/boot.html">PASS</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-rplp-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-cfl-8109u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adln-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adln-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10158">i915#10158</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10158">i915#10158</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14217/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129517v2/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10158">i915#10158</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14217 -&gt; Patchwork_129517v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14217: c0cd32d2c1404e5c1218a158e47e6a580e098b61 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129517v2: c0cd32d2c1404e5c1218a158e47e6a580e098b61 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fe63751bfc83 drm/i915: do not defer cleanup work<br />
ba02bef8e3ed drm/i915: Add sanity checks before accessing fb buffer object<br />
a7c2005cdca3 drm/i915: do not destroy plane state if cursor unpin worker is scheduled<br />
d6eff81eece7 drm/i915: Use the same vblank worker for atomic unpin<br />
46c4091f737b drm/i915: Use vblank worker to unpin old legacy cursor fb safely<br />
db3d4bd345a2 drm: Add drm_vblank_work_flush_all().</p>

</body>
</html>

--===============1562447055022882940==--
