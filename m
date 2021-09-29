Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A20041BE87
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 06:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84BA6E170;
	Wed, 29 Sep 2021 04:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56BC66E16F;
 Wed, 29 Sep 2021 04:59:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E383A0003;
 Wed, 29 Sep 2021 04:59:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5462180867791931151=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 04:59:02 -0000
Message-ID: <163289154227.27099.13284163860747987172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210929024600.31587-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20210929024600.31587-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5462180867791931151==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update memory bandwidth formulae (rev2)
URL   : https://patchwork.freedesktop.org/series/95138/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10655_full -> Patchwork_21184_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21184_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-iclb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50]) ([i915#3521])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][51] ([i915#180]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][52] -> [TIMEOUT][53] ([i915#2369] / [i915#3063] / [i915#3648])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][54] -> [FAIL][55] ([i915#2846])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#2842]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][58] ([i915#2842]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fence@syncobj-channel:
    - shard-skl:          [PASS][59] -> [DMESG-WARN][60] ([i915#1982]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl5/igt@gem_exec_fence@syncobj-channel.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl2/igt@gem_exec_fence@syncobj-channel.html

  * igt@gem_exec_params@no-bsd:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109283])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#112283])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2190])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][64] ([i915#2658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][66] ([i915#3318])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271]) +33 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2856])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [PASS][69] -> [INCOMPLETE][70] ([i915#4173] / [i915#456])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb2/igt@i915_pm_backlight@fade_with_suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111614])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3777]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777]) +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#2705])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886]) +9 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +6 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#3689] / [i915#3886])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3689]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-audio:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl9/igt@kms_chamelium@dp-audio.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][89] ([i915#1319])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3116]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#111828])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][92] ([i915#2105])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][93] ([i915#2105])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3359])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271]) +148 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109279] / [i915#3359]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#79])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271]) +151 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#111825]) +21 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#1188])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-glk:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3536]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#112054]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_plane_lowres@pipe-d-tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-glk:          [PASS][110] -> [DMESG-WARN][111] ([i915#118] / [i915#95]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-glk2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#1836])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#2920])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-kbl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][117] ([i915#132] / [i915#3467])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#111615]) +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][119] -> [INCOMPLETE][120] ([i915#198])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][121] -> [INCOMPLETE][122] ([i915#2828] / [i915#456])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#2437])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2437]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2437])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][126] -> [FAIL][127] ([i915#1542]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl4/igt@perf@blocking.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl1/igt@perf@blocking.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][128] -> [INCOMPLETE][129] ([i915#198] / [i915#4173])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl2/igt@perf_pmu@rc6-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl10/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +162 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#109291])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@prime_nv_pcopy@test3_2.html

  * igt@prime_vgem@basic-userptr:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#3301])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#109295])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@create:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk2/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@sysfs_clients@sema-25.html
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#2994]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][140] ([i915#2842]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][142] ([i915#2842]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][144] ([i915#2842] / [i915#3468]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][146] ([i915#2842]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][148] ([i915#2190]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_offset@bad-flags:
    - shard-glk:          [DMESG-WARN][150] ([i915#118] / [i915#95]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-glk5/igt@gem_mmap_offset@bad-flags.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-glk8/igt@gem_mmap_offset@bad-flags.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][152] ([i915#1982]) -> [PASS][153] +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][154] ([i915#2411] / [i915#4173] / [i915#456]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [INCOMPLETE][156] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][158] ([i915#2122]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][160] ([i915#180]) -> [PASS][161] +5 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][162] ([fdo#108145] / [i915#265]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@suspend:
    - shard-tglb:         [INCOMPLETE][164] ([i915#456]) -> [PASS][165] +2 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-tglb7/igt@kms_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/index.html

--===============5462180867791931151==
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
<tr><td><b>Series:</b></td><td>drm/i915: Update memory bandwidth formulae (=
rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/95138/">https://patchwork.freedesktop.org/series/95138/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21184/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10655_full -&gt; Patchwork_21184_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21184_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10655/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10655/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_106=
55/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10655/shard-iclb6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/sha=
rd-iclb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_10655/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-icl=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-iclb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10655/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_10655/shard-iclb3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1065=
5/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10655/shard-iclb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shar=
d-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10655/shard-iclb1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10655/shard-iclb1/boot.html">PASS</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/=
shard-iclb8/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21184/shard-iclb8/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb8/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_211=
84/shard-iclb7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-iclb7/boot.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb7/boot.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21184/shard-iclb6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21184/shard-iclb6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb6/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21184/shard-iclb5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21184/shard-iclb5/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb5/bo=
ot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21184/shard-iclb4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21184/shard-iclb4/boot.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb4=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21184/shard-iclb3/boot.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb3/boot.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-ic=
lb3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21184/shard-iclb2/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb2/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard=
-iclb2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21184/shard-iclb1/boot.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-iclb1/boot.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/sh=
ard-iclb1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21184/shard-iclb1/boot.html">FAIL</a>) ([i915#3521])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@gem_ctx_isolation@preservation=
-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tg=
lb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/sha=
rd-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_211=
84/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-channel:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl5/igt@gem_exec_fence@syncobj-channel.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/s=
hard-skl2/igt@gem_exec_fence@syncobj-channel.html">DMESG-WARN</a> ([i915#19=
82]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gem_exec_params@no-bsd.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-glk2/igt@gen7_exec_parse@basic-allocati=
on.html">SKIP</a> ([fdo#109271]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb2/igt@i915_pm_backlight@fade_with_suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1184/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</=
a> ([i915#4173] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-kbl7/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-=
kbl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 sim=
ilar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_big_joiner@invalid-modese=
t.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_ccs@pipe-b-bad-rotation-90-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar=
 issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_ccs@pipe-b-bad-rotation-90-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar=
 issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-skl9/igt@kms_chamelium@dp-audio.html">S=
KIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-snb7/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_color_chamelium@pipe-c-ct=
m-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_content_protection@dp-mst=
-type-0.html">SKIP</a> ([i915#3116]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_content_protection@mei_in=
terface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_content_protection@uevent.h=
tml">FAIL</a> ([i915#2105])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_content_protection@uevent.h=
tml">FAIL</a> ([i915#2105])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
32x10-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-onscreen.html">SKIP</a> ([fdo#109271]) +148 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-skl9/igt@kms_flip@2x-flip-vs-expired-vb=
lank-interruptible.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21184/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +151 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +21 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard=
-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_plane_lowres@pipe-b-tilin=
g-none.html">SKIP</a> ([i915#3536]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_plane_lowres@pipe-d-tilin=
g-yf.html">SKIP</a> ([fdo#112054]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-glk2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21184/shard-glk2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">DMESG-WA=
RN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-apl2/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar iss=
ue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-tglb2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt=
.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_rotation_crc@primary-yf-t=
iled-reflect-x-0.html">SKIP</a> ([fdo#111615]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21184/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspen=
d.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21184/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">=
INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-kbl1/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-apl7/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl4/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl1/igt@per=
f@blocking.html">FAIL</a> ([i915#1542]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl2/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl10=
/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i915#198] / [i915#4173])</=
li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +162 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-tglb1/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-glk2/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-kbl4/igt@sysfs_clients@sema-25.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21184/shard-tglb6/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21184/shard-apl7/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21184/shard-apl7/igt@gem_ctx_isolation@preservation-s3@=
bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21184/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21184/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21184/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21184/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1184/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-flags:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-glk5/igt@gem_mmap_offset@bad-flags.html">DMESG-WARN</a>=
 ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21184/shard-glk8/igt@gem_mmap_offset@bad-flags.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a>=
 ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21184/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10655/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#2411] / [i915#4173] / [i915#456]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21184/shard-tglb6/igt@kms_fbcon_fbt@fbc-=
suspend.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10655/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21184/shard-kbl4/igt@kms_fbcon_fbt@fbc-susp=
end.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21184/shard-skl5/igt@kms_flip@plain-flip-fb-re=
create-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21184/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21184/shard-skl4/igt@kms_plane_alpha_blend=
@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10655/shard-tglb7/igt@kms_">INCOMPLETE</a> ([i915#456]) -&gt; [PASS=
][165] +2 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5462180867791931151==--
