Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BA146AEC7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 01:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93667B3AC;
	Tue,  7 Dec 2021 00:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC1107B3AB;
 Tue,  7 Dec 2021 00:03:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D425DAADDD;
 Tue,  7 Dec 2021 00:03:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1633883896489619833=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Tue, 07 Dec 2021 00:03:57 -0000
Message-ID: <163883543783.10818.3746277169666973847@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211206215245.513677-1-michael.cheng@intel.com>
In-Reply-To: <20211206215245.513677-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_new_i915_macros_for_checking_PTEs_=28rev7=29?=
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

--===============1633883896489619833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce new i915 macros for checking PTEs (rev7)
URL   : https://patchwork.freedesktop.org/series/96679/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10965_full -> Patchwork_21766_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21766_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4338])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][53] ([i915#4547])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl1/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2842]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#2842]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111656])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3323])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109289])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109289])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#4387])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][67] ([i915#1886] / [i915#2291])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@i915_suspend@forcewake.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3777]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111615])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109278] / [i915#3886])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3689]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615] / [i915#3689])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109284] / [fdo#111827])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][82] ([i915#1319])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3359])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109279] / [i915#3359]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - shard-skl:          [PASS][86] -> [DMESG-WARN][87] ([i915#1982])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#79])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#2122])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#1888] / [i915#2546])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109280])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111825]) +10 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([fdo#108145] / [i915#265]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#658]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([fdo#109441]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][103] ([i915#132] / [i915#3467])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109502])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +32 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +114 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1542])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl7/igt@perf@polling.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl4/igt@perf@polling.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([fdo#109291])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109295])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2994])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2994]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl4/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#2994])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][115] ([i915#2582]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@fbdev@eof.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@fbdev@eof.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][117] ([i915#3063]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@gem_eio@unwedge-stress.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl10/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][119] ([i915#3063]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][121] ([i915#4547]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl1/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][123] ([fdo#109271]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        ([FAIL][125], [FAIL][126]) ([i915#2842] / [i915#2849]) -> [PASS][127]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][128] ([i915#2842]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][130] ([i915#2842]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][132] ([i915#2842]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][134] ([i915#2842]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][136] ([i915#118]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][138] ([i915#198]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl10/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][140] ([fdo#109308]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][142] ([i915#2521]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - {shard-rkl}:        [SKIP][144] ([i915#1845]) -> [PASS][145] +16 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][146] ([i915#118] / [i915#1888]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - {shard-rkl}:        [SKIP][148] ([fdo#112022] / [i915#4070]) -> [PASS][149] +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge:
    - {shard-rkl}:        [SKIP][150] ([i915#4098]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][152] ([i915#2346]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - {shard-rkl}:        [SKIP][154] ([i915#4070]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][156] ([fdo#111314]) -> [PASS][157] +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - {shard-rkl}:        ([SKIP][158], [SKIP][159]) ([fdo#111314] / [i915#4098]) -> [PASS][160] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][161] ([i915#180]) -> [PASS][162] +5 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][163] ([i915#2122]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][165] ([i915#1849]) -> [PASS][166] +11 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        ([SKIP][167], [SKIP][168]) ([i915#1849] / [i915#4098]) -> [PASS][169] +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][170] ([i915#1188]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl7/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html

--===============1633883896489619833==
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
<tr><td><b>Series:</b></td><td>Introduce new i915 macros for checking PTEs =
(rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96679/">https://patchwork.freedesktop.org/series/96679/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21766/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21766/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10965_full -&gt; Patchwork_21766_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21766_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10965/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10965/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10965/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10965/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10965/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0965/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10965/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb6/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21766/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-snb2/boot.html">PAS=
S</a>) ([i915#4338])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21766/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-=
WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl1/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1766/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/=
shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl1/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl7/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21766/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-p=
age.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21766/shard-iclb7/igt@gen7_exec_parse@cmd-crossing-p=
age.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl9/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-kbl=
7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2176=
6/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_ccs@pipe-a-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-form=
at-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl7/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_color_chamelium@pipe-b-ga=
mma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-6=
4x64-left-edge.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl4/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21766/shard-skl7/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-=
WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21766/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FA=
IL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21766/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interr=
uptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-s=
hrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21766/shard-glk2/igt@kms_frontbuffer_tracking@fbc=
-1p-primscrn-pri-shrfb-draw-mmap-wc.html">FAIL</a> ([i915#1888] / [i915#254=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +10 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl6/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21766/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/sh=
ard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@kms_psr@psr2_cursor_render.ht=
ml">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@kms_vrr@flip-suspend.html">SK=
IP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl7/igt@nouveau_crc@ctx-flip-threshold=
-reset-after-capture.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl7/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-skl4/igt@perf=
@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-tglb5/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-skl7/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-apl4/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21766/shard-iclb7/igt@sysfs_clients@split-25.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-1/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-r=
kl-6/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10965/shard-skl9/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21766/shard-skl10/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21766/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21766/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21766/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/sha=
rd-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a>) ([i915#2842=
] / [i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21766/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21766/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21766/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21766/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21766/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21766/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html">INCOMPLET=
E</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21766/shard-skl10/igt@gem_workarounds@suspend-resume.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a=
> ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21766/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21766/shard-skl7/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-eve=
nts.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_async_flips@async-flip-=
with-page-flip-events.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
FAIL</a> ([i915#118] / [i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21766/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-=
rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparen=
t.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_cursor_crc=
@pipe-b-cursor-alpha-transparent.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge=
.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64=
x64-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-iclb4/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html">S=
KIP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21766/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu=
-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_draw_crc@draw-meth=
od-xrgb2101010-mmap-cpu-ytiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-yt=
iled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled=
.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-xrgb8888-mmap-wc-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21766/shard-apl1/igt@kms_flip@flip-vs-suspend-int=
erruptible@b-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21766/shard-skl8/igt@kms_flip@plain-flip-ts-check=
-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-rkl-6/igt@kms_frontbuff=
er_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> +11 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
shrfb-msflip-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-p=
rimscrn-shrfb-msflip-blt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/shard-r=
kl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21766/shard-skl7/">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============1633883896489619833==--
