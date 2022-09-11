Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B3F5B5186
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 00:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2689F10E20D;
	Sun, 11 Sep 2022 22:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2A9610E1A6;
 Sun, 11 Sep 2022 22:17:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92405AAA91;
 Sun, 11 Sep 2022 22:17:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4640459380203424615=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Sun, 11 Sep 2022 22:17:18 -0000
Message-ID: <166293463855.10768.9792971038905247720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220911211443.581481-1-michal.winiarski@intel.com>
In-Reply-To: <20220911211443.581481-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_full_allocated_minor_range_for_DRM_=28rev2=29?=
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

--===============4640459380203424615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use full allocated minor range for DRM (rev2)
URL   : https://patchwork.freedesktop.org/series/108206/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12116 -> Patchwork_108206v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108206v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108206v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108206v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-blb-e6850:       [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-blb-e6850/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-bdw-gvtdvm:      [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-elk-e7500/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][13] -> [FAIL][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][15] -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][17] -> [FAIL][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][19] -> [FAIL][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@i915_module_load@reload.html
    - fi-rkl-guc:         [PASS][21] -> [FAIL][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][23] -> [FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][25] -> [FAIL][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][27] -> [FAIL][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@i915_module_load@reload.html
    - fi-hsw-g3258:       [PASS][29] -> [FAIL][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][31] -> [FAIL][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-adl-ddr5:        [PASS][33] -> [FAIL][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][35] -> [FAIL][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][37] -> [FAIL][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][39] -> [FAIL][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@i915_module_load@reload.html
    - bat-adlp-4:         [PASS][41] -> [FAIL][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][43] -> [FAIL][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-snb-2600:        [PASS][45] -> [FAIL][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@i915_module_load@reload.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-adlp-4:         [PASS][47] -> [TIMEOUT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_suspend@basic-s2idle-without-i915.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][49] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - fi-rkl-guc:         NOTRUN -> [SKIP][50] +6 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-rkl-11600:       NOTRUN -> [SKIP][51] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@vgem_basic@create:
    - fi-adl-ddr5:        [PASS][52] -> [SKIP][53] +14 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@vgem_basic@create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-mmap:
    - bat-adlp-4:         [PASS][54] -> [SKIP][55] +13 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@vgem_basic@dmabuf-mmap.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@vgem_basic@dmabuf-mmap.html

  * igt@vgem_basic@mmap:
    - fi-rkl-guc:         [PASS][56] -> [SKIP][57] +14 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@vgem_basic@mmap.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@vgem_basic@mmap.html

  * igt@vgem_basic@setversion:
    - fi-rkl-11600:       [PASS][58] -> [SKIP][59] +14 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@vgem_basic@setversion.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-adl-ddr5:        [SKIP][60] ([i915#4613]) -> [SKIP][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-adlp-4:         [SKIP][62] ([i915#4613]) -> [SKIP][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-4:         [SKIP][64] ([i915#3546]) -> [SKIP][65] +6 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlp-4:         [SKIP][66] ([fdo#109295] / [i915#3546] / [i915#3708]) -> [SKIP][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-fence-flip.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - fi-rkl-guc:         [SKIP][68] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       [SKIP][70] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@prime_vgem@basic-read.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-adl-ddr5:        [SKIP][72] ([fdo#109295] / [i915#3301]) -> [SKIP][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html
    - bat-adlp-4:         [SKIP][74] ([fdo#109295] / [i915#3301] / [i915#3708]) -> [SKIP][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-userptr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html
    - fi-rkl-guc:         [SKIP][76] ([fdo#109295] / [i915#3301] / [i915#3708]) -> [SKIP][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@prime_vgem@basic-userptr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       [SKIP][78] ([fdo#109295] / [i915#3301] / [i915#3708]) -> [SKIP][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@prime_vgem@basic-userptr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-adl-ddr5:        [SKIP][80] ([fdo#109295] / [i915#3291]) -> [SKIP][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@prime_vgem@basic-write.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@prime_vgem@basic-write.html
    - bat-adlp-4:         [SKIP][82] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-write.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-write.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_linear_blits@basic:
    - {bat-rplp-1}:       [PASS][84] -> [SKIP][85] +98 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_linear_blits@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][86] +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - {bat-rplp-1}:       [SKIP][87] ([i915#4613]) -> [SKIP][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - {fi-jsl-1}:         [SKIP][89] ([i915#4613]) -> [SKIP][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html
    - {bat-rpls-1}:       [SKIP][91] ([i915#4613]) -> [SKIP][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
    - {fi-ehl-2}:         [SKIP][93] ([i915#4613]) -> [SKIP][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - {bat-rpls-2}:       [SKIP][95] ([i915#4613]) -> [SKIP][96] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - {bat-rplp-1}:       [SKIP][97] ([i915#3282]) -> [SKIP][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_tiled_pread_basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - {fi-jsl-1}:         [PASS][99] -> [FAIL][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@i915_module_load@load.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@i915_module_load@load.html
    - {bat-rpls-1}:       [PASS][101] -> [FAIL][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@i915_module_load@load.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [PASS][103] -> [FAIL][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@i915_module_load@reload.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@i915_module_load@reload.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][105] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-tgl-dsi/igt@i915_module_load@reload.html
    - {bat-rplp-1}:       [PASS][106] -> [FAIL][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@i915_module_load@reload.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@i915_module_load@reload.html
    - {bat-dg2-9}:        [PASS][108] -> [FAIL][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@i915_module_load@reload.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@i915_module_load@reload.html
    - {bat-rpls-2}:       [PASS][110] -> [FAIL][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@i915_module_load@reload.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@i915_module_load@reload.html
    - {bat-dg2-8}:        [PASS][112] -> [FAIL][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@i915_module_load@reload.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [DMESG-WARN][114] ([i915#5537]) -> [SKIP][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - {bat-rplp-1}:       [SKIP][116] ([i915#6621]) -> [SKIP][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - {bat-dg2-9}:        [SKIP][118] ([i915#4212]) -> [SKIP][119] +7 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - {bat-dg2-8}:        [SKIP][120] ([i915#4212]) -> [SKIP][121] +7 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - {bat-dg2-9}:        [PASS][122] -> [SKIP][123] +41 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@unused-offsets:
    - {bat-dg2-8}:        [PASS][124] -> [SKIP][125] +41 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_chamelium@dp-crc-fast:
    - {bat-dg2-9}:        [SKIP][126] ([fdo#111827]) -> [SKIP][127] +7 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_chamelium@dp-crc-fast.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - {bat-dg2-8}:        [SKIP][128] ([fdo#111827]) -> [SKIP][129] +7 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - {bat-rplp-1}:       [SKIP][130] ([fdo#111827]) -> [SKIP][131] +8 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_chamelium@hdmi-hpd-fast.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - {bat-rplp-1}:       [SKIP][132] ([i915#4103] / [i915#4213]) -> [SKIP][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - {bat-dg2-9}:        [SKIP][134] ([i915#4103] / [i915#4213]) -> [SKIP][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - {bat-dg2-9}:        NOTRUN -> [SKIP][136] +11 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - {bat-rplp-1}:       [SKIP][137] ([i915#4093]) -> [SKIP][138] +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
    - {bat-dg2-9}:        [SKIP][139] ([fdo#109285]) -> [SKIP][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
    - {bat-dg2-8}:        [SKIP][141] ([fdo#109285]) -> [SKIP][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - {bat-dg2-9}:        [SKIP][143] ([i915#5274]) -> [SKIP][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - {bat-dg2-8}:        [SKIP][145] ([i915#5274]) -> [SKIP][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck:
    - {bat-rpls-1}:       [SKIP][147] ([i915#1845]) -> [SKIP][148] +5 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
    - {fi-ehl-2}:         NOTRUN -> [SKIP][149] +6 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - {bat-rplp-1}:       NOTRUN -> [SKIP][150] +24 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@read-crc:
    - {bat-rpls-2}:       NOTRUN -> [SKIP][151] +5 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html
    - {bat-dg2-8}:        [SKIP][152] ([i915#5354]) -> [SKIP][153] +12 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - {fi-jsl-1}:         NOTRUN -> [SKIP][154] +6 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - {bat-rplp-1}:       [SKIP][155] ([i915#1845]) -> [SKIP][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@primary_page_flip:
    - {bat-rplp-1}:       [SKIP][157] ([i915#1072]) -> [SKIP][158] +3 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - {bat-rplp-1}:       [SKIP][159] ([i915#3555] / [i915#4579]) -> [SKIP][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
    - {bat-dg2-9}:        [SKIP][161] ([i915#3555] / [i915#4579]) -> [SKIP][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - {bat-dg2-8}:        [SKIP][163] ([i915#3555] / [i915#4579]) -> [SKIP][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-dg2-9}:        [SKIP][165] ([i915#3708]) -> [SKIP][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
    - {bat-dg2-8}:        [SKIP][167] ([i915#3708] / [i915#5354]) -> [SKIP][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
    - {bat-rpls-1}:       [SKIP][169] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [SKIP][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - {bat-dg2-8}:        [SKIP][171] ([i915#3708] / [i915#4077]) -> [SKIP][172] +1 similar issue
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
    - {bat-dg2-9}:        [SKIP][173] ([i915#3708] / [i915#4077]) -> [SKIP][174] +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - {bat-rpls-2}:       [SKIP][175] ([fdo#109295] / [i915#3708]) -> [SKIP][176] +3 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@prime_vgem@basic-fence-read.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - {bat-rplp-1}:       [SKIP][177] ([i915#3708]) -> [SKIP][178] +3 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@prime_vgem@basic-read.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - {bat-dg2-9}:        [SKIP][179] ([i915#3708] / [i915#4873]) -> [SKIP][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-userptr.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-userptr.html
    - {bat-dg2-8}:        [SKIP][181] ([i915#3708] / [i915#4873]) -> [SKIP][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-userptr.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-userptr.html
    - {fi-jsl-1}:         [SKIP][183] ([fdo#109295] / [i915#3301]) -> [SKIP][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@prime_vgem@basic-userptr.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-2}:         [SKIP][185] ([fdo#109295] / [i915#3301]) -> [SKIP][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@prime_vgem@basic-userptr.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - {bat-dg2-9}:        [SKIP][187] ([i915#3291] / [i915#3708]) -> [SKIP][188] +2 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-write.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-write.html
    - {bat-dg2-8}:        [SKIP][189] ([i915#3291] / [i915#3708]) -> [SKIP][190] +2 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-write.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-write.html
    - {bat-rpls-1}:       [SKIP][191] ([fdo#109295] / [i915#3708]) -> [SKIP][192] +3 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@prime_vgem@basic-write.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@create:
    - {fi-ehl-2}:         [PASS][193] -> [SKIP][194] +17 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@vgem_basic@create.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-fence-before:
    - {bat-rpls-1}:       [PASS][195] -> [SKIP][196] +16 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@vgem_basic@dmabuf-fence-before.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@vgem_basic@dmabuf-fence-before.html

  * igt@vgem_basic@dmabuf-mmap:
    - {bat-rpls-2}:       [PASS][197] -> [SKIP][198] +16 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html

  * igt@vgem_basic@unload:
    - {fi-jsl-1}:         [PASS][199] -> [SKIP][200] +17 similar issues
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@vgem_basic@unload.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_108206v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-rkl-guc:         [PASS][201] -> [SKIP][202] ([i915#2575]) +41 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@core_auth@basic-auth.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-hsw-4770:        [PASS][203] -> [SKIP][204] ([fdo#109271] / [fdo#109315]) +39 similar issues
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      [PASS][205] -> [SKIP][206] ([fdo#109271]) +108 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html

  * igt@gem_basic@create-close:
    - fi-elk-e7500:       [PASS][207] -> [SKIP][208] ([fdo#109271]) +97 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-elk-e7500/igt@gem_basic@create-close.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@gem_basic@create-close.html
    - fi-bsw-nick:        [PASS][209] -> [SKIP][210] ([fdo#109271]) +98 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@gem_basic@create-close.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@gem_basic@create-close.html

  * igt@gem_busy@busy:
    - fi-elk-e7500:       NOTRUN -> [SKIP][211] ([fdo#109271]) +26 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@gem_busy@busy.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][212] ([fdo#109271] / [fdo#109315]) +12 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_busy@busy.html

  * igt@gem_exec_fence@basic-await:
    - fi-skl-6600u:       NOTRUN -> [SKIP][213] ([fdo#109271]) +25 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-wait:
    - bat-adlp-4:         NOTRUN -> [SKIP][214] ([i915#2575]) +11 similar issues
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_exec_fence@basic-wait.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][215] ([fdo#109271]) +11 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][216] ([fdo#109271]) +11 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-hsw-4770:        NOTRUN -> [SKIP][217] ([fdo#109271] / [fdo#109315]) +10 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_parallel@engines:
    - fi-rkl-guc:         NOTRUN -> [SKIP][218] ([fdo#109315]) +12 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_exec_parallel@engines.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][219] ([fdo#109271]) +25 similar issues
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_exec_parallel@engines.html

  * igt@gem_render_linear_blits@basic:
    - fi-rkl-11600:       [PASS][220] -> [SKIP][221] ([fdo#109315]) +40 similar issues
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_render_linear_blits@basic.html

  * igt@gem_softpin@allocator-basic:
    - fi-rkl-guc:         [PASS][222] -> [SKIP][223] ([fdo#109315]) +40 similar issues
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_softpin@allocator-basic.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_softpin@allocator-basic.html

  * igt@gem_tiled_blits@basic:
    - fi-hsw-g3258:       [PASS][224] -> [SKIP][225] ([fdo#109271] / [fdo#109315]) +39 similar issues
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@gem_tiled_blits@basic.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_tiled_blits@basic.html

  * igt@gem_wait@busy:
    - fi-snb-2520m:       NOTRUN -> [SKIP][226] ([fdo#109271]) +22 similar issues
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@gem_wait@busy.html

  * igt@gem_wait@wait:
    - fi-rkl-11600:       NOTRUN -> [SKIP][227] ([fdo#109315]) +10 similar issues
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_wait@wait.html
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][228] ([fdo#109271]) +9 similar issues
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@gem_wait@wait.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2520m:       [PASS][229] -> [SKIP][230] ([fdo#109271]) +99 similar issues
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@i915_getparams_basic@basic-eu-total.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-rkl-guc:         [PASS][231] -> [SKIP][232] ([i915#5174]) +2 similar issues
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-11600:       [PASS][233] -> [SKIP][234] ([i915#5174]) +2 similar issues
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
    - fi-adl-ddr5:        [PASS][235] -> [SKIP][236] ([i915#5174]) +2 similar issues
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
    - bat-adlp-4:         [PASS][237] -> [SKIP][238] ([i915#5174]) +2 similar issues
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][239] ([i915#4528])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][240] -> [INCOMPLETE][241] ([i915#4785])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][242] -> [INCOMPLETE][243] ([i915#5982])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-glk-j4005:       [PASS][244] -> [SKIP][245] ([fdo#109271]) +104 similar issues
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@basic:
    - fi-hsw-4770:        [PASS][246] -> [SKIP][247] ([fdo#109271]) +62 similar issues
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_addfb_basic@basic.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_addfb_basic@basic.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - fi-hsw-g3258:       [PASS][248] -> [SKIP][249] ([fdo#109271]) +62 similar issues
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-blb-e6850:       [PASS][250] -> [SKIP][251] ([fdo#109271]) +94 similar issues
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-rkl-11600:       [PASS][252] -> [SKIP][253] ([i915#2575]) +41 similar issues
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - fi-snb-2600:        [PASS][254] -> [SKIP][255] ([fdo#109271]) +99 similar issues
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-cfl-8109u:       [PASS][256] -> [SKIP][257] ([fdo#109271]) +104 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
    - bat-adlp-4:         [PASS][258] -> [SKIP][259] ([i915#2575]) +78 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-7567u:       [PASS][260] -> [SKIP][261] ([fdo#109271]) +102 similar issues
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@size-max:
    - fi-adl-ddr5:        [PASS][262] -> [SKIP][263] ([i915#2575]) +83 similar issues
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@small-bo:
    - fi-skl-6600u:       [PASS][264] -> [SKIP][265] ([fdo#109271]) +109 similar issues
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
    - fi-glk-dsi:         [PASS][266] -> [SKIP][267] ([fdo#109271]) +102 similar issues
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@kms_addfb_basic@small-bo.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_addfb_basic@small-bo.html

  * igt@kms_busy@basic:
    - fi-ivb-3770:        NOTRUN -> [SKIP][268] ([fdo#109271]) +26 similar issues
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - fi-cfl-guc:         NOTRUN -> [SKIP][269] ([fdo#109271]) +25 similar issues
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][270] ([fdo#109271]) +25 similar issues
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor:
    - fi-rkl-guc:         NOTRUN -> [SKIP][271] ([i915#2575]) +5 similar issues
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][272] ([fdo#109271]) +26 similar issues
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-adl-ddr5:        NOTRUN -> [SKIP][273] ([i915#2575]) +18 similar issues
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][274] ([fdo#109271]) +25 similar issues
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck:
    - fi-blb-e6850:       NOTRUN -> [SKIP][275] ([fdo#109271]) +23 similar issues
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][276] ([i915#2575]) +5 similar issues
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_pipe_crc_basic@hang-read-crc.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][277] ([fdo#109271]) +13 similar issues
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-pnv-d510:        NOTRUN -> [SKIP][278] ([fdo#109271]) +23 similar issues
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][279] ([fdo#109271]) +25 similar issues
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - fi-snb-2600:        NOTRUN -> [SKIP][280] ([fdo#109271]) +23 similar issues
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-hsw-4770:        NOTRUN -> [SKIP][281] ([fdo#109271]) +12 similar issues
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_pipe_crc_basic@read-crc.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][282] ([fdo#109271]) +25 similar issues
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bdw-gvtdvm:      [PASS][283] -> [SKIP][284] ([fdo#109271]) +98 similar issues
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@prime_vgem@basic-fence-mmap.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@prime_vgem@basic-fence-mmap.html
    - fi-pnv-d510:        [PASS][285] -> [SKIP][286] ([fdo#109271]) +94 similar issues
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][287] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@runner@aborted.html

  * igt@vgem_basic@create:
    - fi-bsw-kefka:       [PASS][288] -> [SKIP][289] ([fdo#109271]) +100 similar issues
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@vgem_basic@create.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-cfl-8700k:       [PASS][290] -> [SKIP][291] ([fdo#109271]) +104 similar issues
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@vgem_basic@dmabuf-fence.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@vgem_basic@dmabuf-fence.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-cfl-guc:         [PASS][292] -> [SKIP][293] ([fdo#109271]) +105 similar issues
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html

  * igt@vgem_basic@second-client:
    - fi-ivb-3770:        [PASS][294] -> [SKIP][295] ([fdo#109271]) +99 similar issues
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@vgem_basic@second-client.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@vgem_basic@second-client.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][296] ([i915#4528]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       [SKIP][298] ([fdo#109271] / [i915#2190]) -> [SKIP][299] ([fdo#109271])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       [SKIP][300] ([fdo#109271] / [i915#2190]) -> [SKIP][301] ([fdo#109271])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-hsw-g3258:       [SKIP][302] ([fdo#109271]) -> [SKIP][303] ([fdo#109271] / [fdo#109315]) +2 similar issues
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@gem_huc_copy@huc-copy.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_huc_copy@huc-copy.html
    - fi-glk-dsi:         [SKIP][304] ([fdo#109271] / [i915#2190]) -> [SKIP][305] ([fdo#109271])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][306] ([fdo#109271] / [i915#2190]) -> [SKIP][307] ([fdo#109271])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       [SKIP][308] ([i915#2190]) -> [SKIP][309] ([fdo#109315])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       [SKIP][310] ([fdo#109271] / [i915#2190]) -> [SKIP][311] ([fdo#109271])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       [SKIP][312] ([fdo#109271] / [i915#2190]) -> [SKIP][313] ([fdo#109271])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      [SKIP][314] ([fdo#109271] / [i915#2190]) -> [SKIP][315] ([fdo#109271])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       [SKIP][316] ([fdo#109271] / [i915#4613]) -> [SKIP][317] ([fdo#109271]) +3 similar issues
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - fi-rkl-guc:         [SKIP][318] ([i915#4613]) -> [SKIP][319] ([i915#5775]) +3 similar issues
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
    - fi-skl-6700k2:      [SKIP][320] ([fdo#109271] / [i915#4613]) -> [SKIP][321] ([fdo#109271]) +3 similar issues
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       [SKIP][322] ([fdo#109271] / [i915#4613]) -> [SKIP][323] ([fdo#109271]) +3 similar issues
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       [SKIP][324] ([fdo#109271] / [i915#4613]) -> [SKIP][325] ([fdo#109271]) +3 similar issues
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-rkl-11600:       [SKIP][326] ([i915#4613]) -> [SKIP][327] ([i915#5775]) +3 similar issues
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       [SKIP][328] ([fdo#109271] / [i915#4613]) -> [SKIP][329] ([fdo#109271]) +3 similar issues
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         [SKIP][330] ([fdo#109271] / [i915#4613]) -> [SKIP][331] ([fdo#109271]) +3 similar issues
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-glk-dsi:         [SKIP][332] ([fdo#109271] / [i915#4613]) -> [SKIP][333] ([fdo#109271]) +3 similar issues
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@gem_lmem_swapping@verify-random.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       [SKIP][334] ([fdo#109271] / [i915#4613]) -> [SKIP][335] ([fdo#109271]) +3 similar issues
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        [SKIP][336] ([fdo#109271]) -> [SKIP][337] ([fdo#109271] / [fdo#109315]) +2 similar issues
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       [SKIP][338] ([i915#3282]) -> [SKIP][339] ([fdo#109315])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_tiled_pread_basic.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - fi-rkl-guc:         [SKIP][340] ([i915#3282]) -> [SKIP][341] ([fdo#109315])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_tiled_pread_basic.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_tiled_pread_basic.html
    - bat-adlp-4:         [SKIP][342] ([i915#3282]) -> [SKIP][343] ([i915#2575])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@gem_tiled_pread_basic.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_tiled_pread_basic.html
    - fi-adl-ddr5:        [SKIP][344] ([i915#3282]) -> [SKIP][345] ([i915#2575])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@gem_tiled_pread_basic.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-g3258:       [SKIP][346] ([fdo#109271] / [i915#3012]) -> [SKIP][347] ([fdo#109271] / [fdo#109315])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html
    - fi-adl-ddr5:        [SKIP][348] ([i915#1155]) -> [SKIP][349] ([i915#2575])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-guc:         [SKIP][350] ([i915#3012]) -> [SKIP][351] ([fdo#109315])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-11600:       [SKIP][352] ([i915#3012]) -> [SKIP][353] ([fdo#109315])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
    - fi-hsw-4770:        [SKIP][354] ([fdo#109271] / [i915#3012]) -> [SKIP][355] ([fdo#109271] / [fdo#109315])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html
    - bat-adlp-4:         [SKIP][356] ([i915#1155]) -> [SKIP][357] ([i915#2575])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - fi-rkl-guc:         [SKIP][358] ([i915#6621]) -> [SKIP][359] ([fdo#109315])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
    - bat-adlp-4:         [SKIP][360] ([i915#6621]) -> [SKIP][361] ([i915#2575])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_rps@basic-api.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-ivb-3770:        [SKIP][362] ([fdo#109271] / [fdo#111827]) -> [SKIP][363] ([fdo#109271]) +8 similar issues
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cfl-guc:         [SKIP][364] ([fdo#109271] / [fdo#111827]) -> [SKIP][365] ([fdo#109271]) +8 similar issues
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-glk-dsi:         [SKIP][366] ([fdo#109271] / [fdo#111827]) -> [SKIP][367] ([fdo#109271]) +8 similar issues
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@kms_chamelium@dp-crc-fast.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-hsw-4770:        [SKIP][368] ([fdo#109271] / [fdo#111827]) -> [SKIP][369] ([fdo#109271]) +7 similar issues
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
    - fi-cfl-8109u:       [SKIP][370] ([fdo#109271] / [fdo#111827]) -> [SKIP][371] ([fdo#109271]) +8 similar issues
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html
    - bat-adlp-4:         [SKIP][372] ([fdo#111827]) -> [SKIP][373] ([i915#2575]) +8 similar issues
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-bsw-kefka:       [SKIP][374] ([fdo#109271] / [fdo#111827]) -> [SKIP][375] ([fdo#109271]) +8 similar issues
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@kms_chamelium@dp-edid-read.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@kms_chamelium@dp-edid-read.html
    - fi-adl-ddr5:        [SKIP][376] ([fdo#111827]) -> [SKIP][377] ([i915#2575]) +8 similar issues
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-kbl-7567u:       [SKIP][378] ([fdo#109271] / [fdo#111827]) -> [SKIP][379] ([fdo#109271]) +8 similar issues
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cfl-8700k:       [SKIP][380] ([fdo#109271] / [fdo#111827]) -> [SKIP][381] ([fdo#109271]) +8 similar issues
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6600u:       [SKIP][382] ([fdo#109271] / [fdo#111827]) -> [SKIP][383] ([fdo#109271]) +8 similar issues
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-snb-2520m:       [SKIP][384] ([fdo#109271] / [fdo#111827]) -> [SKIP][385] ([fdo#109271]) +8 similar issues
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-glk-j4005:       [SKIP][386] ([fdo#109271] / [fdo#111827]) -> [SKIP][387] ([fdo#109271]) +8 similar issues
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-rkl-guc:         [SKIP][388] ([fdo#111827]) -> [SKIP][389] ([i915#2575]) +8 similar issues
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-hsw-g3258:       [SKIP][390] ([fdo#109271] / [fdo#111827]) -> [SKIP][391] ([fdo#109271]) +8 similar issues
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_chamelium@hdmi-edid-read.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bsw-nick:        [SKIP][392] ([fdo#109271] / [fdo#111827]) -> [SKIP][393] ([fdo#109271]) +8 similar issues
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-rkl-11600:       [SKIP][394] ([fdo#111827]) -> [SKIP][395] ([i915#2575]) +7 similar issues
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-bdw-gvtdvm:      [SKIP][396] ([fdo#109271] / [fdo#111827]) -> [SKIP][397] ([fdo#109271]) +7 similar issues
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-snb-2600:        [SKIP][398] ([fdo#109271] / [fdo#111827]) -> [SKIP][399] ([fdo#109271]) +8 similar issues
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       [SKIP][400] ([i915#4103]) -> [SKIP][401] ([i915#2575])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-adl-ddr5:        [SKIP][402] ([i915#4103]) -> [SKIP][403] ([i915#2575])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-rkl-guc:         [SKIP][404] ([i915#4103]) -> [SKIP][405] ([i915#2575])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlp-4:         [SKIP][406] ([i915#3637]) -> [SKIP][407] ([i915#2575]) +3 similar issues
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_flip@basic-plain-flip.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       [SKIP][408] ([fdo#109285] / [i915#4098]) -> [SKIP][409] ([i915#2575])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-adl-ddr5:        [SKIP][410] ([fdo#109285]) -> [SKIP][411] ([i915#2575])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-guc:         [SKIP][412] ([fdo#109285]) -> [SKIP][413] ([i915#2575])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         [SKIP][414] ([i915#4093]) -> [SKIP][415] ([i915#2575]) +3 similar issues
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-4:         [SKIP][416] ([i915#4342]) -> [SKIP][417] ([i915#2575])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_frontbuffer_tracking@basic.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-adlp-4:         [SKIP][418] ([i915#3546]) -> [SKIP][419] ([i915#2575]) +3 similar issues
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_pipe_crc_basic@hang-read-crc.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - fi-hsw-g3258:       [SKIP][420] ([fdo#109271] / [i915#1072]) -> [SKIP][421] ([fdo#109271] / [fdo#109315]) +3 similar issues
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_psr@cursor_plane_move.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_psr@cursor_plane_move.html
    - fi-adl-ddr5:        [SKIP][422] ([i915#1072]) -> [SKIP][423] ([i915#2575]) +3 similar issues
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-rkl-guc:         [SKIP][424] ([i915#1072]) -> [SKIP][425] ([fdo#109315]) +3 similar issues
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-11600:       [SKIP][426] ([i915#1072]) -> [SKIP][427] ([fdo#109315]) +3 similar issues
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        [SKIP][428] ([fdo#109271] / [i915#1072]) -> [SKIP][429] ([fdo#109271] / [fdo#109315]) +3 similar issues
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html
    - bat-adlp-4:         [SKIP][430] ([i915#1072]) -> [SKIP][431] ([i915#2575]) +3 similar issues
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_psr@sprite_plane_onoff.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-guc:         [SKIP][432] ([i915#3555] / [i915#4098]) -> [SKIP][433] ([i915#2575])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       [SKIP][434] ([i915#3555] / [i915#4098]) -> [SKIP][435] ([i915#2575])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-adl-ddr5:        [SKIP][436] ([i915#3555]) -> [SKIP][437] ([i915#2575])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-4:         [SKIP][438] ([i915#3555] / [i915#4579]) -> [SKIP][439] ([i915#2575])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6580]: https://gitlab.freedesktop.org/drm/intel/issues/6580
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6670]: https://gitlab.freedesktop.org/drm/intel/issues/6670


Build changes
-------------

  * Linux: CI_DRM_12116 -> Patchwork_108206v2

  CI-20190529: 20190529
  CI_DRM_12116: 7d406f0624e8824e32bc57c5523786c96fd227db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108206v2: 7d406f0624e8824e32bc57c5523786c96fd227db @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9cddeca967d9 drm: Introduce skip_legacy_minors modparam
2f957c66cb59 drm: Expand max DRM device number to full MINORBITS
748fed922198 drm: Use XArray instead of IDR for minors

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/index.html

--===============4640459380203424615==
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
<tr><td><b>Series:</b></td><td>drm: Use full allocated minor range for DRM (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108206/">https://patchwork.freedesktop.org/series/108206/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12116 -&gt; Patchwork_108206v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108206v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108206v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108206v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_suspend@basic-s2idle-without-i915.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@vgem_basic@create.html">SKIP</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@vgem_basic@dmabuf-mmap.html">SKIP</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@mmap:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@vgem_basic@mmap.html">SKIP</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@vgem_basic@setversion.html">SKIP</a> +14 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@prime_vgem@basic-write.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_linear_blits@basic.html">SKIP</a> +98 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@i915_module_load@load.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-tgl-dsi/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@i915_module_load@reload.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> +7 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">SKIP</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">SKIP</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +12 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@prime_vgem@basic-write.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ehl-2/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ehl-2/igt@vgem_basic@create.html">SKIP</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence-before:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-1/igt@vgem_basic@dmabuf-fence-before.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-1/igt@vgem_basic@dmabuf-fence-before.html">SKIP</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">SKIP</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-jsl-1/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-jsl-1/igt@vgem_basic@unload.html">SKIP</a> +17 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108206v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@core_auth@basic-auth.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +39 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +108 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-elk-e7500/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@gem_basic@create-close.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +97 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@gem_basic@create-close.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +98 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-elk-e7500/igt@gem_busy@busy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_busy@busy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +12 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +11 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@gem_exec_fence@nb-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_exec_parallel@engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +12 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_exec_parallel@engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@gem_wait@busy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_wait@wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +10 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@gem_wait@wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +104 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_addfb_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_addfb_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_addfb_basic@basic-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +104 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +78 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +102 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +109 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_addfb_basic@small-bo.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +102 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@kms_busy@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 similar issues</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +98 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +94 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@vgem_basic@create.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +100 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@vgem_basic@dmabuf-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@vgem_basic@dmabuf-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +104 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +105 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@second-client:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@vgem_basic@second-client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@vgem_basic@second-client.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +99 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +2 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5775">i915#5775</a>) +3 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5775">i915#5775</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-dsi/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-dsi/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-kefka/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-kefka/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +7 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-g3258/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-g3258/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12116/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12116 -&gt; Patchwork_108206v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12116: 7d406f0624e8824e32bc57c5523786c96fd227db @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108206v2: 7d406f0624e8824e32bc57c5523786c96fd227db @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9cddeca967d9 drm: Introduce skip_legacy_minors modparam<br />
2f957c66cb59 drm: Expand max DRM device number to full MINORBITS<br />
748fed922198 drm: Use XArray instead of IDR for minors</p>

</body>
</html>

--===============4640459380203424615==--
