Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7096A5C69
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 16:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A1D10E4E8;
	Tue, 28 Feb 2023 15:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82BCC10E4D9;
 Tue, 28 Feb 2023 15:53:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77CA3AADE6;
 Tue, 28 Feb 2023 15:53:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1732980105591408711=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 28 Feb 2023 15:53:12 -0000
Message-ID: <167759959243.15129.4640356158813244921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230228152612.19971-1-tzimmermann@suse.de>
In-Reply-To: <20230228152612.19971-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/shmem-helper=3A_Switch_to_reservation_lock=22?=
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

--===============1732980105591408711==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/shmem-helper: Switch to reservation lock"
URL   : https://patchwork.freedesktop.org/series/114478/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12790 -> Patchwork_114478v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/index.html

Participating hosts (2 -> 36)
------------------------------

  Additional (35): fi-rkl-11600 bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-apl-guc fi-pnv-d510 bat-rpls-1 fi-blb-e6850 bat-rpls-2 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-elk-e7500 bat-dg2-11 fi-bsw-nick fi-kbl-7567u bat-dg1-7 bat-adlp-9 fi-skl-guc fi-cfl-8700k fi-glk-j4005 bat-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114478v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-9:         NOTRUN -> [SKIP][2] ([i915#7456])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-6:         NOTRUN -> [SKIP][3] ([i915#7456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
    - bat-rplp-1:         NOTRUN -> [SKIP][4] ([i915#7456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@debugfs_test@basic-hwmon.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([i915#7456])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-3:          NOTRUN -> [SKIP][6] ([i915#7456])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
    - bat-adln-1:         NOTRUN -> [SKIP][7] ([i915#7456])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html
    - bat-adlm-1:         NOTRUN -> [SKIP][8] ([i915#7456])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          NOTRUN -> [SKIP][9] ([i915#7456])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#7456])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
    - bat-rpls-1:         NOTRUN -> [SKIP][11] ([i915#7456])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-adlm-1:         NOTRUN -> [SKIP][12] ([i915#2582]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@fbdev@eof.html

  * igt@fbdev@read:
    - bat-rpls-2:         NOTRUN -> [SKIP][13] ([i915#2582]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@fbdev@read.html

  * igt@fbdev@write:
    - bat-rpls-1:         NOTRUN -> [SKIP][14] ([i915#2582]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@fbdev@write.html
    - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#2582]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@fbdev@write.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][16] ([i915#6687] / [i915#7978])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][20] ([i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][22] ([i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-3:          NOTRUN -> [SKIP][24] ([i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2190])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - bat-jsl-3:          NOTRUN -> [SKIP][28] ([i915#4613]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][30] ([i915#4613]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#4613]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#4613]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - bat-adln-1:         NOTRUN -> [SKIP][33] ([i915#4613]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#4613]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][35] ([fdo#109271]) +53 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-adlm-1:         NOTRUN -> [SKIP][36] ([i915#4613]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-rplp-1:         NOTRUN -> [SKIP][37] ([i915#4613]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][38] ([i915#4613]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][39] ([i915#4613]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][40] ([fdo#109271]) +29 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
    - bat-rpls-1:         NOTRUN -> [SKIP][41] ([i915#4613]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
    - bat-adlp-6:         NOTRUN -> [SKIP][42] ([i915#4613]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#4613]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#4613]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#4613]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - bat-rpls-2:         NOTRUN -> [SKIP][47] ([i915#4613]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4613]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][49] ([i915#4613]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][50] ([i915#4083])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_mmap@basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][51] ([i915#4083])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_mmap@basic.html
    - bat-dg2-9:          NOTRUN -> [SKIP][52] ([i915#4083])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_mmap@basic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][53] ([i915#4083])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_mmap@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][54] ([i915#4083])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_mmap@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][55] ([i915#4083])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][56] ([i915#4077]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][57] ([i915#4077]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][58] ([i915#4079]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
    - bat-dg2-9:          NOTRUN -> [SKIP][59] ([i915#4079]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][60] ([i915#4077]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][61] ([i915#4077]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][62] ([i915#4077]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][63] ([i915#4077]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][64] ([i915#3282])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@gem_tiled_pread_basic.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][65] ([i915#3282])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][66] ([i915#4079]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_tiled_pread_basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][67] ([i915#4079]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_tiled_pread_basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][68] ([i915#3282])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@gem_tiled_pread_basic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][69] ([i915#4079]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_tiled_pread_basic.html
    - bat-adln-1:         NOTRUN -> [SKIP][70] ([i915#3282])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@gem_tiled_pread_basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][71] ([i915#4079]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_tiled_pread_basic.html
    - bat-adlm-1:         NOTRUN -> [SKIP][72] ([i915#3282])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@gem_tiled_pread_basic.html
    - bat-rplp-1:         NOTRUN -> [SKIP][73] ([i915#3282])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@gem_tiled_pread_basic.html
    - bat-rpls-2:         NOTRUN -> [SKIP][74] ([i915#3282])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@gem_tiled_pread_basic.html
    - bat-rpls-1:         NOTRUN -> [SKIP][75] ([i915#3282])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg2-8:          NOTRUN -> [SKIP][76] ([i915#5354] / [i915#7561])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_pm_backlight@basic-brightness.html
    - bat-adlm-1:         NOTRUN -> [SKIP][77] ([i915#7561])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@i915_pm_backlight@basic-brightness.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][78] ([i915#7561])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html
    - bat-rpls-1:         NOTRUN -> [SKIP][79] ([i915#7561])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_pm_backlight@basic-brightness.html
    - bat-rpls-2:         NOTRUN -> [SKIP][80] ([i915#7561])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html
    - bat-adlp-9:         NOTRUN -> [SKIP][81] ([i915#7561])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-6:          NOTRUN -> [SKIP][82] ([i915#7561])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][83] ([i915#7561])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-5:          NOTRUN -> [SKIP][84] ([i915#7561])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-7:          NOTRUN -> [SKIP][85] ([i915#7561])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg2-9:          NOTRUN -> [SKIP][86] ([i915#5354] / [i915#7561])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg2-11:         NOTRUN -> [SKIP][87] ([i915#5354] / [i915#7561])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][88] ([fdo#109271]) +30 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-elk-e7500/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-blb-e6850:       NOTRUN -> [SKIP][89] ([fdo#109271]) +38 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][90] ([i915#6621])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-rpls-2:         NOTRUN -> [SKIP][91] ([i915#6621])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_pm_rps@basic-api.html
    - bat-adlp-9:         NOTRUN -> [SKIP][92] ([i915#6621])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-dg1-6:          NOTRUN -> [SKIP][93] ([i915#6621])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         NOTRUN -> [SKIP][94] ([i915#6621])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         NOTRUN -> [SKIP][95] ([i915#6621])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          NOTRUN -> [SKIP][96] ([i915#6621])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          NOTRUN -> [SKIP][97] ([i915#6621])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         NOTRUN -> [SKIP][98] ([i915#6621])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         NOTRUN -> [SKIP][99] ([i915#6621])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          NOTRUN -> [SKIP][100] ([i915#6621])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-adlm-1:         NOTRUN -> [SKIP][101] ([i915#6621])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html
    - bat-rpls-1:         NOTRUN -> [SKIP][102] ([i915#6621])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][103] ([i915#5334])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][104] ([i915#4258])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         NOTRUN -> [ABORT][105] ([i915#4983])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][106] ([i915#6367])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - bat-adln-1:         NOTRUN -> [DMESG-FAIL][107] ([i915#6997])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][108] ([i915#7443])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg2-8:          NOTRUN -> [SKIP][109] ([i915#6645])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][110] ([i915#4212]) +7 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
    - bat-dg2-11:         NOTRUN -> [SKIP][111] ([i915#4212]) +7 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][112] ([i915#5190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][113] ([i915#5190])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         NOTRUN -> [SKIP][114] ([i915#5190])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][115] ([i915#4212]) +7 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][116] ([i915#4215] / [i915#5190])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][117] ([i915#4215] / [i915#5190])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][118] ([i915#4215])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          NOTRUN -> [SKIP][119] ([i915#4215])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         NOTRUN -> [SKIP][120] ([i915#4215] / [i915#5190])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          NOTRUN -> [SKIP][121] ([i915#4215])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][122] ([i915#4212]) +7 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-dg2-8:          NOTRUN -> [SKIP][123] ([i915#4212]) +7 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg1-6:          NOTRUN -> [SKIP][124] ([i915#4212]) +7 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_busy@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][125] ([i915#1845]) +14 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_busy@basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][126] ([i915#1845] / [i915#4303])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_busy@basic.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - fi-ilk-650:         NOTRUN -> [SKIP][127] ([fdo#109271]) +29 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-ilk-650/igt@kms_chamelium_edid@dp-edid-read.html
    - bat-jsl-1:          NOTRUN -> [SKIP][128] ([i915#7828]) +8 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_chamelium_edid@dp-edid-read.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][129] ([i915#7828]) +7 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][130] ([fdo#109271]) +19 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-guc/igt@kms_chamelium_edid@hdmi-edid-read.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][131] ([fdo#109271]) +14 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@kms_chamelium_edid@hdmi-edid-read.html
    - bat-rpls-2:         NOTRUN -> [SKIP][132] ([i915#7828]) +7 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - bat-adlm-1:         NOTRUN -> [SKIP][133] ([i915#7828]) +8 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_chamelium_frames@dp-crc-fast.html
    - bat-rplp-1:         NOTRUN -> [SKIP][134] ([i915#7828]) +8 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][135] ([fdo#109271]) +20 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-hsw-4770/igt@kms_chamelium_frames@hdmi-crc-fast.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][136] ([fdo#109271]) +19 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@kms_chamelium_frames@hdmi-crc-fast.html
    - bat-adln-1:         NOTRUN -> [SKIP][137] ([i915#7828]) +8 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_chamelium_frames@hdmi-crc-fast.html
    - bat-dg2-8:          NOTRUN -> [SKIP][138] ([i915#7828]) +8 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adlp-9:         NOTRUN -> [SKIP][139] ([i915#7828]) +8 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-dg1-6:          NOTRUN -> [SKIP][140] ([i915#7828]) +8 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-adlp-6:         NOTRUN -> [SKIP][141] ([i915#7828]) +8 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_chamelium_hpd@dp-hpd-fast.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][142] ([i915#7828]) +8 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][143] ([fdo#109271]) +19 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
    - bat-rpls-1:         NOTRUN -> [SKIP][144] ([i915#7828]) +7 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][145] ([fdo#109271]) +22 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - bat-dg1-5:          NOTRUN -> [SKIP][146] ([i915#7828]) +8 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - bat-dg1-7:          NOTRUN -> [SKIP][147] ([i915#7828]) +8 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - bat-jsl-3:          NOTRUN -> [SKIP][148] ([i915#7828]) +8 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - bat-dg2-9:          NOTRUN -> [SKIP][149] ([i915#7828]) +8 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - bat-dg2-11:         NOTRUN -> [SKIP][150] ([i915#7828]) +8 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][151] ([fdo#109271]) +19 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][152] ([i915#4103]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][153] ([i915#4103] / [i915#4213]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][154] ([i915#4103] / [i915#4213]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-adln-1:         NOTRUN -> [SKIP][155] ([i915#4213]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][156] ([i915#4103]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-rplp-1:         NOTRUN -> [SKIP][157] ([i915#4103] / [i915#4213]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][158] ([i915#4103]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-3:          NOTRUN -> [SKIP][159] ([i915#4103]) +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-9:          NOTRUN -> [SKIP][160] ([i915#4103] / [i915#4213]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][161] ([i915#4103] / [i915#4213]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][162] ([i915#4103]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-6:         NOTRUN -> [SKIP][163] ([i915#4103]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][164] ([i915#4103] / [i915#4213]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-rpls-1:         NOTRUN -> [SKIP][165] ([i915#1845]) +14 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
    - bat-dg1-7:          NOTRUN -> [SKIP][166] ([i915#1845]) +7 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-adlm-1:         NOTRUN -> [SKIP][167] ([i915#1845]) +15 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-guc:         NOTRUN -> [SKIP][168] ([fdo#109271] / [i915#1845]) +8 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-rpls-2:         NOTRUN -> [SKIP][169] ([i915#3637]) +3 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-rpls-1:         NOTRUN -> [SKIP][170] ([i915#3637]) +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-dg1-7:          NOTRUN -> [SKIP][171] ([i915#3637] / [i915#4078]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][172] ([i915#3637]) +3 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adln-1:         NOTRUN -> [SKIP][173] ([fdo#109285])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlm-1:         NOTRUN -> [SKIP][174] ([fdo#109285])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rplp-1:         NOTRUN -> [SKIP][175] ([fdo#109285])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][176] ([fdo#109285] / [i915#4098])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][177] ([fdo#109285])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-3:          NOTRUN -> [SKIP][178] ([fdo#109285])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-9:          NOTRUN -> [SKIP][179] ([fdo#109285])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rpls-2:         NOTRUN -> [SKIP][180] ([fdo#109285])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-8:          NOTRUN -> [SKIP][181] ([fdo#109285])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][182] ([fdo#109285])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rpls-1:         NOTRUN -> [SKIP][183] ([fdo#109285])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-6:         NOTRUN -> [SKIP][184] ([fdo#109285])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          NOTRUN -> [SKIP][185] ([fdo#109285])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-7:          NOTRUN -> [SKIP][186] ([fdo#109285])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-9:         NOTRUN -> [SKIP][187] ([fdo#109285])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-11:         NOTRUN -> [SKIP][188] ([fdo#109285])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-6:          NOTRUN -> [SKIP][189] ([fdo#109285])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][190] ([i915#5274])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-11:         NOTRUN -> [SKIP][191] ([i915#5274])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          NOTRUN -> [SKIP][192] ([i915#5274])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][193] ([i915#1849])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
    - bat-adlm-1:         NOTRUN -> [SKIP][194] ([i915#1849])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html
    - bat-rpls-1:         NOTRUN -> [SKIP][195] ([i915#1849])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][196] ([i915#4078]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-dg1-7:          NOTRUN -> [SKIP][197] ([i915#1845] / [i915#4078]) +6 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][198] ([i915#5354]) +2 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][199] ([fdo#109271]) +45 similar issues
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-kbl-guc:         NOTRUN -> [SKIP][200] ([fdo#109271]) +35 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][201] ([fdo#109271]) +15 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@kms_psr@cursor_plane_move.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][202] ([fdo#109271]) +27 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-ivb-3770/igt@kms_psr@cursor_plane_move.html
    - bat-dg2-8:          NOTRUN -> [SKIP][203] ([i915#1072]) +3 similar issues
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html
    - bat-adlm-1:         NOTRUN -> [SKIP][204] ([i915#1072]) +3 similar issues
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_psr@cursor_plane_move.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][205] ([fdo#110189]) +3 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html
    - bat-rpls-1:         NOTRUN -> [SKIP][206] ([i915#1072]) +3 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][207] ([fdo#109271]) +38 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
    - bat-rplp-1:         NOTRUN -> [SKIP][208] ([i915#1072]) +3 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rpls-2:         NOTRUN -> [SKIP][209] ([i915#1072]) +3 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html
    - bat-adlp-9:         NOTRUN -> [SKIP][210] ([i915#1072]) +3 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg1-6:          NOTRUN -> [SKIP][211] ([i915#1072] / [i915#4078]) +3 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html
    - bat-jsl-1:          NOTRUN -> [FAIL][212] ([i915#132] / [i915#3003]) +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_psr@sprite_plane_onoff.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][213] ([i915#1072]) +3 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg1-5:          NOTRUN -> [SKIP][214] ([i915#1072] / [i915#4078]) +3 similar issues
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg1-7:          NOTRUN -> [SKIP][215] ([i915#1072]) +3 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_psr@sprite_plane_onoff.html
    - bat-jsl-3:          NOTRUN -> [FAIL][216] ([i915#132] / [i915#3003]) +3 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg2-9:          NOTRUN -> [SKIP][217] ([i915#1072]) +3 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg2-11:         NOTRUN -> [SKIP][218] ([i915#1072]) +3 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][219] ([fdo#109271] / [i915#1072]) +3 similar issues
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         NOTRUN -> [SKIP][220] ([i915#3555] / [i915#4579])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-skl-guc:         NOTRUN -> [SKIP][221] ([fdo#109271]) +19 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-6:          NOTRUN -> [SKIP][222] ([i915#3555])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#4579])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rplp-1:         NOTRUN -> [SKIP][224] ([i915#3555] / [i915#4579])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][225] ([i915#3555] / [i915#4098])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][226] ([i915#3555])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-3:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#4579])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-9:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#4579])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-11:         NOTRUN -> [SKIP][229] ([i915#3555] / [i915#4579])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adln-1:         NOTRUN -> [SKIP][230] ([i915#3555] / [i915#4579])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#4579])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlm-1:         NOTRUN -> [SKIP][232] ([i915#3555])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#4579])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][234] ([i915#3555])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-1:         NOTRUN -> [SKIP][235] ([i915#3555])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          NOTRUN -> [SKIP][236] ([i915#3555])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-2:         NOTRUN -> [SKIP][237] ([i915#3555])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][238] ([i915#1845] / [i915#3708])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-9:          NOTRUN -> [SKIP][239] ([i915#3708])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-11:         NOTRUN -> [SKIP][240] ([i915#3708])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-8:          NOTRUN -> [SKIP][241] ([i915#3708])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
    - bat-adlm-1:         NOTRUN -> [SKIP][242] ([i915#1845] / [i915#3708])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rpls-1:         NOTRUN -> [SKIP][243] ([fdo#109295] / [i915#1845] / [i915#3708])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rpls-2:         NOTRUN -> [SKIP][244] ([fdo#109295] / [i915#1845] / [i915#3708])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][245] ([i915#3708] / [i915#4077]) +1 similar issue
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-11:         NOTRUN -> [SKIP][246] ([i915#3708] / [i915#4077]) +1 similar issue
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-8:          NOTRUN -> [SKIP][247] ([i915#3708] / [i915#4077]) +1 similar issue
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-9:          NOTRUN -> [SKIP][248] ([i915#3708] / [i915#4077]) +1 similar issue
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][249] ([fdo#109295] / [i915#3708]) +3 similar issues
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-9:         NOTRUN -> [SKIP][250] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-6:         NOTRUN -> [SKIP][251] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
    - bat-dg1-5:          NOTRUN -> [SKIP][252] ([i915#3708]) +3 similar issues
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html
    - bat-dg1-7:          NOTRUN -> [SKIP][253] ([i915#3708]) +2 similar issues
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          NOTRUN -> [SKIP][254] ([i915#3708] / [i915#4077]) +1 similar issue
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html
    - bat-dg1-6:          NOTRUN -> [SKIP][255] ([i915#3708] / [i915#4077]) +1 similar issue
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-dg2-11:         NOTRUN -> [SKIP][256] ([i915#3291] / [i915#3708]) +2 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-read.html
    - bat-dg1-6:          NOTRUN -> [SKIP][257] ([i915#3708]) +3 similar issues
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-read.html
    - bat-rplp-1:         NOTRUN -> [SKIP][258] ([i915#3708]) +3 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@prime_vgem@basic-read.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][259] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-jsl-3:          NOTRUN -> [SKIP][260] ([fdo#109295] / [i915#3301])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@prime_vgem@basic-userptr.html
    - bat-dg2-9:          NOTRUN -> [SKIP][261] ([i915#3708] / [i915#4873])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-userptr.html
    - bat-adln-1:         NOTRUN -> [SKIP][262] ([fdo#109295] / [i915#3301])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@prime_vgem@basic-userptr.html
    - bat-dg2-8:          NOTRUN -> [SKIP][263] ([i915#3708] / [i915#4873])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-userptr.html
    - bat-jsl-1:          NOTRUN -> [SKIP][264] ([fdo#109295] / [i915#3301])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@prime_vgem@basic-userptr.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][265] ([fdo#109295] / [i915#3301])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
    - bat-adlp-6:         NOTRUN -> [SKIP][266] ([fdo#109295] / [i915#3301] / [i915#3708])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@prime_vgem@basic-userptr.html
    - bat-dg1-5:          NOTRUN -> [SKIP][267] ([i915#3708] / [i915#4873])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html
    - bat-dg1-7:          NOTRUN -> [SKIP][268] ([i915#3708] / [i915#4873])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-userptr.html
    - bat-adlp-9:         NOTRUN -> [SKIP][269] ([fdo#109295] / [i915#3301] / [i915#3708])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@prime_vgem@basic-userptr.html
    - bat-dg2-11:         NOTRUN -> [SKIP][270] ([i915#3708] / [i915#4873])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-userptr.html
    - bat-dg1-6:          NOTRUN -> [SKIP][271] ([i915#3708] / [i915#4873])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][272] ([fdo#109295] / [i915#3301] / [i915#3708])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][273] ([i915#3291] / [i915#3708]) +2 similar issues
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-write.html
    - bat-adln-1:         NOTRUN -> [SKIP][274] ([fdo#109295] / [i915#3291]) +2 similar issues
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@prime_vgem@basic-write.html
    - bat-dg2-8:          NOTRUN -> [SKIP][275] ([i915#3291] / [i915#3708]) +2 similar issues
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-write.html
    - bat-adlm-1:         NOTRUN -> [SKIP][276] ([i915#3708]) +3 similar issues
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@prime_vgem@basic-write.html
    - bat-rpls-1:         NOTRUN -> [SKIP][277] ([fdo#109295] / [i915#3708]) +3 similar issues
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@prime_vgem@basic-write.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978


Build changes
-------------

  * Linux: CI_DRM_12790 -> Patchwork_114478v1

  CI-20190529: 20190529
  CI_DRM_12790: 92b7ba2b502495a393b6db904061b6938a09db17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7175: e825eb183729902489365e56bd99f15af2aa3316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114478v1: 92b7ba2b502495a393b6db904061b6938a09db17 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

32f602c02886 Revert "drm/shmem-helper: Switch to reservation lock"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/index.html

--===============1732980105591408711==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/shmem-helper: Switch to reservation lock&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114478/">https://patchwork.freedesktop.org/series/114478/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12790 -&gt; Patchwork_114478v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/index.html</p>
<h2>Participating hosts (2 -&gt; 36)</h2>
<p>Additional (35): fi-rkl-11600 bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-apl-guc fi-pnv-d510 bat-rpls-1 fi-blb-e6850 bat-rpls-2 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-elk-e7500 bat-dg2-11 fi-bsw-nick fi-kbl-7567u bat-dg1-7 bat-adlp-9 fi-skl-guc fi-cfl-8700k fi-glk-j4005 bat-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114478v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-elk-e7500/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-ilk-650/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-guc/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-6600u/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-hsw-4770/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8109u/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-cfl-8700k/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-apl-guc/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-kbl-7567u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-ivb-3770/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_psr@sprite_plane_onoff.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/132">i915#132</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3003">i915#3003</a>) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/132">i915#132</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3003">i915#3003</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-3/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-7/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlp-9/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-11/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg1-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adln-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-adlm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114478v1/bat-rpls-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12790 -&gt; Patchwork_114478v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12790: 92b7ba2b502495a393b6db904061b6938a09db17 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7175: e825eb183729902489365e56bd99f15af2aa3316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114478v1: 92b7ba2b502495a393b6db904061b6938a09db17 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>32f602c02886 Revert "drm/shmem-helper: Switch to reservation lock"</p>

</body>
</html>

--===============1732980105591408711==--
