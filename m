Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F632120F0B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 17:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD5F6E7DB;
	Mon, 16 Dec 2019 16:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E81446E05F;
 Mon, 16 Dec 2019 16:15:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF5CBA47DF;
 Mon, 16 Dec 2019 16:15:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Dec 2019 16:15:26 -0000
Message-ID: <157651292688.5614.13143263763181672608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216103901.2518461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216103901.2518461-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Unpin_vma-=3Eobj_on_ear?=
 =?utf-8?q?ly_error?=
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

Series: series starting with [1/3] drm/i915: Unpin vma->obj on early error
URL   : https://patchwork.freedesktop.org/series/70974/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7573 -> Patchwork_15785
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15785 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15785, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15785:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         NOTRUN -> [DMESG-WARN][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-byt-n2820:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-byt-n2820/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-byt-n2820/igt@gem_exec_gttfill@basic.html
    - fi-skl-6770hq:      NOTRUN -> [DMESG-WARN][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-whl-u/igt@gem_exec_gttfill@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-icl-guc/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_mmap@basic-small-bo:
    - fi-bwr-2160:        [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-bwr-2160/igt@gem_mmap@basic-small-bo.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-bwr-2160/igt@gem_mmap@basic-small-bo.html

  * igt@i915_selftest@live_hangcheck:
    - fi-snb-2520m:       [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-snb-2520m/igt@i915_selftest@live_hangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-snb-2520m/igt@i915_selftest@live_hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
    - {fi-tgl-u}:         [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15785 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-hsw-4770:        [PASS][62] -> [DMESG-WARN][63] ([fdo#110789])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][64] -> [DMESG-WARN][65] ([fdo#110789])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-snb-2600/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-no-display:
    - fi-kbl-x1275:       [PASS][66] -> [DMESG-WARN][67] ([i915#62] / [i915#92])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][68] -> [DMESG-FAIL][69] ([i915#722])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][70] -> [INCOMPLETE][71] ([fdo#106070] / [i915#424])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-guc}:       [INCOMPLETE][72] ([i915#456] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-tgl-guc/igt@gem_exec_suspend@basic-s0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-tgl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-y:           [INCOMPLETE][74] ([i915#140]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-icl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-icl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][76] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][77] ([fdo#107139] / [i915#62] / [i915#92])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][78] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][79] ([i915#62] / [i915#92]) +10 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][80] ([i915#62] / [i915#92]) -> [DMESG-WARN][81] ([i915#62] / [i915#92] / [i915#95])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 46)
------------------------------

  Additional (2): fi-tgl-y fi-kbl-guc 
  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7573 -> Patchwork_15785

  CI-20190529: 20190529
  CI_DRM_7573: 5f2c1ea1bfb34f9777b829eec98a974edd82b885 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15785: 4dd1302524bd85afdb6eb05b9be610ac170f3534 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4dd1302524bd drm/i915: Hold reference to intel_frontbuffer as we track activity
4646d1eee756 drm/i915/gem: Lock the object as we unbind
99a12d34ee00 drm/i915: Unpin vma->obj on early error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15785/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
