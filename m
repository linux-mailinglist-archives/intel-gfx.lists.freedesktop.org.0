Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB224C3AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 02:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518B410E1C9;
	Fri, 25 Feb 2022 01:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4185D10E1BC;
 Fri, 25 Feb 2022 01:12:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BD6DAA0ED;
 Fri, 25 Feb 2022 01:12:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9037128368921042983=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 25 Feb 2022 01:12:28 -0000
Message-ID: <164575154821.6270.12763400801417615615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220223165421.3949883-1-matthew.d.roper@intel.com>
In-Reply-To: <20220223165421.3949883-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Skip_output_init_on_PHY_calibration_failure?=
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

--===============9037128368921042983==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Skip output init on PHY calibration failure
URL   : https://patchwork.freedesktop.org/series/100650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11277_full -> Patchwork_22388_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22388_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4386])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +166 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#232])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-tglb6/igt@gem_eio@kms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2846])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][58] -> [DMESG-WARN][59] ([i915#118])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][64] ([i915#2658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/igt@gem_pread@exhaustion.html
    - shard-iclb:         NOTRUN -> [WARN][65] ([i915#2658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#4270])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#4171])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#3743])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-skl:          [PASS][77] -> [DMESG-WARN][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +83 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109278] / [i915#3886])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +7 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886]) +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [i915#1149])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color@pipe-d-gamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [PASS][93] -> [SKIP][94] ([fdo#109271])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109278]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-random:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#1888]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +126 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109274] / [fdo#111825])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109274] / [fdo#109278])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][100] -> [FAIL][101] ([i915#2346])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][102] ([i915#2346] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#426])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#2122])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109280] / [fdo#111825])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109280]) +5 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][108] ([i915#1188])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][110] -> [INCOMPLETE][111] ([i915#1888] / [i915#4939])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][112] ([i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][115] ([i915#265])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][117] -> [FAIL][118] ([fdo#108145] / [i915#265]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2733])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109441])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2437])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2437])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2530])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][128] -> [FAIL][129] ([i915#1542])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-tglb1/igt@perf@polling-parameterized.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb6/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109291]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994]) +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl9/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2994]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2994])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137] +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][138] ([i915#4281]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][140] ([i915#118]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-skl:          [DMESG-WARN][142] ([i915#1982]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][144] ([i915#2346]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-apl:          [FAIL][146] ([i915#2346]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][148] ([i915#2122]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [DMESG-WARN][150] ([i915#2411] / [i915#2867]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][152] ([i915#2122]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][154] ([i915#3701]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [FAIL][156] ([i915#1888] / [i915#2546]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][158] ([i915#1188]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-skl4/igt@kms_hdr@bpc-switch.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-iclb:         [FAIL][160] ([i915#1888]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-iclb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][162] ([fdo#108145] / [i915#265

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/index.html

--===============9037128368921042983==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Skip output init on PHY calibr=
ation failure</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100650/">https://patchwork.freedesktop.org/series/100650/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22388/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11277_full -&gt; Patchwork_22388_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22388_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11277/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11277/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11277/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/sha=
rd-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11277/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11277/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11277/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1277/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11277/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11277/shard-apl8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22388/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-apl4/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl6/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html">SKIP</a> ([fdo#109271]) +166 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb3/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/sha=
rd-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2388/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
388/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a>=
 ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl7/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-=
random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-skl6/igt@gem_lmem_swapping@heavy-verify-=
random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-glk2/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-apl2/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gem_pxp@protected-encrypted-s=
rc-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22388/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-kbl6/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-kbl=
7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22388/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@gen7_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb6/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-=
180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22388/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rot=
ate-180.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +4 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-glk2/igt@kms_ccs@pipe-c-bad-aux-stride-=
y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_ccs@pipe-c-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color@pipe-d-gamma.html">=
SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color_chamelium@pipe-a-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_color_chamelium@pipe-d-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22388/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html=
">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-onscreen.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-random.html">SKIP</a> ([fdo#109271] / [i915#1888]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-onscreen.html">SKIP</a> ([fdo#109271]) +126 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-=
flipa-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-=
flipa-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22388/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22388/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible=
@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109280] / [fdo#11182=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +5 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl5/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22388/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">=
INCOMPLETE</a> ([i915#1888] / [i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22388/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_psr2_sf@plane-move-sf-dmg-a=
rea.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-a=
rea.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shar=
d-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.=
html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl9/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb5/igt@nouveau_crc@ctx-flip-threshol=
d-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-tglb1/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shar=
d-tglb6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-iclb7/igt@prime_nv_test@nv_i915_sharing=
.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-skl9/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-kbl3/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22388/shard-apl2/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22388/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@=
bcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22388/shard-apl2/igt@gem_ctx_isolation@preservation-s3@=
rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
88/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22388/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.htm=
l">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22388/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-6=
4x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22388/shard-apl1/igt@kms_cursor_legacy@flip-vs-cur=
sor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-glk1/igt@kms_flip@2=
x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1=
.html">DMESG-WARN</a> ([i915#2411] / [i915#2867]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-tglb1/igt@kms_flip@f=
lip-vs-suspend-interruptible@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22388/shard-skl6/igt@kms_flip@plain-flip-ts-check=
-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb3/igt@kms_flip_sca=
led_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">FAIL</a> ([i915#1888] / [i915#2546]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388/shard-iclb1/igt@kms_=
frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22388=
/shard-skl6/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11277/shard-iclb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.ht=
ml">FAIL</a> ([i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22388/shard-iclb1/igt@kms_pipe_crc_basic@suspend-read-c=
rc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          [FAIL][162] ([fdo#108145] / [i915#265</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9037128368921042983==--
