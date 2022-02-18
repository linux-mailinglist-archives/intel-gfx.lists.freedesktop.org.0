Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B59F74BC2EA
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 00:38:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F415210EA7E;
	Fri, 18 Feb 2022 23:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D61E310EA7E;
 Fri, 18 Feb 2022 23:38:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0F14A66C9;
 Fri, 18 Feb 2022 23:38:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8737986071157909940=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 18 Feb 2022 23:38:53 -0000
Message-ID: <164522753384.25451.12833126415108346999@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217202644.122937-1-michael.cheng@intel.com>
In-Reply-To: <20220217202644.122937-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW92?=
 =?utf-8?q?e_=23define_wbvind=5Fon=5Fall=5Fcpus_=28rev3=29?=
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

--===============8737986071157909940==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move #define wbvind_on_all_cpus (rev3)
URL   : https://patchwork.freedesktop.org/series/99991/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11253 -> Patchwork_22335
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22335 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22335, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/index.html

Participating hosts (43 -> 41)
------------------------------

  Additional (1): fi-rkl-guc 
  Missing    (3): fi-bsw-cyan bat-rpls-2 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22335:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2] +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4] +15 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-guc:         [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-WARN][8] +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-glk-j4005:       [PASS][9] -> [DMESG-WARN][10] +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-kbl-x1275:       [PASS][11] -> [DMESG-WARN][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-kbl-7567u:       [PASS][13] -> [DMESG-WARN][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bdw-5557u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-skl-6600u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-elk-e7500:       [PASS][19] -> [DMESG-WARN][20] +15 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html
    - bat-dg1-6:          [PASS][21] -> [DMESG-WARN][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-skl-6700k2:      [PASS][23] -> [DMESG-WARN][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-skl-guc:         [PASS][25] -> [DMESG-WARN][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-cfl-guc:         [PASS][27] -> [DMESG-WARN][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-ivb-3770:        [PASS][29] -> [DMESG-WARN][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][31] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-cml-u2:          [PASS][32] -> [DMESG-WARN][33] +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@dmabuf:
    - fi-pnv-d510:        NOTRUN -> [DMESG-WARN][34] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][35] -> [DMESG-WARN][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2600/igt@i915_selftest@live@gem.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2600/igt@i915_selftest@live@gem.html
    - fi-tgl-1115g4:      [PASS][37] -> [DMESG-WARN][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-tgl-1115g4/igt@i915_selftest@live@gem.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-tgl-1115g4/igt@i915_selftest@live@gem.html
    - fi-kbl-7500u:       [PASS][39] -> [DMESG-WARN][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-7500u/igt@i915_selftest@live@gem.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-7500u/igt@i915_selftest@live@gem.html
    - fi-cfl-8109u:       [PASS][41] -> [DMESG-WARN][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-8109u/igt@i915_selftest@live@gem.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-8109u/igt@i915_selftest@live@gem.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-pnv-d510:        [PASS][43] -> [DMESG-WARN][44] +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-kbl-soraka:      [PASS][45] -> [DMESG-WARN][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-hsw-4770:        [PASS][47] -> [DMESG-WARN][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - bat-dg1-5:          [PASS][49] -> [DMESG-WARN][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-snb-2520m:       [PASS][51] -> [DMESG-WARN][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-cfl-8700k:       [PASS][53] -> [DMESG-WARN][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][55] -> [DMESG-WARN][56] +14 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][57] -> [DMESG-WARN][58] +15 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ilk-650/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][59] -> [DMESG-WARN][60] +9 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bwr-2160/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-bsw-n3050:       [PASS][61] -> [DMESG-WARN][62] +13 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-n3050/igt@prime_vgem@basic-write.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-n3050/igt@prime_vgem@basic-write.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][63] -> [DMESG-WARN][64] +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - {fi-ehl-2}:         [PASS][65] -> [DMESG-WARN][66] +15 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html
    - {bat-jsl-1}:        [PASS][67] -> [DMESG-WARN][68] +15 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-1}:       [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-rkl-11600}:     [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem:
    - {fi-tgl-dsi}:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-tgl-dsi/igt@i915_selftest@live@gem.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-tgl-dsi/igt@i915_selftest@live@gem.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {bat-adlp-6}:       [PASS][75] -> [DMESG-WARN][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_22335 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][77] ([fdo#109315]) +17 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-pnv-d510:        NOTRUN -> [SKIP][78] ([fdo#109271]) +17 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][79] -> [INCOMPLETE][80] ([i915#146])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-skl-6600u:       [PASS][81] -> [INCOMPLETE][82] ([i915#4547])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-rkl-guc:         NOTRUN -> [SKIP][83] ([i915#4613]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-guc:         NOTRUN -> [SKIP][84] ([i915#3282])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][85] -> [DMESG-WARN][86] ([i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-soraka/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-guc:         NOTRUN -> [SKIP][87] ([i915#3012])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-8809g:       [PASS][88] -> [DMESG-WARN][89] ([i915#1888])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-8809g/igt@i915_selftest@live@gem.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-8809g/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [PASS][90] -> [DMESG-FAIL][91] ([i915#4494] / [i915#4957])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][92] -> [INCOMPLETE][93] ([i915#3921])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-rkl-guc:         NOTRUN -> [SKIP][94] ([fdo#111827]) +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-rkl-guc:         NOTRUN -> [SKIP][95] ([i915#4103]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-guc:         NOTRUN -> [SKIP][96] ([fdo#109285])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-guc:         NOTRUN -> [SKIP][97] ([i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-guc:         NOTRUN -> [SKIP][98] ([i915#1072]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-userptr:
    - fi-rkl-guc:         NOTRUN -> [SKIP][99] ([i915#3301] / [i915#3708])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-rkl-guc:         NOTRUN -> [SKIP][100] ([i915#3291] / [i915#3708]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][101] ([i915#2927] / [i915#4528]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][103] ([i915#5068]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][105] ([i915#1436] / [i915#4312]) -> [FAIL][106] ([i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11253 -> Patchwork_22335

  CI-20190529: 20190529
  CI_DRM_11253: 17246930b733fd0d81d4dbead75308336197e34e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6348: 9cb64a757d2ff1e180b1648e611439d94afd697d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22335: b80161c6c2024903fcbd2b25c653531067dab713 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b80161c6c202 drm/i915/: Add drm_cache.h
ca2aac49253c drm/i915/gem: Remove logic for wbinvd_on_all_cpus
8c5741d746ef drm_cache: Add logic for wbvind_on_all_cpus

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/index.html

--===============8737986071157909940==
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
<tr><td><b>Series:</b></td><td>Move #define wbvind_on_all_cpus (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99991/">https://patchwork.freedesktop.org/series/99991/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11253 -&gt; Patchwork_22335</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22335 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22335, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (1): fi-rkl-guc <br />
  Missing    (3): fi-bsw-cyan bat-rpls-2 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22335:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-guc/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +13 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-6/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ivb-3770/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-tgl-1115g4/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-tgl-1115g4/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-7500u/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-7500u/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-8109u/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-8109u/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +13 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +5 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2520m/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-cfl-8700k/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">DMESG-WARN</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ilk-650/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bwr-2160/igt@prime_vgem@basic-read.html">DMESG-WARN</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bsw-n3050/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bsw-n3050/igt@prime_vgem@basic-write.html">DMESG-WARN</a> +13 similar issues</li>
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
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vecs0:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-ehl-2/igt@gem_exec_fence@basic-wait@vecs0.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-jsl-1/igt@gem_exec_fence@basic-wait@vecs0.html">DMESG-WARN</a> +15 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-tgl-dsi/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-tgl-dsi/igt@i915_selftest@live@gem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22335 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-kbl-8809g/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-kbl-8809g/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-rkl-guc/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11253/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22335/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11253 -&gt; Patchwork_22335</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11253: 17246930b733fd0d81d4dbead75308336197e34e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6348: 9cb64a757d2ff1e180b1648e611439d94afd697d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22335: b80161c6c2024903fcbd2b25c653531067dab713 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b80161c6c202 drm/i915/: Add drm_cache.h<br />
ca2aac49253c drm/i915/gem: Remove logic for wbinvd_on_all_cpus<br />
8c5741d746ef drm_cache: Add logic for wbvind_on_all_cpus</p>

</body>
</html>

--===============8737986071157909940==--
