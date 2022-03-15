Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA63F4D9B56
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 13:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E439310E43B;
	Tue, 15 Mar 2022 12:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4243110E408;
 Tue, 15 Mar 2022 12:35:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EA2FA7DFB;
 Tue, 15 Mar 2022 12:35:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7073975168795979536=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Tue, 15 Mar 2022 12:35:34 -0000
Message-ID: <164734773421.20490.5766381829086790546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?ove_check_for_ComboPHY_I/O_voltage_for_DP_source_rate_=28rev4?=
 =?utf-8?q?=29?=
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

--===============7073975168795979536==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove check for ComboPHY I/O voltage for DP source rate (rev4)
URL   : https://patchwork.freedesktop.org/series/96293/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11363_full -> Patchwork_22569_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22569_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22569_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22569_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl6/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22569_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22]) ([i915#5131]) -> ([PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#5325])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-tglb3/igt@gem_ccs@block-copy-compressed.html
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][46] ([i915#4991])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl2/igt@gem_create@create-massive.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#232])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_eio@kms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][49] -> [TIMEOUT][50] ([i915#3063] / [i915#3648])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][51] ([i915#2842]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][52] -> [FAIL][53] ([i915#2842]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][56] -> [DMESG-WARN][57] ([i915#118]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2190])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#4270])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#768])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#3297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_userptr_blits@access-control.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][64] ([i915#1436] / [i915#716])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          NOTRUN -> [CRASH][65] ([i915#5343])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#454])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#110892])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#5286]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][70] ([i915#3743]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3777]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3777]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +6 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278] / [i915#3886])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109284] / [fdo#111827])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][79] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +111 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278]) +8 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#2346] / [i915#533])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#426])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-snb:          [PASS][87] -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb7/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#5287])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109274]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#2122])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#3701]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#4911])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109280]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][98] -> [DMESG-WARN][99] ([i915#180]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +129 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#3555])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][102] ([fdo#108145] / [i915#265]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([fdo#108145] / [i915#265])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#3536])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#111068] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][108] -> [SKIP][109] ([fdo#109441]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][111] ([IGT#2])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#533]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl4/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2437])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#2530])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109291]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][116] ([i915#5098])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl9/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@split-10:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][119] ([i915#2410]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_capture@pi@bcs0:
    - {shard-rkl}:        [INCOMPLETE][121] ([i915#3371]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][123] ([i915#2842]) -> [PASS][124] +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][125] ([i915#2842]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][127] ([i915#4171]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130] +4 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - {shard-rkl}:        ([FAIL][131], [PASS][132]) ([fdo#103375]) -> [PASS][133]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][134] ([i915#1397]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][136] ([i915#4258]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][138] ([i915#1845] / [i915#4098]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_concurrent@pipe-a:
    - {shard-rkl}:        [SKIP][140] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@kms_concurrent@pipe-a.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - {shard-rkl}:        [SKIP][142] ([fdo#112022] / [i915#4070]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - {shard-rkl}:        ([PASS][144], [SKIP][145]) ([fdo#112022] / [i915#4070]) -> [PASS][146]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:
    - {shard-rkl}:        [SKIP][147] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-snb:          [SKIP][149] ([fdo#109271]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@pipe-c-single-move:
    - {shard-rkl}:        [SKIP][151] ([i915#4070]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-single-move.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][153] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][154] +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@busy-flip@a-dp1:
    - shard-apl:          [DMESG-WARN][155] ([i915#1982] / [i915#62]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@a-dp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl4/igt@kms_flip@busy-flip@a-dp1.html

  * igt@kms_flip@busy-flip@c-dp1:
    - shard-apl:          [DMESG-WARN][157] ([i915#62]) -> [PASS][158] +3 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@c-dp1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-apl4/igt@kms_flip@busy-flip@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][159] ([i915#79]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][161] ([i915#4839] / [i915#636]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/index.html

--===============7073975168795979536==
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
<tr><td><b>Series:</b></td><td>Remove check for ComboPHY I/O voltage for DP=
 source rate (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96293/">https://patchwork.freedesktop.org/series/96293/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22569/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22569/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11363_full -&gt; Patchwork_22569_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22569_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22569_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22569_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@pi-ringfull@rcs0:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl6/igt@gem_exec_schedule@pi-ringfull@=
rcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22569_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
63/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1136=
3/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html">PASS</a>) ([i915#5131]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/sha=
rd-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22569/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/=
shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22569/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
69/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22569/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22569/shard-rkl-4/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22569/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22569/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22569/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rk=
l-6/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22569/shard-tglb3/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5325])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5327])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-tglb5/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1=
 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/s=
hard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22569/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl7/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_render_copy@y-tiled-ccs-t=
o-y-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@gem_userptr_blits@access-cont=
rol.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl10/igt@gen9_exec_parse@allowed-singl=
e.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@i915_pm_dc@dc5-psr.html">CRASH=
</a> ([i915#5343])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-skl10/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_color_chamelium@pipe-b-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2569/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-rapid-movement.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22569/shard-skl4/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#=
533])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-snb7/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22569/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html">=
SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb=
2101010-render-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22569/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22569/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22569/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2569/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +129 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22569/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb6/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/s=
hard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-glk3/igt@kms_psr@psr2_primary_page_flip=
.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl7/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl4/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-iclb5/igt@syncobj_timeline@invalid-tran=
sfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-skl9/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22569/shard-apl1/igt@sysfs_clients@split-10.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22569/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 ([i915#3371]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22569/shard-rkl-6/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22569/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22569/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22569/shard-glk8/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22569/shard-apl8/igt@gem_softpin@noreloc-s3.html">PASS</a> +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shar=
d-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a>) ([fdo#103375]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569=
/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22569/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-w=
ait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#4258]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22569/shard-rkl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-0.html">SKIP</a=
> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-=
0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@kms_concurrent@pipe-a.html">SKIP</a> ([i915#1=
845] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_concurrent@pipe-a.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.h=
tml">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_cursor_crc@pi=
pe-a-cursor-64x21-onscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11363/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html">S=
KIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@kms_cursor_crc@pipe-b-=
cursor-256x85-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge=
.html">SKIP</a> ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-6/igt@km=
s_cursor_edge_walk@pipe-a-128x128-left-edge.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22569/shard-snb2/igt@kms_cursor_legacy@flip-vs-cu=
rsor-busy-crc-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-single-move.html">SK=
IP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22569/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt=
-xtiled.html">SKIP</a> ([fdo#111314] / [i915#4098] / [i915#4369]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22569/shard-rkl-=
6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">PASS</a> +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@a-dp1.html">DMESG-WARN</a> =
([i915#1982] / [i915#62]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22569/shard-apl4/igt@kms_flip@busy-flip@a-dp1.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@c-dp1.html">DMESG-WARN</a> =
([i915#62]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22569/shard-apl4/igt@kms_flip@busy-flip@c-dp1.html">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22569/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi=
-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/">INCOM=
PLETE</a> ([i915#4839] / [i915#636]) -&gt; [PASS][162]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7073975168795979536==--
