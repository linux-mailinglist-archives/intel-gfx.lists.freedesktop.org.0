Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4936347539E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 08:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00FD10E4A3;
	Wed, 15 Dec 2021 07:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE1F310E4A3;
 Wed, 15 Dec 2021 07:25:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97636AA0ED;
 Wed, 15 Dec 2021 07:25:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2534635779052533852=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 15 Dec 2021 07:25:17 -0000
Message-ID: <163955311757.18076.13164245627457032795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_preparation_for_multi_gt_patches?=
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

--===============2534635779052533852==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More preparation for multi gt patches
URL   : https://patchwork.freedesktop.org/series/98032/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11002_full -> Patchwork_21849_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21849_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21849_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21849_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@i915_suspend@sysfs-reader.html

  
Known issues
------------

  Here are the changes found in Patchwork_21849_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4338])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb2/igt@feature_discovery@psr2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb8/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#4547])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][68] -> [SKIP][69] ([i915#2190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#4613]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#4270])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +59 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#2856])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][78] ([i915#454])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#454])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#4281])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][82] -> [DMESG-WARN][83] ([i915#118])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111614]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [i915#1149])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][100] ([i915#1319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][101] ([i915#1319])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][102] ([i915#2105])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3319])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk2/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3359])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109278]) +6 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109279] / [i915#3359])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#72])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#111825]) +11 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-apl:          [PASS][112] -> [FAIL][113] ([i915#2346])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][114] -> [FAIL][115] ([i915#2346])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-forked-move:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +14 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@kms_cursor_legacy@pipe-d-forked-move.html

  * igt@kms_dsc@basic-dsc-enable:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#3840])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][118] -> [INCOMPLETE][119] ([i915#180] / [i915#1982])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][120] -> [INCOMPLETE][121] ([i915#180] / [i915#636])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109274]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2122]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#2122])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][127] -> [DMESG-WARN][128] ([i915#180]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2672])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][130] -> [SKIP][131] ([i915#3701])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2672])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109280]) +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][134] -> [FAIL][135] ([i915#1188])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#1187])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#533])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][138] ([i915#180])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][139] ([fdo#108145] / [i915#265])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][141] ([fdo#108145] / [i915#265]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([i915#3536])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#3536])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#2920])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_basic:
    - shard-tglb:         NOTRUN -> [FAIL][145] ([i915#132] / [i915#3467])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][146] -> [SKIP][147] ([fdo#109441]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109441]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][149] -> [FAIL][150] ([i915#31])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk6/igt@kms_setmode@basic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([fdo#109309])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271]) +77 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#2530]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@blocking:
    - shard-skl:          NOTRUN -> [FAIL][154] ([i915#1542])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@perf@blocking.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#1352])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl7/igt@perf@enable-disable.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl1/igt@perf@enable-disable.html

  * igt@sysfs_clients@fair-0:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([i915#2994]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@sysfs_clients@fair-0.html
    - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#2994]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#2994])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-7:
    - shard-iclb:         NOTRUN -> [SKIP][160] ([i915#2994])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#2994])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        ([PASS][162], [TIMEOUT][163]) ([i915#3063]) -> [PASS][164] +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-rkl-1/igt@gem_eio@unwedge-stress.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-rkl-6/igt@gem_eio@unwedge-stress.html

  * igt@gem_ex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/index.html

--===============2534635779052533852==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>More preparation for multi gt patches</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98032/">https://patchwork.freedesktop.org/series/98032/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21849/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11002_full -&gt; Patchwork_21849_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21849_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21849_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21849_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl8/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-=
skl10/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21849_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11002/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11002/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11002/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11002/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11002/shard-snb4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1002/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11002/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb5/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21849/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html">PAS=
S</a>) ([i915#4338])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-ic=
lb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21849/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-s=
kl8/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
49/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/sh=
ard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/s=
hard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/sh=
ard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-apl2/igt@gem_lmem_swapping@parallel-mult=
i.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-skl10/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-tglb6/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@gem_lmem_swapping@random-engin=
es.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_lmem_swapping@smem-oom.ht=
ml">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_pxp@fail-invalid-protecte=
d-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@gem_pxp@regular-baseline-src-c=
opy-readible.html">SKIP</a> ([fdo#109271]) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@i915_pm_dc@dc9-dpms.html">SKI=
P</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2184=
9/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-b-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-c-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_chamelium@dp-edid-change-d=
uring-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-=
skl6/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to=
-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color_chamelium@pipe-a-ct=
m-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_color_chamelium@pipe-b-ct=
m-0-75.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-glk2/igt@kms_cursor_crc@pipe-b-cursor-5=
12x170-rapid-movement.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
32x32-onscreen.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomi=
c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21849/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-ato=
mic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> ([fdo#111825]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21849/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</=
a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-forked-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl10/igt@kms_cursor_legacy@pipe-d-fork=
ed-move.html">SKIP</a> ([fdo#109271]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html=
">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11002/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-a=
pl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#=
1982])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11002/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-k=
bl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#=
636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21849/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21849/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FA=
IL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/s=
hard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21849/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-t=
o-32bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard=
-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_hdr@static-swap.html">SKI=
P</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl7/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_plane_lowres@pipe-b-tilin=
g-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_plane_lowres@pipe-c-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr@psr2_basic.html">FAIL=
</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/=
shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu=
.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_tv_load_detect@load-detec=
t.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl4/igt@perf@blocking.html">FAIL</a> (=
[i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11002/shard-skl7/igt@perf@enable-disable.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl1/i=
gt@perf@enable-disable.html">FAIL</a> ([i915#1352])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-tglb6/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([i915#2994]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21849/shard-apl2/igt@sysfs_clients@fair-0.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-skl4/igt@sysfs_clients@fair-1.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@sysfs_clients@fair-7.html">SK=
IP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11002/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-rkl-4/igt=
@gem_eio@unwedge-stress.html">TIMEOUT</a>) ([i915#3063]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-rkl-6/igt@gem=
_eio@unwedge-stress.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ex</p>
</li>
</ul>

</body>
</html>

--===============2534635779052533852==--
