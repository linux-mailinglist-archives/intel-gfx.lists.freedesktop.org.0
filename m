Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E95FB46936E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 11:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E1573F05;
	Mon,  6 Dec 2021 10:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 927216E542;
 Sat,  4 Dec 2021 10:54:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A030A0003;
 Sat,  4 Dec 2021 10:54:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1869729778365419976=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jasmine Newsome" <jasmine.newsome@intel.com>
Date: Sat, 04 Dec 2021 10:54:18 -0000
Message-ID: <163861525852.1804.10227027513549087284@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211203204753.1634865-1-jasmine.newsome@intel.com>
In-Reply-To: <20211203204753.1634865-1-jasmine.newsome@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Use_local_pointer_for_=5F=5Fi915=5Fttm=5Fmove?=
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

--===============1869729778365419976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Use local pointer for __i915_ttm_move
URL   : https://patchwork.freedesktop.org/series/97571/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10963_full -> Patchwork_21753_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21753_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21753_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21753_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  
#### Warnings ####

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][3] ([i915#658]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  
Known issues
------------

  Here are the changes found in Patchwork_21753_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#4392])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][55] -> [TIMEOUT][56] ([i915#3063])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2846])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-snb2/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][62] -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#2842]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2190])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][73] ([i915#2658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3323])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109289])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1436] / [i915#716])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][78] ([i915#1886] / [i915#2291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl10/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl8/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][81] -> [DMESG-WARN][82] ([i915#118])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3777]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#3743])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886]) +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#3689])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl7/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][92] ([i915#1319]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [fdo#109279])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180]) +7 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +120 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][98] ([i915#180] / [i915#636])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#79])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([i915#3701])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109280])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][104] -> [INCOMPLETE][105] ([i915#123])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-kbl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +132 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][109] ([i915#265])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658]) +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][113] -> [SKIP][114] ([fdo#109441]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][115] -> [FAIL][116] ([i915#31])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk6/igt@kms_setmode@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl6/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271]) +83 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl4/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2994]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl1/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][123] ([i915#658]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@feature_discovery@psr1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][125] ([i915#658]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb5/igt@feature_discovery@psr2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][127] ([i915#3063]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-skl8/igt@gem_eio@unwedge-stress.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-skl6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][129] ([i915#2842]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [SKIP][131] ([i915#2848]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][133] ([i915#2842]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][135] ([i915#2842]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][137] ([i915#2842]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][139] ([fdo#109271]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][141] ([i915#180]) -> [PASS][142] +3 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        [SKIP][143] ([i915#3012]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@i915_pm_backlight@fade.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - {shard-rkl}:        ([SKIP][145], [SKIP][146]) ([fdo#109308]) -> [PASS][147] +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][148] ([i915#1397]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-tglb:         [DMESG-WARN][150] ([i915#2867]) -> [PASS][151] +14 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-tglb6/igt@i915_selftest@live@gem_contexts.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-tglb5/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][152] ([i915#3921]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic@plane-overlay-legacy:
    - {shard-rkl}:        ([SKIP][154], [SKIP][155]) ([i915#1845]) -> [PASS][156] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@kms_atomic@plane-overlay-legacy.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@kms_atomic@plane-overlay-legacy.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
    - {shard-rkl}:        [SKIP][157] ([i915#1845]) -> [PASS][158] +12 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][159] ([i915#118] / [i915#1888]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][161] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][163] ([i915#1149] / [i915#4098]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color@pipe-b-ctm-negative:
    - {shard-rkl}:        ([SKIP][165], [SKIP][166]) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][167]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@kms_color@pipe-b-ctm-negative.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@kms_color@pipe-b-ctm-negative.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - {shard-rkl}:        [SKIP][168] ([fdo#112022] / [i915#4070]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - {shard-rkl}:        [SKIP][170] ([fdo#112022]) -> [PASS][171] +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:
    - {shard-rkl}:        [SKIP][172] ([i915#1849] / [i915#4070]) -> [PASS][173] +1 similar iss

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/index.html

--===============1869729778365419976==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Use local pointer for __i915_t=
tm_move</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97571/">https://patchwork.freedesktop.org/series/97571/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21753/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21753/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10963_full -&gt; Patchwork_21753_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21753_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21753_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21753_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fair@basic-pace-share@rcs0:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
753/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_su@page_flip-p010:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i=
915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21753/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21753_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10963/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10963/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10963/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10963/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10963/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10963/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0963/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10963/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10963/shard-glk2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk3/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21753/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk4/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753=
/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3=
063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/sha=
rd-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/s=
hard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-snb2/igt@gem_exec_fair@basic-none-share=
.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
753/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo=
#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10963/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/sha=
rd-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +4 s=
imilar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10963/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/sha=
rd-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/s=
hard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl2/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/s=
hard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl10/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-apl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shar=
d-apl8/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
753/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a>=
 ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl7/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_ccs@pipe-b-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-tglb8/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl1/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl7/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1753/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> ([fdo#109271]) +120 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-onscreen.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html=
">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21753/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-t=
o-32bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-iclb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1753/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</=
a> ([i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_panel_fitting@legacy.html"=
>SKIP</a> ([fdo#109271]) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl2/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/sh=
ard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21753/shard-kbl6/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21753/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-apl4/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-skl1/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-kbl6/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@feature_discovery@psr1.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1753/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1753/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-skl8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21753/shard-skl6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10963/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21753/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10963/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> ([i915#2848]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21753/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21753/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21753/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21753/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21753/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21753/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@i915_pm_backlight@fade.html">SKIP</a> ([i915#=
3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21753/shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10963/shard-rkl-4/igt@i915_pm_rpm@gem-mmap-type@uc.html">SKIP</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rkl=
-2/igt@i915_pm_rpm@gem-mmap-type@uc.html">SKIP</a>) ([fdo#109308]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl=
-6/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i91=
5#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21753/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-tglb6/igt@i915_selftest@live@gem_contexts.html">DMESG-W=
ARN</a> ([i915#2867]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21753/shard-tglb5/igt@i915_selftest@live@gem_contexts.html">=
PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21753/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10963/shard-rkl-2/igt@kms_atomic@plane-overlay-legacy.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-=
rkl-4/igt@kms_atomic@plane-overlay-legacy.html">SKIP</a>) ([i915#1845]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shar=
d-rkl-6/igt@kms_atomic@plane-overlay-legacy.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-0.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-st=
ride-64bpp-rotate-0.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#118] / [i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21753/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-=
rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> ([i9=
15#1149] / [i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-a-ctm-0=
-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-4/igt@kms_color@pipe-a-ctm-blue-to-red.html">SKIP</=
a> ([i915#1149] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-=
red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10963/shard-rkl-2/igt@kms_color@pipe-b-ctm-negative.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/shard-rk=
l-4/igt@kms_color@pipe-b-ctm-negative.html">SKIP</a>) ([i915#1149] / [i915#=
1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_color@pipe-b-ctm-nega=
tive.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.=
html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_cursor_crc@p=
ipe-a-cursor-64x21-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10963/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.ht=
ml">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21753/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x=
64-sliding.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:</p>
<ul>
<li>{shard-rkl}:        [SKIP][172] ([i915#1849] / [i915#4070]) -&gt; [PASS=
][173] +1 similar iss</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1869729778365419976==--
