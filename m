Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4161345CCD1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 20:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26E86E0F3;
	Wed, 24 Nov 2021 19:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD5306E0F3;
 Wed, 24 Nov 2021 19:12:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4EB3A008A;
 Wed, 24 Nov 2021 19:12:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0941632881462367982=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 24 Nov 2021 19:12:11 -0000
Message-ID: <163778113177.25293.9944943042210262357@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev11=29?=
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

--===============0941632881462367982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Async migration (rev11)
URL   : https://patchwork.freedesktop.org/series/96798/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10921_full -> Patchwork_21672_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21672_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@drm_read@empty-nonblock:
    - {shard-rkl}:        NOTRUN -> ([PASS][1], [SKIP][2])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@drm_read@empty-nonblock.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-4/igt@drm_read@empty-nonblock.html

  
Known issues
------------

  Here are the changes found in Patchwork_21672_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36]) ([i915#4337])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl10/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl10/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([i915#4629])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl6/igt@drm_import_export@prime.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@drm_import_export@prime.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][39] -> [TIMEOUT][40] ([i915#3063])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][41] -> [TIMEOUT][42] ([i915#3063] / [i915#3648])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#4547])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/igt@gem_exec_capture@pi@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_create@forked@smem:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][45] ([i915#4632])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_create@forked@smem.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#2846])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][48] ([i915#2842])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#2842])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][51] -> [FAIL][52] ([i915#2842]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][53] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][56] ([i915#180])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-kbl:          [PASS][57] -> [INCOMPLETE][58] ([i915#4563])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl6/igt@gem_exec_whisper@basic-fds-forked-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][59] -> [SKIP][60] ([i915#2190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#4270]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@gem_pxp@create-regular-context-1.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][65] -> [DMESG-WARN][66] ([i915#1436] / [i915#716])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a:
    - shard-kbl:          [PASS][67] -> [INCOMPLETE][68] ([i915#4633])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl1/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111614])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3777])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3777])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#110723]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3777])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +8 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111615] / [i915#3689])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3689])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +122 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][85] ([i915#1319]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][86] ([i915#1319])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [fdo#109279])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278]) +7 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [FAIL][89] ([i915#79])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][92] -> [DMESG-WARN][93] ([i915#180]) +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][94] ([i915#2122])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([i915#3701])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2672])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +137 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#111825])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109280]) +13 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271]) +37 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +45 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#1188])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#3536])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#658]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([fdo#109441]) +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109441]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#31])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-glk5/igt@kms_setmode@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk9/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2437])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#1542])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/igt@perf@polling-parameterized.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#1722])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl4/igt@perf@polling-small-buf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl7/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109291])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2994]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-3:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2994])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@sysfs_clients@fair-3.html
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2994])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl6/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-glk:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk4/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        ([SKIP][130], [SKIP][131]) ([i915#2582]) -> [PASS][132]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-2/igt@fbdev@read.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-4/igt@fbdev@read.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@fbdev@read.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][133] ([i915#2582]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-2/igt@fbdev@write.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][135] ([i915#2481] / [i915#3070]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb7/igt@gem_eio@unwedge-stress.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-iclb:         [INCOMPLETE][137] ([i915#3371]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][139] ([i915#2846]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        ([PASS][141], [FAIL][142]) ([i915#2842]) -> [PASS][143]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][144] ([i915#2842]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][146] ([i915#2842] / [i915#3468]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][148] ([i915#2842]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][150] ([fdo#109271]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][154] ([i915#2849]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][156] ([fdo#109308]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i91

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.html

--===============0941632881462367982==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Async migration (rev11)</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96798/">https://patchwork.freedesktop.org/series/96798/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21672/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21672/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10921_full -&gt; Patchwork_21672_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21672_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@drm_read@empty-nonblock:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@drm_read@empty-nonblock.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1672/shard-rkl-4/igt@drm_read@empty-nonblock.html">SKIP</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21672_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10921/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10921/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10921/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10921/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10921/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10921/shard-skl2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921=
/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10921/shard-skl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl10/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-s=
kl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_10921/shard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21672/shard-skl9/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl8/boot.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21672/shard-skl7/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21672/shard-skl4/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21672/shard-skl2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21672/shard-skl10/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl10/boot.html">PA=
SS</a>) ([i915#4337])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl6/igt@drm_import_export@prime.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kb=
l7/igt@drm_import_export@prime.html">INCOMPLETE</a> ([i915#4629])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21672/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a=
> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tg=
lb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-skl7/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-s=
kl2/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_create@forked@smem.ht=
ml">INCOMPLETE</a> ([i915#4632])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/sha=
rd-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/sh=
ard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1672/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2167=
2/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl4/igt@gem_exec_suspend@basic-s3.html=
">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl6/igt@gem_exec_whisper@basic-fds-forked-all.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21672/shard-kbl7/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE=
</a> ([i915#4563])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl1/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-skl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl1/igt@kms_atomic_interruptible@universal-setplane-cu=
rsor@dp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_atomic_interruptible@univ=
ersal-setplane-cursor@dp-1-pipe-a.html">INCOMPLETE</a> ([i915#4633])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-90.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_ccs@pipe-c-bad-aux-stride=
-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-ba=
sic-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271]) +122 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_color_chamelium@pipe-c-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl2/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-random.html">SKIP</a> ([fdo#109278]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vb=
lank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21672/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/s=
hard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21672/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-t=
o-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +137 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +13 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +37 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +45 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl9/igt@kms_hdr@bpc-switch-suspend.htm=
l">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl10/igt@kms_pipe_crc_basic@hang-read-=
crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-kbl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb3/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/=
shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-iclb6/igt@kms_psr@psr2_sprite_plane_mov=
e.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-glk9/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-skl7/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard=
-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-skl4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl=
7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-tglb3/igt@prime_nv_api@nv_i915_reimport=
_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-skl10/igt@sysfs_clients@fair-0.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21672/shard-iclb6/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21672/shard-apl6/igt@sysfs_clients@fair-3.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21672/shard-glk4/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10921/shard-rkl-2/igt@fbdev@read.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-rkl-4/igt@fbdev@read.=
html">SKIP</a>) ([i915#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21672/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-rkl-2/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard=
-rkl-6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21672/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 ([i915#3371]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21672/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
[i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21672/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10921/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/sha=
rd-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a>) ([i915#2842=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2167=
2/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21672/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21672/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21672/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21672/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21672/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21672/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10921/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#=
109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21672/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i91</p>
</li>
</ul>

</body>
</html>

--===============0941632881462367982==--
