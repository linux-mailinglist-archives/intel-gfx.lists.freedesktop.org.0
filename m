Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879D25127DC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 01:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE45410E6F8;
	Wed, 27 Apr 2022 23:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38AC910E6F8;
 Wed, 27 Apr 2022 23:55:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3686FAA3D8;
 Wed, 27 Apr 2022 23:55:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7610353712141873012=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 27 Apr 2022 23:55:24 -0000
Message-ID: <165110372419.24236.12660396866506620693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427230747.906625-1-matthew.d.roper@intel.com>
In-Reply-To: <20220427230747.906625-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_SSEU_handling_updates?=
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

--===============7610353712141873012==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: SSEU handling updates
URL   : https://patchwork.freedesktop.org/series/103244/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11550 -> Patchwork_103244v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103244v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103244v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/index.html

Participating hosts (43 -> 44)
------------------------------

  Additional (4): bat-dg2-8 fi-icl-u2 bat-dg1-6 bat-adlp-4 
  Missing    (3): fi-bsw-cyan bat-rpls-2 bat-jsl-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103244v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-adlp-4:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@i915_selftest@live.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {bat-rpls-1}:       NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_103244v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][3] ([i915#5827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][8] ([fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#109278]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-4:         NOTRUN -> [SKIP][11] ([i915#4103]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][12] ([i915#3576])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][13] ([fdo#109285])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         NOTRUN -> [SKIP][14] ([i915#4093]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([i915#3555])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-4:         NOTRUN -> [SKIP][16] ([i915#3555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-4:         NOTRUN -> [SKIP][17] ([i915#3291] / [i915#3708]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][18] ([i915#3301])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - bat-adlp-4:         NOTRUN -> [SKIP][19] ([i915#3301] / [i915#3708])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-guc:         [DMESG-FAIL][20] ([i915#5334]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][22] ([i915#4785]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-1}:       [DMESG-WARN][24] ([i915#5278]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][26] ([i915#4983]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][28] ([i915#3576]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-adlp-6/igt@kms_busy@basic@flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [INCOMPLETE][30] ([i915#5127]) -> [INCOMPLETE][31] ([i915#5127] / [i915#5857])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-7567u:       [SKIP][32] ([fdo#109271] / [i915#5341]) -> [SKIP][33] ([fdo#109271])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-pnv-d510:        [SKIP][34] ([fdo#109271] / [i915#5341]) -> [SKIP][35] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2520m:       [SKIP][36] ([fdo#109271] / [i915#5341]) -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-kefka:       [SKIP][38] ([fdo#109271] / [i915#5341]) -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-8809g:       [SKIP][40] ([fdo#109271] / [i915#5341]) -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        [SKIP][42] ([fdo#109271] / [i915#5341]) -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bwr-2160:        [SKIP][44] ([fdo#109271] / [i915#5341]) -> [SKIP][45] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        [SKIP][46] ([fdo#109271] / [i915#5341]) -> [SKIP][47] ([fdo#109271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-elk-e7500:       [SKIP][48] ([fdo#109271] / [i915#5341]) -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-blb-e6850:       [SKIP][50] ([fdo#109271] / [i915#5341]) -> [SKIP][51] ([fdo#109271])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ilk-650:         [SKIP][52] ([fdo#109271] / [i915#5341]) -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [i915#5647]: https://gitlab.freedesktop.org/drm/intel/issues/5647
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5827]: https://gitlab.freedesktop.org/drm/intel/issues/5827
  [i915#5857]: https://gitlab.freedesktop.org/drm/intel/issues/5857


Build changes
-------------

  * Linux: CI_DRM_11550 -> Patchwork_103244v1

  CI-20190529: 20190529
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103244v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

56e42adedf3b drm/i915/sseu: Disassociate internal subslice mask representation from uapi
35ec8670cc4b drm/i915/sseu: Simplify gen11+ SSEU handling
5de08eebba13 drm/i915/xehp: Use separate sseu init function
4668670f995c drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
af193ec71bf8 drm/i915/sseu: Don't try to store EU mask internally in UAPI format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/index.html

--===============7610353712141873012==
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
<tr><td><b>Series:</b></td><td>i915: SSEU handling updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103244/">https://patchwork.freedesktop.org/series/103244/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11550 -&gt; Patchwork_103244v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103244v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103244v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/index.html</p>
<h2>Participating hosts (43 -&gt; 44)</h2>
<p>Additional (4): bat-dg2-8 fi-icl-u2 bat-dg1-6 bat-adlp-4 <br />
  Missing    (3): fi-bsw-cyan bat-rpls-2 bat-jsl-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103244v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@i915_selftest@live.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103244v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5827">i915#5827</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5857">i915#5857</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v1/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11550 -&gt; Patchwork_103244v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103244v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>56e42adedf3b drm/i915/sseu: Disassociate internal subslice mask representation from uapi<br />
35ec8670cc4b drm/i915/sseu: Simplify gen11+ SSEU handling<br />
5de08eebba13 drm/i915/xehp: Use separate sseu init function<br />
4668670f995c drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK<br />
af193ec71bf8 drm/i915/sseu: Don't try to store EU mask internally in UAPI format</p>

</body>
</html>

--===============7610353712141873012==--
