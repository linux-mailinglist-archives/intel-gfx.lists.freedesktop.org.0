Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C47B54E380C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 05:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1195010E53F;
	Tue, 22 Mar 2022 04:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5CEC610E53E;
 Tue, 22 Mar 2022 04:44:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59F01A008A;
 Tue, 22 Mar 2022 04:44:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7832382893787094404=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 22 Mar 2022 04:44:40 -0000
Message-ID: <164792428033.20010.9520280859258827623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321122759.227091-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220321122759.227091-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_Do_not_return_=270=27_if_there_is_nothing_to_r?=
 =?utf-8?q?eturn_=28rev2=29?=
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

--===============7832382893787094404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/debugfs: Do not return '0' if there is nothing to return (rev2)
URL   : https://patchwork.freedesktop.org/series/97340/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11393_full -> Patchwork_22628_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22628_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [FAIL][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][51] ([i915#4991])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl9/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][52] ([i915#5076])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][53] ([i915#5076])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [PASS][54] -> [INCOMPLETE][55] ([i915#4547])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-skl1/igt@gem_exec_capture@pi@bcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl9/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2846])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][60] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_softpin@full:
    - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271]) +60 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-snb2/igt@gem_softpin@full.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2856])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#454])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#1937])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#4387])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][72] ([i915#1886])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl7/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][73] -> [INCOMPLETE][74] ([i915#3921])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [PASS][75] -> [DMESG-WARN][76] ([i915#2411] / [i915#2867])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-tglb2/igt@i915_suspend@forcewake.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-tglb7/igt@i915_suspend@forcewake.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#1769])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#5286])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +4 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-snb2/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][90] ([i915#1319])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][92] -> [FAIL][93] ([i915#2346])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         NOTRUN -> [FAIL][94] ([i915#2346])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#3528])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +70 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2122]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#4911])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +176 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109280]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +169 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#533])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][109] ([fdo#108145] / [i915#265])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][112] ([i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][113] ([i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-64:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109278]) +6 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_plane_cursor@pipe-d-viewport-size-64.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#3536])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][119] -> [SKIP][120] ([fdo#109441]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][121] ([IGT#2])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#533]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#2530])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2994]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl10/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][126] ([i915#2410]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@smoketest:
    - {shard-tglu}:       [FAIL][128] ([i915#5099]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-tglu-3/igt@gem_ctx_persistence@smoketest.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-tglu-4/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][130] ([i915#232]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-tglb3/igt@gem_eio@kms.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][132] ([i915#3063]) -> ([PASS][133], [PASS][134])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-6/igt@gem_eio@unwedge-stress.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][135] ([i915#4525]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - {shard-rkl}:        [FAIL][137] ([i915#2842]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][139] ([i915#2842]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [FAIL][141] ([i915#5290]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-skl10/igt@i915_pm_rpm@basic-pci-d3-state.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl8/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {shard-rkl}:        [SKIP][143] ([fdo#109308]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@i2c:
    - shard-glk:          [FAIL][145] ([i915#68]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk4/igt@i915_pm_rpm@i2c.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk3/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][147] ([i915#1397]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][149] ([i915#180]) -> [PASS][150] +4 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-kbl4/igt@i915_suspend@forcewake.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][151] ([i915#402]) -> [PASS][152] +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-tglu-1/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - {shard-rkl}:        [SKIP][153] ([fdo#112022]) -> [PASS][154] +3 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement:
    - {shard-rkl}:        [SKIP][155] ([fdo#112022] / [i915#4070]) -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - {shard-rkl}:        [SKIP][157] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {shard-rkl}:        [SKIP][159] ([fdo#111825]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - {shard-rkl}:        [SKIP][161] ([fdo#111825] / [i915#4070]) -> [PASS][162] +2 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][163] ([i915#2346]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - {shard-rkl}:        [SKIP][165] ([i915#4070]) -> [PASS][166] +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][167] ([i915#180] / [i915#636]) -> [PASS][168]
   [167]: https://intel-gfx-c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/index.html

--===============7832382893787094404==
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
<tr><td><b>Series:</b></td><td>drm/i915/debugfs: Do not return &#39;0&#39; =
if there is nothing to return (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97340/">https://patchwork.freedesktop.org/series/97340/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22628/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11393_full -&gt; Patchwork_22628_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22628_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11393/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11393/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11393/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11393/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11393/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11393/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11393/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1393/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11393/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11393/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22628/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-glk1/boot.html">FAI=
L</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl9/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl1/igt@gem_exec_balancer@parallel-bb-=
first.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl6/igt@gem_exec_balancer@parallel-ord=
ering.html">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-skl1/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-s=
kl9/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/sha=
rd-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_226=
28/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.=
html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11393/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/sha=
rd-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@gem_lmem_swapping@heavy-rando=
m.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl1/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@full:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-snb2/igt@gem_softpin@full.html">SKIP</a=
> ([fdo#109271]) +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl7/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/sha=
rd-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-tglb2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-tg=
lb7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#2411] / [i915#28=
67])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_atomic_transition@plane-a=
ll-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_big_fb@4-tiled-16bpp-rota=
te-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_chamelium@dp-crc-fast.htm=
l">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl1/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-snb2/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22628/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cur=
sor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb7/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_flip@2x-flip-vs-absolute-w=
f_vblank-interruptible.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22628/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22628/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22628/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22628/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +176 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl6/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +169 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22628/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-64:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_plane_cursor@pipe-d-viewp=
ort-size-64.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-=
area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/=
shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-iclb8/igt@nouveau_crc@pipe-a-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-kbl4/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22628/shard-skl10/igt@sysfs_clients@split-25.html">=
SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22628/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-tglu-3/igt@gem_ctx_persistence@smoketest.html">FAIL</a>=
 ([i915#5099]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22628/shard-tglu-4/igt@gem_ctx_persistence@smoketest.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-tglb3/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-=
tglb6/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#3063]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22628/shard-rkl-4/igt@gem_eio@unwedge-stress.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-5/igt@g=
em_eio@unwedge-stress.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22628/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22628/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22628/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11393/shard-skl10/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> =
([i915#5290]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22628/shard-skl8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></=
p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11393/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> =
([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22628/shard-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a>=
</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-glk4/igt@i915_pm_rpm@i2c.html">FAIL</a> ([i915#68]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shar=
d-glk3/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i91=
5#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22628/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-kbl4/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22628/shard-kbl7/igt@i915_suspend@forcewake.html">PASS</a> +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-tglu-1/igt@kms_big_fb@linear-16bpp-rotate-180.html">DME=
SG-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22628/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-180=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.h=
tml">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-25=
6x85-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-move=
ment.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_=
crc@pipe-a-cursor-64x21-rapid-movement.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-ed=
ge.html">SKIP</a> ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/ig=
t@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_legacy@ba=
sic-flip-after-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22628/shard-rkl-6/igt@kms_cursor_legacy=
@flip-vs-cursor-crc-atomic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22628/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-togg=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-bo:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11393/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html">SKIP=
</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22628/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-c">INCOMPLETE</a> ([i9=
15#180] / [i915#636]) -&gt; [PASS][168]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7832382893787094404==--
