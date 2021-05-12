Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F7F37EBDD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 00:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE51E6E584;
	Wed, 12 May 2021 22:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04C516E580;
 Wed, 12 May 2021 22:24:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0E08A47EB;
 Wed, 12 May 2021 22:23:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 12 May 2021 22:23:59 -0000
Message-ID: <162085823995.28504.17307226669077166799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512212809.1234701-1-imre.deak@intel.com>
In-Reply-To: <20210512212809.1234701-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reenable_LTTPR_non-transparent_LT_mode_for_DPCD=5FREV?=
 =?utf-8?q?=3C1=2E4?=
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
Content-Type: multipart/mixed; boundary="===============0206694068=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0206694068==
Content-Type: multipart/alternative;
 boundary="===============4463947098369145649=="

--===============4463947098369145649==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV<1.4
URL   : https://patchwork.freedesktop.org/series/90102/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074 -> Patchwork_20115
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20115 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20115, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20115:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][2] ([i915#2782] / [i915#2940]) -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20115 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][5] -> [FAIL][6] ([i915#3457])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-glk-dsi:         [PASS][7] -> [FAIL][8] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-kefka:       [PASS][10] -> [FAIL][11] ([i915#3457]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][12] -> [FAIL][13] ([i915#1888])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [PASS][15] -> [FAIL][16] ([i915#3177] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@busy@all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] ([i915#3457]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@wait@all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_wait@wait@all.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][19] ([i915#1982] / [i915#3457])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][20] ([i915#2782] / [i915#3462] / [i915#794])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][21] ([i915#1886] / [i915#2291])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][22] ([i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@mman.html

  * igt@kms_busy@basic@modeset:
    - fi-ilk-650:         [PASS][23] -> [INCOMPLETE][24] ([i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#533])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-bwr-2160:        [PASS][27] -> [FAIL][28] ([i915#53])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][29] -> [FAIL][30] ([i915#53])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][31] -> [FAIL][32] ([i915#53]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][33] ([i915#1436] / [i915#3363])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][34] ([i915#3457]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - {fi-tgl-1115g4}:    [FAIL][36] ([i915#1888]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [FAIL][38] ([i915#53]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][40] ([i915#3457]) -> [FAIL][41] ([i915#3457] / [i915#3472])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [FAIL][42] ([i915#3457]) -> [FAIL][43] ([i915#3457] / [i915#3472])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-elk-e7500:       [DMESG-WARN][44] ([i915#3457]) -> [DMESG-FAIL][45] ([i915#3457])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-WARN][46] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][47] ([i915#1982] / [i915#3457])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [DMESG-FAIL][48] ([i915#3457]) -> [DMESG-WARN][49] ([i915#3457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [INCOMPLETE][50] ([i915#3462]) -> [DMESG-FAIL][51] ([i915#3462])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-elk-e7500:       [DMESG-FAIL][52] ([i915#3457]) -> [DMESG-WARN][53] ([i915#3457])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_selftest@live@mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][54] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][55] ([i915#1436] / [i915#3363])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][56] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][57] ([i915#3363] / [k.org#202321])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-glk-dsi/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][58] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][59] ([i915#3363])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-cml-u2/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][60] ([i915#1436] / [i915#3363]) -> [FAIL][61] ([i915#1436] / [i915#2426] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-kbl-7567u/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-7567u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3468]: https://gitlab.freedesktop.org/drm/intel/issues/3468
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (43 -> 34)
------------------------------

  Additional (2): fi-kbl-soraka fi-rkl-11500t 
  Missing    (11): fi-ilk-m540 fi-bxt-dsi fi-ehl-1 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-skl-6700k2 


Build changes
-------------

  * Linux: CI_DRM_10074 -> Patchwork_20115

  CI-20190529: 20190529
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20115: 4f36fbac1a27825c7f0c1d49a887c2f444defc70 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f36fbac1a27 drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV<1.4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html

--===============4463947098369145649==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV&lt;1.4</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90102/">https://patchwork.freedesktop.org/series/90102/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074 -&gt; Patchwork_20115</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20115 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20115, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20115:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20115 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-elk-e7500/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-soraka fi-rkl-11500t <br />
  Missing    (11): fi-ilk-m540 fi-bxt-dsi fi-ehl-1 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-skl-6700k2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10074 -&gt; Patchwork_20115</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20115: 4f36fbac1a27825c7f0c1d49a887c2f444defc70 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4f36fbac1a27 drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV&lt;1.4</p>

</body>
</html>

--===============4463947098369145649==--

--===============0206694068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0206694068==--
