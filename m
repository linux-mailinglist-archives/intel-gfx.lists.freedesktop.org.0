Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E3A45EFF9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 15:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933916F4FB;
	Fri, 26 Nov 2021 14:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E89256F4FB;
 Fri, 26 Nov 2021 14:36:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD0ECA0118;
 Fri, 26 Nov 2021 14:36:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6223294530376311063=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 26 Nov 2021 14:36:46 -0000
Message-ID: <163793740686.11080.161317247727908526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211126110843.2028582-1-matthew.auld@intel.com>
In-Reply-To: <20211126110843.2028582-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gemfs=3A_don=27t_mark_huge=5Fopt_as_static?=
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

--===============6223294530376311063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gemfs: don't mark huge_opt as static
URL   : https://patchwork.freedesktop.org/series/97320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10930_full -> Patchwork_21685_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21685_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4386]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl4/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl4/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][51] ([i915#3002])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2410])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][56] -> [TIMEOUT][57] ([i915#3063] / [i915#3648])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#4547])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-skl1/igt@gem_exec_capture@pi@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][60] ([i915#2846])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#2849])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@gem_lmem_swapping@verify.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][70] ([i915#2658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][71] ([i915#2658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][72] ([i915#2658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][74] ([i915#3002])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl4/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          [PASS][75] -> [TIMEOUT][76] ([i915#4639])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/igt@gen9_exec_parse@bb-large.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#1937])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][78] ([i915#2681] / [i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +82 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [PASS][80] -> [INCOMPLETE][81] ([i915#2411] / [i915#456])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb3/igt@i915_suspend@forcewake.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][82] -> [DMESG-WARN][83] ([i915#118])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#3763])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2705])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +155 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#3742])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3319])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3359]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#4103])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#2346])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][104] -> [DMESG-WARN][105] ([i915#180]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][106] -> [SKIP][107] ([i915#3701]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2672])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#111825]) +9 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +84 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#533])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-tglb:         [PASS][113] -> [INCOMPLETE][114] ([i915#456])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][115] ([i915#265])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][117] ([i915#265]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#2920]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([fdo#109441])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#31])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-glk5/igt@kms_setmode@basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][127] ([IGT#2])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][128] -> [DMESG-WARN][129] ([i915#180] / [i915#295])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-tglb:         [PASS][130] -> [INCOMPLETE][131] ([i915#2828] / [i915#456])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2437])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][133] -> [FAIL][134] ([i915#1542])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-skl1/igt@perf@polling-parameterized.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl8/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][135] -> [FAIL][136] ([i915#51])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-skl7/igt@perf@short-reads.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl10/igt@perf@short-reads.html

  * igt@perf@sysctl-defaults:
    - shard-skl:          [PASS][137] -> [DMESG-WARN][138] ([i915#1982]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-skl7/igt@perf@sysctl-defaults.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl10/igt@perf@sysctl-defaults.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109291])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_nv_test@nv_write_i915_cpu_mmap_read:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#109291])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@prime_nv_test@nv_write_i915_cpu_mmap_read.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2994])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#2994])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [INCOMPLETE][144] ([i915#456]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        ([PASS][146], [FAIL][147]) ([i915#2410]) -> [PASS][148]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][149] ([i915#3063]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [CRASH][151] -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-snb6/igt@gem_eio@reset-stress.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [FAIL][153] ([i915#2842]) -> [PASS][154] +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][155] ([i915#2842]) -> [PASS][156] +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][157] ([i915#2190]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][159] ([i915#198]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-skl1/igt@gem_workarounds@suspend-resume.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl9/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        ([SKIP][161], [SKIP][162]) ([i915#3012]) -> [PASS][163]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-4/igt@i915_pm_backlight@fade_with_suspend.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        ([SKIP][164], [SKIP][165]) ([fdo#109308]) -> [PASS][166]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-1/igt@i915_pm_rpm@i2c.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-4/igt@i915_pm_rpm@i2c.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][167] ([i915#1397]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/index.html

--===============6223294530376311063==
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
<tr><td><b>Series:</b></td><td>drm/i915/gemfs: don&#39;t mark huge_opt as s=
tatic</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97320/">https://patchwork.freedesktop.org/series/97320/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21685/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21685/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10930_full -&gt; Patchwork_21685_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21685_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10930/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10930/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10930/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10930/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10930/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10930/shard-apl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-ap=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0930/shard-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10930/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shar=
d-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10930/shard-apl3/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21685/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_216=
85/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tg=
lb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-skl1/igt@gem_exec_capture@pi@vcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-s=
kl8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl6/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1685/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/sh=
ard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_216=
85/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21685/shard-tglb8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21685/shard-skl6/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl4/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-apl7/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-a=
pl7/igt@gen9_exec_parse@bb-large.html">TIMEOUT</a> ([i915#4639])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> ([fdo#109271]) +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb3/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-tg=
lb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#2411] / [i915#45=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2168=
5/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary-ro=
tation-180-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +155 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@kms_cdclk@mode-transition.htm=
l">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_color_chamelium@pipe-d-ct=
m-0-75.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_cursor_legacy@basic-busy-=
flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_cursor_legacy@flip-vs-curs=
or-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@kms_flip@2x-wf_vblank-ts-chec=
k.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21685/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21685/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-t=
o-32bpp-ytile.html">SKIP</a> ([i915#3701]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +9 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +84 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21685/shard-tglb7/igt@kms_plane@plane-panning-bottom-=
right-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21685/shard-skl6/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar iss=
ues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21685/shard-tglb8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/sh=
ard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21685/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb8/igt@kms_vblank@pipe-b-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21685/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">=
INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-kbl3/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard=
-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-skl7/igt@perf@short-reads.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl10/ig=
t@perf@short-reads.html">FAIL</a> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@perf@sysctl-defaults:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-skl7/igt@perf@sysctl-defaults.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-skl10=
/igt@perf@sysctl-defaults.html">DMESG-WARN</a> ([i915#1982]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-iclb6/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_cpu_mmap_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@prime_nv_test@nv_write_i915_c=
pu_mmap_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-apl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-skl3/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21685/shard-tglb8/igt@sysfs_clients@sema-25.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
INCOMPLETE</a> ([i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21685/shard-tglb8/igt@gem_ctx_isolation@preservation-s=
3@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10930/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shar=
d-rkl-4/igt@gem_ctx_persistence@many-contexts.html">FAIL</a>) ([i915#2410])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/=
shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21685/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-snb6/igt@gem_eio@reset-stress.html">CRASH</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21685/shard-snb2=
/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21685/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21685/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1685/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-skl1/igt@gem_workarounds@suspend-resume.html">INCOMPLET=
E</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21685/shard-skl9/igt@gem_workarounds@suspend-resume.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10930/shard-rkl-4/igt@i915_pm_backlight@fade_with_suspend.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/sh=
ard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html">SKIP</a>) ([i915#30=
12]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
685/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10930/shard-rkl-1/igt@i915_pm_rpm@i2c.html">SKIP</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10930/shard-rkl-4/igt@i915_p=
m_rpm@i2c.html">SKIP</a>) ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21685/shard-rkl-6/igt@i915_pm_rpm@i2c.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10930/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21685/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stre">PASS<=
/a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============6223294530376311063==--
