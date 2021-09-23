Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F002415F28
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 15:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42926ED0F;
	Thu, 23 Sep 2021 13:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D82B46ED0F;
 Thu, 23 Sep 2021 13:05:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEB42AA0ED;
 Thu, 23 Sep 2021 13:05:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4860574780662955369=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 13:05:32 -0000
Message-ID: <163240233283.31050.11977750526229880215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210923075608.2873-1-christian.koenig@amd.com>
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/25=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v5?=
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

--===============4860574780662955369==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/25] dma-buf: add dma_resv_for_each_fence_unlocked v5
URL   : https://patchwork.freedesktop.org/series/94992/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10630 -> Patchwork_21144
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21144 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21144, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21144:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-cfl-guc:         [PASS][7] -> [FAIL][8] +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][9] -> [FAIL][10] +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vcs1:
    - fi-bdw-gvtdvm:      [PASS][11] -> [FAIL][12] +20 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-cfl-8700k:       [PASS][13] -> [FAIL][14] +20 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][15] -> [FAIL][16] +21 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][17] +18 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vcs1:
    - fi-tgl-u2:          [PASS][18] -> [FAIL][19] +25 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - fi-tgl-1115g4:      [PASS][22] -> [FAIL][23] +23 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-rkl-11600:       [PASS][24] -> [FAIL][25] +21 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-kbl-7500u:       [PASS][26] -> [FAIL][27] +18 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-cfl-8109u:       [PASS][28] -> [FAIL][29] +22 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - fi-kbl-7567u:       [PASS][30] -> [FAIL][31] +20 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html
    - fi-bdw-5557u:       [PASS][32] -> [FAIL][33] +26 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
    - fi-kbl-r:           [PASS][34] -> [FAIL][35] +18 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-icl-y:           [PASS][36] -> [FAIL][37] +25 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-icl-u2:          [PASS][38] -> [FAIL][39] +26 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-glk-dsi:         [PASS][40] -> [FAIL][41] +19 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][42] +17 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-rkl-guc:         [PASS][43] -> [FAIL][44] +25 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_wait@busy@all:
    - fi-snb-2600:        [PASS][45] -> [FAIL][46] +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2600/igt@gem_wait@busy@all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2600/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bxt-dsi:         [PASS][47] -> [FAIL][48] +18 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bxt-dsi/igt@gem_wait@wait@all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bxt-dsi/igt@gem_wait@wait@all.html
    - fi-hsw-4770:        [PASS][49] -> [FAIL][50] +23 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-hsw-4770/igt@gem_wait@wait@all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-hsw-4770/igt@gem_wait@wait@all.html

  * igt@kms_busy@basic@modeset:
    - fi-snb-2520m:       [PASS][51] -> [FAIL][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2520m/igt@kms_busy@basic@modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2520m/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-await@rcs0:
    - {fi-ehl-2}:         [PASS][53] -> [FAIL][54] +21 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][55] -> [FAIL][56] +20 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - {fi-tgl-dsi}:       [PASS][57] -> [FAIL][58] +24 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_21144 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][59] ([fdo#109271]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][62] ([i915#1886] / [i915#2291])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][63] -> [INCOMPLETE][64] ([i915#3921])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][69] ([fdo#109271]) +37 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (33 -> 29)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (5): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10630 -> Patchwork_21144

  CI-20190529: 20190529
  CI_DRM_10630: a3ffd2c50784aebf118e55aee39f223a44150eca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21144: f881b62afa7bd841dabcc3b62737f6664172d362 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f881b62afa7b drm/etnaviv: replace dma_resv_get_excl_unlocked
c86678896845 drm/etnaviv: use new iterator in etnaviv_gem_describe
7b0368f39798 drm/nouveau: use the new interator in nv50_wndw_prepare_fb
1b217b3f5cec drm/nouveau: use the new iterator in nouveau_fence_sync
0bc025f3687d drm: use new iterator in drm_gem_plane_helper_prepare_fb
981985aeaed6 drm: use new iterator in drm_gem_fence_array_add_implicit v3
5c70c2efbc56 drm/i915: use new cursor in intel_prepare_plane_fb
0e7db976ca45 drm/i915: use new iterator in i915_gem_object_wait_priority
2b5ff30bf29b drm/i915: use new iterator in i915_gem_object_wait_reservation
3d0fa5690075 drm/i915: use the new iterator in i915_request_await_object v2
502d048ce252 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
7662aa2c8cf7 drm/i915: use the new iterator in i915_gem_busy_ioctl v2
f704c8a25605 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
85d0d353e645 drm/radeon: use new iterator in radeon_sync_resv
d4e08706199a drm/msm: use new iterator in msm_gem_describe
508eb25f10c8 drm/amdgpu: use new iterator in amdgpu_vm_prt_fini
0c6b792b6e82 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
fff4995c7a49 drm/amdgpu: use the new iterator in amdgpu_sync_resv
dd8bd1a5f52c drm/ttm: use the new iterator in ttm_bo_flush_all_fences
d38f6ba5aa04 dma-buf: use new iterator in dma_resv_test_signaled
495e199517b6 dma-buf: use new iterator in dma_resv_wait_timeout
8c92d9b40ba3 dma-buf: use new iterator in dma_resv_get_fences v3
4fd4f2175f60 dma-buf: use new iterator in dma_resv_copy_fences
27b6fe5f30f5 dma-buf: add dma_resv_for_each_fence
56de5e82f37e dma-buf: add dma_resv_for_each_fence_unlocked v5

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/index.html

--===============4860574780662955369==
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
<tr><td><b>Series:</b></td><td>series starting with [01/25] dma-buf: add dma_resv_for_each_fence_unlocked v5</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94992/">https://patchwork.freedesktop.org/series/94992/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10630 -&gt; Patchwork_21144</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21144 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21144, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21144:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_busy@busy@all.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs1:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +21 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">FAIL</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs0:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +21 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +22 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vecs0:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +20 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +26 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2600/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2600/igt@gem_wait@busy@all.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-bxt-dsi/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-bxt-dsi/igt@gem_wait@wait@all.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-hsw-4770/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-hsw-4770/igt@gem_wait@wait@all.html">FAIL</a> +23 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2520m/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2520m/igt@kms_busy@basic@modeset.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21144 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 29)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (5): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10630 -&gt; Patchwork_21144</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10630: a3ffd2c50784aebf118e55aee39f223a44150eca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21144: f881b62afa7bd841dabcc3b62737f6664172d362 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f881b62afa7b drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
c86678896845 drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
7b0368f39798 drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
1b217b3f5cec drm/nouveau: use the new iterator in nouveau_fence_sync<br />
0bc025f3687d drm: use new iterator in drm_gem_plane_helper_prepare_fb<br />
981985aeaed6 drm: use new iterator in drm_gem_fence_array_add_implicit v3<br />
5c70c2efbc56 drm/i915: use new cursor in intel_prepare_plane_fb<br />
0e7db976ca45 drm/i915: use new iterator in i915_gem_object_wait_priority<br />
2b5ff30bf29b drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
3d0fa5690075 drm/i915: use the new iterator in i915_request_await_object v2<br />
502d048ce252 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3<br />
7662aa2c8cf7 drm/i915: use the new iterator in i915_gem_busy_ioctl v2<br />
f704c8a25605 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2<br />
85d0d353e645 drm/radeon: use new iterator in radeon_sync_resv<br />
d4e08706199a drm/msm: use new iterator in msm_gem_describe<br />
508eb25f10c8 drm/amdgpu: use new iterator in amdgpu_vm_prt_fini<br />
0c6b792b6e82 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
fff4995c7a49 drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
dd8bd1a5f52c drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
d38f6ba5aa04 dma-buf: use new iterator in dma_resv_test_signaled<br />
495e199517b6 dma-buf: use new iterator in dma_resv_wait_timeout<br />
8c92d9b40ba3 dma-buf: use new iterator in dma_resv_get_fences v3<br />
4fd4f2175f60 dma-buf: use new iterator in dma_resv_copy_fences<br />
27b6fe5f30f5 dma-buf: add dma_resv_for_each_fence<br />
56de5e82f37e dma-buf: add dma_resv_for_each_fence_unlocked v5</p>

</body>
</html>

--===============4860574780662955369==--
