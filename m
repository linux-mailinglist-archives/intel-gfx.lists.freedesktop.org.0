Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFBB1CE050
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 18:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC5C6E4FE;
	Mon, 11 May 2020 16:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4BE06E049;
 Mon, 11 May 2020 16:23:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC6E2A00E7;
 Mon, 11 May 2020 16:23:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 11 May 2020 16:23:04 -0000
Message-ID: <158921418480.13117.14653689045040890160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22=2E?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77157/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8465 -> Patchwork_17626
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17626 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17626, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17626:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@ring_submission:
    - fi-apl-guc:         [PASS][5] -> [FAIL][6] +21 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-apl-guc/igt@i915_selftest@live@ring_submission.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-apl-guc/igt@i915_selftest@live@ring_submission.html

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bwr-2160/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-gdg-551:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bdw-5557u/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@gem_execbuf}:
    - fi-skl-6600u:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8109u:       [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-7500u:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-guc:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-nick:        [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-8809g:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-y:           [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-r:           [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
    - fi-blb-e6850:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-kefka:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-s:           [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-soraka:      [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
    - {fi-ehl-1}:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ivb-3770:        [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-lmem:        [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-u2:          [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-guc:         [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-bxt-dsi:         [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-hsw-4770:        [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-u}:         [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-6700k2:      [PASS][64] -> [INCOMPLETE][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][66] -> [INCOMPLETE][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [PASS][68] -> [INCOMPLETE][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
    - fi-whl-u:           [PASS][72] -> [INCOMPLETE][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-apl-guc:         [PASS][74] -> [FAIL][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-guc:         [PASS][76] -> [INCOMPLETE][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bdw-5557u:       [PASS][78] -> [INCOMPLETE][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
    - fi-bwr-2160:        [PASS][80] -> [INCOMPLETE][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17626 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-whl-u:           [FAIL][82] ([fdo#103375]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-whl-u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-whl-u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][84] ([fdo#109271]) -> [FAIL][85] ([i915#62])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8465/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 42)
------------------------------

  Additional (1): fi-icl-dsi 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8465 -> Patchwork_17626

  CI-20190529: 20190529
  CI_DRM_8465: 353e7636140b8a9d873f6a7615dcda2b32535fda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5646: 5a5a3162a7638b3ae38b6dc2545622c204d1b97c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17626: bf82d97da9da27e9278f2e871ef72d703c6718e5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf82d97da9da drm/i915: Ensure we hold the pin mutex
ba65480d9131 drm/i915: Add ww locking to pin_to_display_plane
a4e2007e088c drm/i915: Add ww locking to vm_fault_gtt
8b76540cc9cc drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
46c98f32fbb8 drm/i915: Use ww pinning for intel_context_create_request()
335f6e4eb962 drm/i915/selftests: Fix locking inversion in lrc selftest.
04673ded2e72 drm/i915: Dirty hack to fix selftests locking inversion
bf1fb0d4b146 drm/i915: Convert i915_perf to ww locking as well
fed9e78e3bb2 drm/i915: Kill last user of intel_context_create_request outside of selftests
1ba54a26c74e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
85b6b79ec10b drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
00a5ba0089e7 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
9b8010e45479 drm/i915: Pin engine before pinning all objects, v4.
9a1134737bbc drm/i915: Nuke arguments to eb_pin_engine
d851a23c94b8 drm/i915: Add ww context handling to context_barrier_task
44e976369721 drm/i915: Use ww locking in intel_renderstate.
00f11bf30626 drm/i915: Use per object locking in execbuf, v10.
14dd86165b50 drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
8c174e0cbf17 Revert "drm/i915/gem: Split eb_vma into its own allocation"
b4294a4e8c79 drm/i915: Parse command buffer earlier in eb_relocate(slow)
da6543171a28 drm/i915: Remove locking from i915_gem_object_prepare_read/write
9a24cb4208cf drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
0aaea3234436 Revert "drm/i915/gem: Drop relocation slowpath".

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17626/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
