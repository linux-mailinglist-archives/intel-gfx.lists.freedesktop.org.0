Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265081FF086
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 13:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008796E3A4;
	Thu, 18 Jun 2020 11:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BF656E154;
 Thu, 18 Jun 2020 11:32:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35D5DA00C7;
 Thu, 18 Jun 2020 11:32:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 18 Jun 2020 11:32:43 -0000
Message-ID: <159247996318.22461.4296202779497322763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Decouple_completed?=
 =?utf-8?q?_requests_on_unwind?=
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

Series: series starting with [01/11] drm/i915/gt: Decouple completed requests on unwind
URL   : https://patchwork.freedesktop.org/series/78522/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8641 -> Patchwork_17986
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17986 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17986, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17986:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
    - fi-cml-s:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-s/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cml-s/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - fi-bsw-n3050:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
    - fi-cml-s:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-icl-y:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-y/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-icl-y/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-apl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-apl-guc/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-apl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - fi-kbl-r:           [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-r/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-r/igt@i915_selftest@live@workarounds.html
    - fi-icl-guc:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-icl-guc/igt@i915_selftest@live@workarounds.html
    - fi-icl-u2:          [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-u2/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-icl-u2/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8109u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
    - fi-bsw-nick:        [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
    - fi-skl-lmem:        [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7500u:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
    - fi-bdw-5557u:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-soraka:      [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
    - fi-whl-u:           [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-whl-u/igt@i915_selftest@live@workarounds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-whl-u/igt@i915_selftest@live@workarounds.html
    - fi-bxt-dsi:         [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-bdw-5557u/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {fi-tgl-dsi}:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
    - {fi-ehl-1}:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-ehl-1/igt@i915_selftest@live@workarounds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-ehl-1/igt@i915_selftest@live@workarounds.html
    - {fi-kbl-7560u}:     [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-7560u/igt@i915_selftest@live@workarounds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-7560u/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17986 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][59] -> [DMESG-WARN][60] ([i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-soraka/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-guc:         [PASS][61] -> [INCOMPLETE][62] ([fdo#108744])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][63] -> [INCOMPLETE][64] ([i915#69])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-glk-dsi:         [PASS][65] -> [INCOMPLETE][66] ([i915#58] / [k.org#198133])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-glk-dsi/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-cml-s:           [PASS][69] -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-s/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-cml-s/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][71] ([i915#1888]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][77] ([fdo#109271]) -> [DMESG-FAIL][78] ([i915#62])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][79] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][80] ([i915#62] / [i915#92]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([i915#62] / [i915#92]) -> [DMESG-WARN][82] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 41)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8641 -> Patchwork_17986

  CI-20190529: 20190529
  CI_DRM_8641: aac91f91c7be78f53b352237d968dfa1996b2d4b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5712: eba1135ddd35f9d3097ed91032aefe8f9a9f9d02 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17986: d1bee1d3a71f8bff04efbc4680db74983532e812 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d1bee1d3a71f drm/i915/gt: Resubmit the virtual engine on schedule-out
0cdb3bb12cc5 drm/i915/gt: Decouple inflight virtual engines
779d99c25deb drm/i915/gt: Use virtual_engine during execlists_dequeue
94d03393704b drm/i915/gt: Convert stats.active to plain unsigned int
caa926734fc2 drm/i915/gt: Extract busy-stats for ring-scheduler
ddfc925aa0db drm/i915/gt: Drop atomic for engine->fw_active tracking
fbe78a584bd5 drm/i915/gt: ce->inflight updates are now serialised
398abbf02330 drm/i915/execlists: Defer schedule_out until after the next dequeue
4222b55f2f1b drm/i915/gt: Replace direct submit with direct call to tasklet
4579cb31c97b drm/i915/gt: Check for a completed last request once
0c59db1704c2 drm/i915/gt: Decouple completed requests on unwind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17986/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
