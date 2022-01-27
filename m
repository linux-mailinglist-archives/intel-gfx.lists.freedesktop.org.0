Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F39649ECDB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 21:50:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BFC10E1CC;
	Thu, 27 Jan 2022 20:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F01910E1CC;
 Thu, 27 Jan 2022 20:50:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16F48A7E03;
 Thu, 27 Jan 2022 20:50:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4059474068447151026=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Thu, 27 Jan 2022 20:50:04 -0000
Message-ID: <164331660405.23660.8150957363724638028@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127120508.11330-1-zhi.a.wang@intel.com>
In-Reply-To: <20220127120508.11330-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_i915/gvt=3A_Introduce_the_mmio=5Fta?=
 =?utf-8?q?ble=2Ec_to_support_VFIO_new_mdev_API?=
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

--===============4059474068447151026==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] i915/gvt: Introduce the mmio_table.c to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/99420/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11151_full -> Patchwork_22127_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22127_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22127_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22127_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-snb5/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html

  
Known issues
------------

  Here are the changes found in Patchwork_22127_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl4/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl4/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][60] -> [FAIL][61] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][62] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][63] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][66] ([i915#2842]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#2849])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2190])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@gem_lmem_swapping@random.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][74] ([i915#2658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3297])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][76] ([i915#4990])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@gem_userptr_blits@input-checking.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][77] ([i915#4990])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_userptr_blits@input-checking.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111614])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][79] -> [DMESG-WARN][80] ([i915#118])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#111615])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110723])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +82 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271]) +16 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [i915#3886])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_content_protection@lic:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#1063])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][95] ([i915#1319]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#3359]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109274] / [fdo#111825])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][99] -> [FAIL][100] ([i915#2346]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2346])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#79]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#2122])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-snb:          [PASS][107] -> [SKIP][108] ([fdo#109271])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +76 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][118] -> [FAIL][119] ([i915#31])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-glk6/igt@kms_setmode@basic.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#109289])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@polling-parameterized:
    - shard-apl:          NOTRUN -> [FAIL][122] ([i915#1542])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#109291])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_vgem@coherency-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109292])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@prime_vgem@coherency-gtt.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2994])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][127] ([i915#4525]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb6/igt@gem_exec_balancer@parallel.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [INCOMPLETE][129] ([i915#3778]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb6/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][131] ([i915#2842]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][133] ([i915#2842]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][135] ([i915#2842]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@smoketest@vecs0:
    - shard-skl:          [DMESG-WARN][137] ([i915#1982]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl1/igt@gem_exec_schedule@smoketest@vecs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl6/igt@gem_exec_schedule@smoketest@vecs0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][139] ([i915#644]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][141] ([i915#1436] / [i915#716]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144] +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/igt@i915_suspend@fence-restore-untiled.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][145] ([i915#2828] / [i915#300]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][147] ([i915#2346] / [i915#533]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][149] ([i915#3701]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][151] ([i915#1188]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl9/igt@kms_hdr@bpc-switch.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][153] ([fdo#108145] / [i915#265]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][155] ([fdo#109441]) -> [PASS][156] +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][157] ([i915#4525]) -> [FAIL][158] ([i915#4916])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][159] ([i915#588]) -> [SKIP][160] ([i915#658])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][161] ([i915#1804] / [i915#2684]) -> [WARN][162] ([i915#2684])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][163] ([i915#1188]) -> [INCOMPLETE][164] ([i915#2828])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][165] ([i915#2920]) -> [SKIP][166] ([fdo#111068] / [i915#658])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][167] ([fdo#111068] / [i915#658]) -> [SKIP][168] ([i915#2920]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_111

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/index.html

--===============4059474068447151026==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] i915/gvt: Introdu=
ce the mmio_table.c to support VFIO new mdev API</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99420/">https://patchwork.freedesktop.org/series/99420/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22127/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22127/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11151_full -&gt; Patchwork_22127_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22127_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22127_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22127_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-fences-interruptible@b-vga1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-snb5/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22127/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22127_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11151/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11151/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11151/shard-apl4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11151/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11151/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11151/shard-apl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11151/shard-apl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1151/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11151/shard-apl8/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22127/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@gem_ctx_sseu@invalid-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22127/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (=
[i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/s=
hard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2127/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-glk1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@gem_exec_fair@basic-pace-solo=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/sh=
ard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22127/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.=
html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11151/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/sha=
rd-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
27/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@gem_userptr_blits@access-cont=
rol.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22127/shard-skl10/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4990])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22127/shard-apl7/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#4990])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
27/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> (=
[i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-90.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +16 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_chamelium@dp-crc-single.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_chamelium@hdmi-crc-multip=
le.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_color_chamelium@pipe-b-ct=
m-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_content_protection@lic.ht=
ml">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-offscreen.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-random.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11151/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22127/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
-transitions.html">FAIL</a> ([i915#2346]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11151/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22127/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-t=
ransitions.html">FAIL</a> ([i915#2346])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22127/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22127/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-i=
ndfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22127/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-spr-indfb-move.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#109280] / [fdo#11182=
5]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +76 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22127/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-i=
clb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-glk8/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@perf@per-context-mode-unprivi=
leged.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@perf@polling-parameterized.htm=
l">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-tglb1/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-iclb6/igt@prime_vgem@coherency-gtt.html=
">SKIP</a> ([fdo#109292])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-apl3/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22127/shard-skl1/igt@sysfs_clients@split-10.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb6/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i=
915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22127/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html">INCOMPLE=
TE</a> ([i915#3778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22127/shard-tglb6/igt@gem_exec_endless@dispatch@vcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11151/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22127/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 s=
imilar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11151/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22127/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22127/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl1/igt@gem_exec_schedule@smoketest@vecs0.html">DMESG-=
WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22127/shard-skl6/igt@gem_exec_schedule@smoketest@vecs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> ([i915#644]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22127/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22127/shard-glk1/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-apl3/igt@i915_suspend@fence-restore-untiled.html">DMESG=
-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22127/shard-apl7/igt@i915_suspend@fence-restore-untiled.htm=
l">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INC=
OMPLETE</a> ([i915#2828] / [i915#300]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_cursor_crc@pipe-a=
-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl1/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-iclb3/igt@kms_flip_sca=
led_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22127=
/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22127/shard-skl10/igt@kms_plane_alpha=
_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22127/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22127/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html=
">FAIL</a> ([i915#4916])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22127/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22127/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22127/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i=
915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11151/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22127/shard-iclb3/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_111">SKIP</a> ([fdo#111068] / [i915#658]) -&gt; [SKIP][168] ([i915#=
2920]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4059474068447151026==--
