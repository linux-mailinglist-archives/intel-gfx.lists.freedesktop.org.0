Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BEC15D6C9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134C56E5C5;
	Fri, 14 Feb 2020 11:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E36706E5C5;
 Fri, 14 Feb 2020 11:46:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB4D7A011A;
 Fri, 14 Feb 2020 11:46:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 14 Feb 2020 11:46:47 -0000
Message-ID: <158168080787.9931.5552740206461577544@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Implement_parallel_execbuf_submission=2E?=
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

Series: drm/i915/gem: Implement parallel execbuf submission.
URL   : https://patchwork.freedesktop.org/series/73456/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7938 -> Patchwork_16567
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16567 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16567, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16567:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-guc/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-icl-guc/igt@gem_close_race@basic-threads.html
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bdw-5557u/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bdw-5557u/igt@gem_close_race@basic-threads.html
    - fi-kbl-x1275:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-x1275/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cfl-8109u/igt@gem_exec_parallel@fds.html

  * igt@gem_sync@basic-each:
    - fi-kbl-7500u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-kbl-7500u/igt@gem_sync@basic-each.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-7500u/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_gt_engines:
    - fi-snb-2520m:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-snb-2520m/igt@i915_selftest@live_gt_engines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-snb-2520m/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-peppy:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-hsw-peppy/igt@i915_selftest@live_requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-peppy/igt@i915_selftest@live_requests.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-6700k2/igt@i915_selftest@live_requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-skl-6700k2/igt@i915_selftest@live_requests.html
    - fi-hsw-4770r:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-hsw-4770r/igt@i915_selftest@live_requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-4770r/igt@i915_selftest@live_requests.html
    - fi-skl-lmem:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-lmem/igt@i915_selftest@live_requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-skl-lmem/igt@i915_selftest@live_requests.html
    - fi-ivb-3770:        [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-ivb-3770/igt@i915_selftest@live_requests.html
    - fi-skl-6600u:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-6600u/igt@i915_selftest@live_requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-skl-6600u/igt@i915_selftest@live_requests.html
    - fi-cml-s:           [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-cml-s/igt@i915_selftest@live_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cml-s/igt@i915_selftest@live_requests.html
    - fi-hsw-4770:        [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-4770/igt@i915_selftest@live_requests.html
    - fi-kbl-guc:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-kbl-guc/igt@i915_selftest@live_requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-guc/igt@i915_selftest@live_requests.html
    - fi-glk-dsi:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-glk-dsi/igt@i915_selftest@live_requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-glk-dsi/igt@i915_selftest@live_requests.html
    - fi-cfl-guc:         [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-cfl-guc/igt@i915_selftest@live_requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cfl-guc/igt@i915_selftest@live_requests.html
    - fi-cfl-8700k:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-cfl-8700k/igt@i915_selftest@live_requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cfl-8700k/igt@i915_selftest@live_requests.html
    - fi-kbl-r:           [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-kbl-r/igt@i915_selftest@live_requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-r/igt@i915_selftest@live_requests.html
    - fi-skl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-guc/igt@i915_selftest@live_requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-skl-guc/igt@i915_selftest@live_requests.html
    - fi-bwr-2160:        [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bwr-2160/igt@i915_selftest@live_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bwr-2160/igt@i915_selftest@live_requests.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cfl-8109u/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-7500u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-blb-e6850/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-4770r/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-kbl-r/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_requests:
    - {fi-tgl-dsi}:       [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-tgl-dsi/igt@i915_selftest@live_requests.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-tgl-dsi/igt@i915_selftest@live_requests.html
    - {fi-tgl-u}:         [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-tgl-u/igt@i915_selftest@live_requests.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-tgl-u/igt@i915_selftest@live_requests.html

  * {igt@kms_busy@basic@flip}:
    - fi-bwr-2160:        [PASS][62] -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bwr-2160/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [PASS][64] -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16567 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][68] -> [TIMEOUT][69] ([fdo#112271] / [i915#1084])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@basic:
    - fi-bxt-dsi:         [PASS][70] -> [INCOMPLETE][71] ([fdo#103927])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bxt-dsi/igt@gem_exec_parallel@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bxt-dsi/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-u2:          [PASS][72] -> [INCOMPLETE][73] ([i915#283])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-cml-u2/igt@gem_exec_parallel@fds.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-cml-u2/igt@gem_exec_parallel@fds.html
    - fi-apl-guc:         [PASS][74] -> [INCOMPLETE][75] ([fdo#103927])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-apl-guc/igt@gem_exec_parallel@fds.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-apl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6770hq:      [PASS][76] -> [INCOMPLETE][77] ([i915#69])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-6770hq/igt@gem_exec_suspend@basic-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-skl-6770hq/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][78] -> [INCOMPLETE][79] ([i915#392])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-snb-2600:        [PASS][80] -> [INCOMPLETE][81] ([i915#82])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-snb-2600/igt@i915_selftest@live_gt_lrc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-snb-2600/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_requests:
    - fi-icl-dsi:         [PASS][82] -> [DMESG-WARN][83] ([fdo#109644] / [fdo#110464])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-dsi/igt@i915_selftest@live_requests.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-icl-dsi/igt@i915_selftest@live_requests.html
    - fi-blb-e6850:       [PASS][84] -> [DMESG-WARN][85] ([i915#478])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-blb-e6850/igt@i915_selftest@live_requests.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-blb-e6850/igt@i915_selftest@live_requests.html
    - fi-icl-y:           [PASS][86] -> [DMESG-WARN][87] ([fdo#109644] / [fdo#110464])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-y/igt@i915_selftest@live_requests.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-icl-y/igt@i915_selftest@live_requests.html
    - fi-gdg-551:         [PASS][88] -> [DMESG-WARN][89] ([i915#478])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-gdg-551/igt@i915_selftest@live_requests.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-gdg-551/igt@i915_selftest@live_requests.html
    - fi-icl-u3:          [PASS][90] -> [DMESG-WARN][91] ([fdo#109644] / [fdo#110464])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-u3/igt@i915_selftest@live_requests.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-icl-u3/igt@i915_selftest@live_requests.html
    - fi-ilk-650:         [PASS][92] -> [DMESG-WARN][93] ([i915#478])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-ilk-650/igt@i915_selftest@live_requests.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-ilk-650/igt@i915_selftest@live_requests.html
    - fi-pnv-d510:        [PASS][94] -> [DMESG-WARN][95] ([i915#478])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-pnv-d510/igt@i915_selftest@live_requests.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-pnv-d510/igt@i915_selftest@live_requests.html
    - fi-snb-2520m:       [PASS][96] -> [DMESG-WARN][97] ([i915#478])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-snb-2520m/igt@i915_selftest@live_requests.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-snb-2520m/igt@i915_selftest@live_requests.html
    - fi-icl-u2:          [PASS][98] -> [DMESG-WARN][99] ([fdo#109644] / [fdo#110464])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-u2/igt@i915_selftest@live_requests.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/fi-icl-u2/igt@i915_selftest@live_requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (52 -> 46)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7938 -> Patchwork_16567

  CI-20190529: 20190529
  CI_DRM_7938: 9fda6807b50ceb40ef01b055f6428db8965e3d06 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16567: 6e5d190d8121d03590842d2f155906c675789e0c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e5d190d8121 drm/i915: Use ww pinning for intel_context_create_request()
e091c73e4158 drm/i915/selftests: Fix locking inversion in lrc selftest.
80cc1c0dea35 drm/i915: Dirty hack to fix selftests locking inversion
e1a5ab78d885 drm/i915: Convert i915_perf to ww locking as well
4f5b737716e8 drm/i915: Kill last user of intel_context_create_request outside of selftests
5819fba41820 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well
4782909f0467 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
b3a660cd040f drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
39baf3b54346 drm/i915: Pin engine before pinning all objects, v2.
75b5a2f7f6c3 drm/i915: Nuke arguments to eb_pin_engine
656138053d87 drm/i915: Add ww context handling to context_barrier_task
15b80a481667 drm/i915: Use ww locking in intel_renderstate.
94e03631a69b drm/i915: Use per object locking in execbuf on top of struct_mutex, v3.
6d289dfa8e94 drm/i915: Parse command buffer earlier in eb_relocate(slow)
4fb224307417 drm/i915: Remove locking from i915_gem_object_prepare_read/write
74411de36fec drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
1c9c54ea3f9f drm/i915: Separate lookup and pinning in execbuf.
77137cc44da0 drm/i915/gem: Extract transient execbuf flags from i915_vma
45e26eb55b49 drm/i915: Drop inspection of execbuf flags during evict

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16567/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
