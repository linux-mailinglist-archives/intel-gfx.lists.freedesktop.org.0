Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26751220F15
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 16:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7F96EB71;
	Wed, 15 Jul 2020 14:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C57A6EB70;
 Wed, 15 Jul 2020 14:20:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34EA7A3ECB;
 Wed, 15 Jul 2020 14:20:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 14:20:46 -0000
Message-ID: <159482284621.3437.4719939673879019377@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/66=5D_drm/i915=3A_Reduce_i915=5Frequest?=
 =?utf-8?q?=2Elock_contention_for_i915=5Frequest=5Fwait?=
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
Content-Type: multipart/mixed; boundary="===============0934284006=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0934284006==
Content-Type: multipart/alternative;
 boundary="===============5989493607270169976=="

--===============5989493607270169976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait
URL   : https://patchwork.freedesktop.org/series/79517/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8750 -> Patchwork_18177
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18177 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18177, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18177:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cml-s/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-y/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-whl-u:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-whl-u/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-whl-u/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-ehl-1/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_18177 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][25] -> [FAIL][26] ([i915#1888]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][27] -> [DMESG-WARN][28] ([i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@gem_flink_basic@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][31] -> [INCOMPLETE][32] ([i915#794])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-apl-guc:         [PASS][33] -> [INCOMPLETE][34] ([i915#1635])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][35] -> [INCOMPLETE][36] ([i915#1795])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][37] -> [INCOMPLETE][38] ([i915#794])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][39] -> [INCOMPLETE][40] ([i915#1795])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][41] -> [INCOMPLETE][42] ([i915#1795])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][43] -> [INCOMPLETE][44] ([i915#1795])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][45] -> [INCOMPLETE][46] ([i915#1635])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][47] -> [INCOMPLETE][48] ([i915#794])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][49] -> [INCOMPLETE][50] ([i915#794])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][51] -> [INCOMPLETE][52] ([i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][53] -> [INCOMPLETE][54] ([i915#794])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][55] -> [DMESG-WARN][56] ([i915#1982])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][57] -> [DMESG-WARN][58] ([i915#402])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-byt-j1900/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [DMESG-WARN][61] ([i915#1635] / [i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [DMESG-WARN][63] ([i915#402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-tgl-y:           [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [DMESG-FAIL][67] ([i915#1233]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][73] ([i915#402]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@vgem_basic@setversion.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][75] ([i915#62]) -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][77] ([i915#62] / [i915#92]) -> [DMESG-WARN][78] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][79] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][80] ([i915#62] / [i915#92]) +6 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8750 -> Patchwork_18177

  CI-20190529: 20190529
  CI_DRM_8750: 0714e0ca72205b9c38c4b2a09d8d5981637af2fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18177: 823526e73ba85199f5a978bd9ea6156bf852f3d6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

823526e73ba8 drm/i915/gem: Remove timeline nesting from snb relocs
b3c1e59841ea drm/i915/gt: Enable ring scheduling for gen6/7
87c21a67aa37 drm/i915/gt: Implement ring scheduler for gen6/7
863da3117a20 drm/i915/gt: Infrastructure for ring scheduling
2b5546dd8abd drm/i915/gt: Use client timeline address for seqno writes
f28f48cf03af drm/i915/gt: Support creation of 'internal' rings
6645f5fddc72 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
d23e78b07d59 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
09a11cb682d1 drm/i915: Move saturated workload detection to the GT
bb9eb77ea30a drm/i915: Replace the priority boosting for the display with a deadline
e27a7ce87a79 drm/i915/gt: Specify a deadline for the heartbeat
5dbb21007170 drm/i915: Fair low-latency scheduling
96a6eabdd904 drm/i915/gt: Remove timeslice suppression
cdaf10b00d13 drm/i915: Restructure priority inheritance
64cc265ade5a drm/i915: Teach the i915_dependency to use a double-lock
b8563a88df20 drm/i915/gt: Do not suspend bonded requests if one hangs
109dafe14a1a drm/i915: Replace engine->schedule() with a known request operation
ec6f07931628 drm/i915: Remove I915_USER_PRIORITY_SHIFT
657226e71789 drm/i915: Strip out internal priorities
e716fd9ed81d drm/i915: Lift waiter/signaler iterators
ff6f1d863327 drm/i915/gt: Convert stats.active to plain unsigned int
488c89851fae drm/i915/gt: Extract busy-stats for ring-scheduler
79b47cba6b9c drm/i915/gt: Drop atomic for engine->fw_active tracking
11f1bf554545 drm/i915/gt: ce->inflight updates are now serialised
08be9ee137a1 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
f0e7e4b98971 drm/i915/gt: Resubmit the virtual engine on schedule-out
ce7f6e2bf488 drm/i915/gt: Defer schedule_out until after the next dequeue
bf89b50c5a71 drm/i915/gt: Decouple inflight virtual engines
067ea4919a58 drm/i915/gt: Use virtual_engine during execlists_dequeue
bf6e26068597 drm/i915/gt: Free stale request on destroying the virtual engine
9fd59fa35cdc drm/i915/gt: Replace direct submit with direct call to tasklet
b1fba621ff00 drm/i915/gt: Check for a completed last request once
4ddd5ececb22 drm/i915/gt: Decouple completed requests on unwind
6296fe868377 drm/i915: Remove unused i915_gem_evict_vm()
0e4a431e2f5e drm/i915/gt: Push the wait for the context to bound to the request
7ef75aca0d57 drm/i915/gt: Acquire backing storage for the context
30196b1778f2 drm/i915: Specialise GGTT binding
009379133a04 drm/i915: Hold wakeref for the duration of the vma GGTT binding
0ca5333286a3 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
fe0b2e8f9867 drm/i915/gem: Pull execbuf dma resv under a single critical section
34f8c8b06fb1 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
a2d67581b7cc drm/i915/gem: Reintroduce multiple passes for reloc processing
d59dcbda945a drm/i915/gem: Include secure batch in common execbuf pinning
3994c1315802 drm/i915/gem: Include cmdparser in common execbuf pinning
289e4f21e37d drm/i915/gem: Bind the fence async for execbuf
8ed473e9ebb5 drm/i915/gem: Asynchronous GTT unbinding
82ed2ac041bb drm/i915/gem: Separate the ww_mutex walker into its own list
0ffcc361f56b drm/i915/gem: Assign context id for async work
03f0ac6d0aa7 drm/i915: Always defer fenced work to the worker
482c12431055 drm/i915: Add list_for_each_entry_safe_continue_reverse
b336351c77f1 drm/i915/gem: Remove the call for no-evict i915_vma_pin
bf7156efc5fe drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
a488eb2ac0c6 drm/i915/gem: Rename execbuf.bind_link to unbound_link
d9e5a405669b drm/i915/gem: Don't drop the timeline lock during execbuf
f62b56fc3c3f drm/i915: Switch to object allocations for page directories
7c20ceade654 drm/i915: Preallocate stashes for vma page-directories
63c73191100c drm/i915: Soften the tasklet flush frequency before waits
a938c15b20b3 drm/i915: Provide a fastpath for waiting on vma bindings
00c92cc2c921 drm/i915: Make the stale cached active node available for any timeline
383c7cbfc8d5 drm/i915: Keep the most recently used active-fence upon discard
8628c1a1b800 drm/i915: Export a preallocate variant of i915_active_acquire()
379852a0d374 drm/i915: Skip taking acquire mutex for no ref->active callback
e919aa95911c drm/i915: Add a couple of missing i915_active_fini()
6fa430293a65 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
13de08637a53 drm/i915: Remove i915_request.lock requirement for execution callbacks
91bde1c5e935 drm/i915: Reduce i915_request.lock contention for i915_request_wait

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/index.html

--===============5989493607270169976==
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
<tr><td><b>Series:</b></td><td>series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79517/">https://patchwork.freedesktop.org/series/79517/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8750 -&gt; Patchwork_18177</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18177 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18177, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18177:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-whl-u:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-whl-u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-whl-u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-cml-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18177 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-r/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-apl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-lmem/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-lmem/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1795">i915#1795</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1795">i915#1795</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1795">i915#1795</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1795">i915#1795</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18177/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8750 -&gt; Patchwork_18177</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8750: 0714e0ca72205b9c38c4b2a09d8d5981637af2fb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18177: 823526e73ba85199f5a978bd9ea6156bf852f3d6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>823526e73ba8 drm/i915/gem: Remove timeline nesting from snb relocs<br />
b3c1e59841ea drm/i915/gt: Enable ring scheduling for gen6/7<br />
87c21a67aa37 drm/i915/gt: Implement ring scheduler for gen6/7<br />
863da3117a20 drm/i915/gt: Infrastructure for ring scheduling<br />
2b5546dd8abd drm/i915/gt: Use client timeline address for seqno writes<br />
f28f48cf03af drm/i915/gt: Support creation of 'internal' rings<br />
6645f5fddc72 drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
d23e78b07d59 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
09a11cb682d1 drm/i915: Move saturated workload detection to the GT<br />
bb9eb77ea30a drm/i915: Replace the priority boosting for the display with a deadline<br />
e27a7ce87a79 drm/i915/gt: Specify a deadline for the heartbeat<br />
5dbb21007170 drm/i915: Fair low-latency scheduling<br />
96a6eabdd904 drm/i915/gt: Remove timeslice suppression<br />
cdaf10b00d13 drm/i915: Restructure priority inheritance<br />
64cc265ade5a drm/i915: Teach the i915_dependency to use a double-lock<br />
b8563a88df20 drm/i915/gt: Do not suspend bonded requests if one hangs<br />
109dafe14a1a drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
ec6f07931628 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
657226e71789 drm/i915: Strip out internal priorities<br />
e716fd9ed81d drm/i915: Lift waiter/signaler iterators<br />
ff6f1d863327 drm/i915/gt: Convert stats.active to plain unsigned int<br />
488c89851fae drm/i915/gt: Extract busy-stats for ring-scheduler<br />
79b47cba6b9c drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
11f1bf554545 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
08be9ee137a1 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
f0e7e4b98971 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
ce7f6e2bf488 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
bf89b50c5a71 drm/i915/gt: Decouple inflight virtual engines<br />
067ea4919a58 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
bf6e26068597 drm/i915/gt: Free stale request on destroying the virtual engine<br />
9fd59fa35cdc drm/i915/gt: Replace direct submit with direct call to tasklet<br />
b1fba621ff00 drm/i915/gt: Check for a completed last request once<br />
4ddd5ececb22 drm/i915/gt: Decouple completed requests on unwind<br />
6296fe868377 drm/i915: Remove unused i915_gem_evict_vm()<br />
0e4a431e2f5e drm/i915/gt: Push the wait for the context to bound to the request<br />
7ef75aca0d57 drm/i915/gt: Acquire backing storage for the context<br />
30196b1778f2 drm/i915: Specialise GGTT binding<br />
009379133a04 drm/i915: Hold wakeref for the duration of the vma GGTT binding<br />
0ca5333286a3 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class<br />
fe0b2e8f9867 drm/i915/gem: Pull execbuf dma resv under a single critical section<br />
34f8c8b06fb1 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.<br />
a2d67581b7cc drm/i915/gem: Reintroduce multiple passes for reloc processing<br />
d59dcbda945a drm/i915/gem: Include secure batch in common execbuf pinning<br />
3994c1315802 drm/i915/gem: Include cmdparser in common execbuf pinning<br />
289e4f21e37d drm/i915/gem: Bind the fence async for execbuf<br />
8ed473e9ebb5 drm/i915/gem: Asynchronous GTT unbinding<br />
82ed2ac041bb drm/i915/gem: Separate the ww_mutex walker into its own list<br />
0ffcc361f56b drm/i915/gem: Assign context id for async work<br />
03f0ac6d0aa7 drm/i915: Always defer fenced work to the worker<br />
482c12431055 drm/i915: Add list_for_each_entry_safe_continue_reverse<br />
b336351c77f1 drm/i915/gem: Remove the call for no-evict i915_vma_pin<br />
bf7156efc5fe drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup<br />
a488eb2ac0c6 drm/i915/gem: Rename execbuf.bind_link to unbound_link<br />
d9e5a405669b drm/i915/gem: Don't drop the timeline lock during execbuf<br />
f62b56fc3c3f drm/i915: Switch to object allocations for page directories<br />
7c20ceade654 drm/i915: Preallocate stashes for vma page-directories<br />
63c73191100c drm/i915: Soften the tasklet flush frequency before waits<br />
a938c15b20b3 drm/i915: Provide a fastpath for waiting on vma bindings<br />
00c92cc2c921 drm/i915: Make the stale cached active node available for any timeline<br />
383c7cbfc8d5 drm/i915: Keep the most recently used active-fence upon discard<br />
8628c1a1b800 drm/i915: Export a preallocate variant of i915_active_acquire()<br />
379852a0d374 drm/i915: Skip taking acquire mutex for no ref-&gt;active callback<br />
e919aa95911c drm/i915: Add a couple of missing i915_active_fini()<br />
6fa430293a65 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs<br />
13de08637a53 drm/i915: Remove i915_request.lock requirement for execution callbacks<br />
91bde1c5e935 drm/i915: Reduce i915_request.lock contention for i915_request_wait</p>

</body>
</html>

--===============5989493607270169976==--

--===============0934284006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0934284006==--
