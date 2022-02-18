Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57394BB095
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 05:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5A610E1A6;
	Fri, 18 Feb 2022 04:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F10A10E162;
 Fri, 18 Feb 2022 04:15:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 188E8A77A5;
 Fri, 18 Feb 2022 04:15:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8291040984104974903=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 18 Feb 2022 04:15:25 -0000
Message-ID: <164515772505.25451.13382319787303942113@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217202644.122937-1-michael.cheng@intel.com>
In-Reply-To: <20220217202644.122937-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW92?=
 =?utf-8?q?e_=23define_wbvind=5Fon=5Fall=5Fcpus_=28rev2=29?=
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

--===============8291040984104974903==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move #define wbvind_on_all_cpus (rev2)
URL   : https://patchwork.freedesktop.org/series/99991/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11244 -> Patchwork_22322
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22322 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22322, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/index.html

Participating hosts (44 -> 40)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (5): fi-bdw-5557u shard-tglu fi-bsw-cyan fi-pnv-d510 bat-jsl-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22322:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2] +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4] +15 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-guc:         [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-WARN][8] +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-glk-j4005:       [PASS][9] -> [DMESG-WARN][10] +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-kbl-x1275:       [PASS][11] -> [DMESG-WARN][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-kbl-7567u:       [PASS][13] -> [DMESG-WARN][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-skl-6600u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-elk-e7500:       [PASS][17] -> [DMESG-WARN][18] +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html
    - bat-dg1-6:          [PASS][19] -> [DMESG-WARN][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-skl-6700k2:      [PASS][21] -> [DMESG-WARN][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-skl-guc:         [PASS][23] -> [DMESG-WARN][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-cfl-guc:         [PASS][25] -> [DMESG-WARN][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-ivb-3770:        [PASS][27] -> [DMESG-WARN][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-rkl-guc:         [PASS][29] -> [DMESG-WARN][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-cml-u2:          [PASS][31] -> [DMESG-WARN][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][33] -> [DMESG-WARN][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-snb-2600/igt@i915_selftest@live@gem.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-snb-2600/igt@i915_selftest@live@gem.html
    - fi-tgl-1115g4:      [PASS][35] -> [DMESG-WARN][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-tgl-1115g4/igt@i915_selftest@live@gem.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-tgl-1115g4/igt@i915_selftest@live@gem.html
    - fi-kbl-7500u:       [PASS][37] -> [DMESG-WARN][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-7500u/igt@i915_selftest@live@gem.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-7500u/igt@i915_selftest@live@gem.html
    - fi-cfl-8109u:       [PASS][39] -> [DMESG-WARN][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-8109u/igt@i915_selftest@live@gem.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-8109u/igt@i915_selftest@live@gem.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-soraka:      [PASS][41] -> [DMESG-WARN][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-hsw-4770:        [PASS][43] -> [DMESG-WARN][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - bat-dg1-5:          [PASS][45] -> [DMESG-WARN][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-snb-2520m:       [PASS][47] -> [DMESG-WARN][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-cfl-8700k:       [PASS][49] -> [DMESG-WARN][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][51] -> [DMESG-WARN][52] +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][53] -> [DMESG-WARN][54] +15 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ilk-650/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][55] -> [DMESG-WARN][56] +9 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bwr-2160/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-bsw-n3050:       [PASS][57] -> [DMESG-WARN][58] +13 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-n3050/igt@prime_vgem@basic-write.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-n3050/igt@prime_vgem@basic-write.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [INCOMPLETE][59] ([i915#4547]) -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][61] -> [DMESG-WARN][62] +15 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - {fi-ehl-2}:         [PASS][63] -> [DMESG-WARN][64] +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html
    - {bat-jsl-1}:        [PASS][65] -> [DMESG-WARN][66] +15 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-rkl-11600}:     [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem:
    - {fi-tgl-dsi}:       [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-tgl-dsi/igt@i915_selftest@live@gem.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-tgl-dsi/igt@i915_selftest@live@gem.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {bat-adlp-6}:       [PASS][73] -> [DMESG-WARN][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_22322 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][75] ([i915#4962]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       NOTRUN -> [FAIL][76] ([i915#4547])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][79] ([i915#1888])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][82] ([fdo#109271]) +54 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][83] ([i915#4312])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][84] ([i915#4494] / [i915#4957]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - {fi-jsl-1}:         [INCOMPLETE][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4962]: https://gitlab.freedesktop.org/drm/intel/issues/4962
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11244 -> Patchwork_22322

  CI-20190529: 20190529
  CI_DRM_11244: 6bde77454434bcd6c80f64fc638ffd0c8e1d5b07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22322: 58c17009b6265989bd91cf71cfdb3fe642773e26 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

58c17009b626 drm/i915/: Add drm_cache.h
02a63cd8aa4b drm/i915/gem: Remove logic for wbinvd_on_all_cpus
0ef1e9cb0b7b drm_cache: Add logic for wbvind_on_all_cpus

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/index.html

--===============8291040984104974903==
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
<tr><td><b>Series:</b></td><td>Move #define wbvind_on_all_cpus (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99991/">https://patchwork.freedesktop.org/series/99991/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11244 -&gt; Patchwork_22322</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22322 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22322, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/index.html</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (5): fi-bdw-5557u shard-tglu fi-bsw-cyan fi-pnv-d510 bat-jsl-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22322:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +13 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-tgl-1115g4/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-tgl-1115g4/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-7500u/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-7500u/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-8109u/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-8109u/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +5 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">DMESG-WARN</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ilk-650/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bwr-2160/igt@prime_vgem@basic-read.html">DMESG-WARN</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-bsw-n3050/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-bsw-n3050/igt@prime_vgem@basic-write.html">DMESG-WARN</a> +13 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vecs0:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html">DMESG-WARN</a> +15 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-tgl-dsi/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-tgl-dsi/igt@i915_selftest@live@gem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22322 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4962">i915#4962</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22322/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11244 -&gt; Patchwork_22322</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11244: 6bde77454434bcd6c80f64fc638ffd0c8e1d5b07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22322: 58c17009b6265989bd91cf71cfdb3fe642773e26 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>58c17009b626 drm/i915/: Add drm_cache.h<br />
02a63cd8aa4b drm/i915/gem: Remove logic for wbinvd_on_all_cpus<br />
0ef1e9cb0b7b drm_cache: Add logic for wbvind_on_all_cpus</p>

</body>
</html>

--===============8291040984104974903==--
