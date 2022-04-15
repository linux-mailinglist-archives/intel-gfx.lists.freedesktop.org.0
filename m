Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30169503055
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA7510E570;
	Fri, 15 Apr 2022 22:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FA2810E570;
 Fri, 15 Apr 2022 22:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EB19A0003;
 Fri, 15 Apr 2022 22:47:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7677652631917443371=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 15 Apr 2022 22:47:18 -0000
Message-ID: <165006283815.6516.15332005725980093469@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220415215640.2177403-1-lucas.demarchi@intel.com>
In-Reply-To: <20220415215640.2177403-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSEFY?=
 =?utf-8?q?=3A_drm/i915=3A_Add_softdep?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7677652631917443371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HAX: drm/i915: Add softdep
URL   : https://patchwork.freedesktop.org/series/102742/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11506 -> Patchwork_102742v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102742v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102742v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/index.html

Participating hosts (47 -> 48)
------------------------------

  Additional (2): fi-kbl-soraka fi-hsw-4770 
  Missing    (1): fi-bsw-cyan 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102742v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][1] -> [FAIL][2] +33 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ivb-3770/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ivb-3770/igt@i915_selftest@live@client.html
    - fi-rkl-guc:         [PASS][3] -> [FAIL][4] +33 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-rkl-guc/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-rkl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][5] -> [FAIL][6] +33 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] +33 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-icl-u2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][9] -> [FAIL][10] +25 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2600/igt@i915_selftest@live@gem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_migrate:
    - fi-skl-guc:         [PASS][11] -> [FAIL][12] +33 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_engines:
    - fi-kbl-7500u:       [PASS][13] -> [FAIL][14] +33 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-ilk-650:         [PASS][15] -> [FAIL][16] +33 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-adl-ddr5:        [PASS][17] -> [FAIL][18] +33 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-adl-ddr5/igt@i915_selftest@live@gt_mocs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-adl-ddr5/igt@i915_selftest@live@gt_mocs.html
    - fi-tgl-1115g4:      [PASS][19] -> [FAIL][20] +33 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][21] -> [FAIL][22] +33 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@gtt:
    - fi-hsw-g3258:       [PASS][23] -> [FAIL][24] +33 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-hsw-g3258/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-g3258/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-snb-2600:        NOTRUN -> [FAIL][25] +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@memory_region:
    - fi-cfl-8109u:       [PASS][26] -> [FAIL][27] +33 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@migrate:
    - fi-bxt-dsi:         [PASS][28] -> [FAIL][29] +33 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bxt-dsi/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][30] -> [FAIL][31] +33 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-kefka/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - fi-snb-2520m:       [PASS][32] -> [FAIL][33] +33 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2520m/igt@i915_selftest@live@objects.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2520m/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][34] -> [FAIL][35] +33 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][36] +33 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][37] +33 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-bsw-nick:        [PASS][38] -> [FAIL][39] +33 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@uncore:
    - fi-kbl-7567u:       [PASS][40] -> [FAIL][41] +33 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-7567u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-glk-j4005:       [PASS][42] -> [FAIL][43] +33 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-glk-j4005/igt@i915_selftest@live@workarounds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-glk-j4005/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][44] -> [FAIL][45] +33 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][46] ([i915#3921]) -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {bat-adlm-1}:       NOTRUN -> [DMESG-WARN][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlm-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-jsl-1}:         [PASS][49] -> [FAIL][50] +33 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
    - {fi-tgl-dsi}:       [DMESG-FAIL][51] ([i915#2373]) -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-tgl-dsi}:       [DMESG-FAIL][53] ([i915#1759]) -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gtt:
    - {bat-jsl-2}:        [PASS][55] -> [FAIL][56] +33 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-jsl-2/igt@i915_selftest@live@gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-jsl-2/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][57] -> [FAIL][58] +33 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ehl-2/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][59] ([i915#2867]) -> [FAIL][60] +19 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@slpc:
    - {fi-tgl-dsi}:       [PASS][61] -> [FAIL][62] +11 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@slpc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - {bat-jsl-1}:        [PASS][63] -> [FAIL][64] +33 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-jsl-1/igt@i915_selftest@live@uncore.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-jsl-1/igt@i915_selftest@live@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_102742v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][65] ([fdo#109271]) +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][66] -> [INCOMPLETE][67] ([i915#5127])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][68] ([fdo#109271]) +9 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][71] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3012])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][73] -> [DMESG-FAIL][74] ([i915#4528])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-4770:        NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-hsw-4770:        NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#1072]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][80] ([fdo#109271] / [i915#2403] / [i915#4312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][81] ([i915#4312])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-adlm-1}:       [INCOMPLETE][82] -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][84] ([i915#146]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][86] ([i915#1982] / [i915#2411] / [i915#2867]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][88] ([i915#3576]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-adlp-6/igt@kms_busy@basic@flip.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5650]: https://gitlab.freedesktop.org/drm/intel/issues/5650


Build changes
-------------

  * Linux: CI_DRM_11506 -> Patchwork_102742v1

  CI-20190529: 20190529
  CI_DRM_11506: 5a4dce336cfb95d05d7bedc0ab0c623784735c79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6438: 205a47d8f70e659df620573ce409d228c5762d11 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102742v1: 5a4dce336cfb95d05d7bedc0ab0c623784735c79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5a038652467e HAX: drm/i915: Add softdep

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/index.html

--===============7677652631917443371==
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
<tr><td><b>Series:</b></td><td>HAX: drm/i915: Add softdep</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102742/">https://patchwork.freedesktop.org/series/102742/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11506 -&gt; Patchwork_102742v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102742v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102742v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/index.html</p>
<h2>Participating hosts (47 -&gt; 48)</h2>
<p>Additional (2): fi-kbl-soraka fi-hsw-4770 <br />
  Missing    (1): fi-bsw-cyan </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102742v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ivb-3770/igt@i915_selftest@live@client.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-rkl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-rkl-guc/igt@i915_selftest@live@client.html">FAIL</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">FAIL</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@gem.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-adl-ddr5/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-adl-ddr5/igt@i915_selftest@live@gt_mocs.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">FAIL</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-hsw-g3258/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-g3258/igt@i915_selftest@live@gtt.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-kefka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-kefka/igt@i915_selftest@live@mman.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2520m/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2520m/igt@i915_selftest@live@objects.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-cfl-guc/igt@i915_selftest@live@requests.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@i915_selftest@live@requests.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@i915_selftest@live@requests.html">FAIL</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-glk-j4005/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-glk-j4005/igt@i915_selftest@live@workarounds.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">FAIL</a> +33 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlm-1/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">FAIL</a> +33 similar issues</p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-jsl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-jsl-2/igt@i915_selftest@live@gtt.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-ehl-2/igt@i915_selftest@live@migrate.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@perf.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_selftest@live@slpc.html">FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-jsl-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-jsl-1/igt@i915_selftest@live@uncore.html">FAIL</a> +33 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102742v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11506/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102742v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11506 -&gt; Patchwork_102742v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11506: 5a4dce336cfb95d05d7bedc0ab0c623784735c79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6438: 205a47d8f70e659df620573ce409d228c5762d11 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102742v1: 5a4dce336cfb95d05d7bedc0ab0c623784735c79 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5a038652467e HAX: drm/i915: Add softdep</p>

</body>
</html>

--===============7677652631917443371==--
