Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B704F79F0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 10:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5353910EA0C;
	Thu,  7 Apr 2022 08:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88CF910EA07;
 Thu,  7 Apr 2022 08:37:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 846E9AADD2;
 Thu,  7 Apr 2022 08:37:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3645856656564974939=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 08:37:33 -0000
Message-ID: <164932065349.14670.6210579050795981643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epanel=5Fty?=
 =?utf-8?q?pe_matching_=28rev6=29?=
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

--===============3645856656564974939==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev6)
URL   : https://patchwork.freedesktop.org/series/102213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11467_full -> Patchwork_22801_full
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

  Here are the changes found in Patchwork_22801_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][51] -> [FAIL][52] ([i915#2410])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][53] ([i915#3778])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb1/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#2846])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#2842])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [PASS][61] -> [SKIP][62] ([fdo#109271]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#112283])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_exec_params@secure-non-root.html
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#112283])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_lmem_swapping@random.html
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl4/igt@gem_lmem_swapping@random.html
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_lmem_swapping@random.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_pxp@create-protected-buffer.html
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#4270])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#768])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#2527] / [i915#2856])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-page.html
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2856])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#4387])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][74] -> [INCOMPLETE][75] ([i915#3921])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#5286]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110725] / [fdo#111614])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111615])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [i915#3886])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +16 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_color_chamelium@pipe-c-degamma.html
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#109279] / [i915#3359])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [fdo#109279])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3359])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278]) +9 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109274] / [fdo#109278])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#2346])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109274]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#2122]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109280]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#1188])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([fdo#108145] / [i915#265])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-4:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +17 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_plane_multiple@atomic-pipe-d-tiling-4.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#5176]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][110] -> [SKIP][111] ([fdo#109441])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#2530])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-complete.html
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#2530])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@nouveau_crc@pipe-a-source-outp-complete.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][114] ([i915#2582]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@fbdev@unaligned-write.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][116] ([i915#3063] / [i915#3648]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-1/igt@gem_eio@unwedge-stress.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglu-3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][118] ([i915#4525]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [INCOMPLETE][120] ([i915#3778]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][122] ([i915#2842]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][124] ([i915#2842]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][126] ([i915#2842]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [SKIP][128] ([fdo#109271]) -> [PASS][129] +4 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_suspend@basic-s3-devices@smem:
    - shard-kbl:          [DMESG-WARN][130] -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@gem_exec_suspend@basic-s3-devices@smem.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl3/igt@gem_exec_suspend@basic-s3-devices@smem.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][132] ([i915#118]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - {shard-rkl}:        [INCOMPLETE][134] -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-4/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_mmap_gtt@close-race:
    - {shard-rkl}:        [INCOMPLETE][136] ([i915#5080]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_gtt@close-race.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-2/igt@gem_mmap_gtt@close-race.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][138] ([i915#1850]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [DMESG-FAIL][140] ([i915#3692]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][142] ([i915#4171]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][144] ([i915#658]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_dc@dc6-psr.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-tglu}:       [SKIP][146] ([i915#4281]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - {shard-rkl}:        [SKIP][148] ([fdo#109308]) -> [PASS][149] +4 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][150] ([i915#1397]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [INCOMPLETE][152] ([i915#5096]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][154] ([i915#1845] / [i915#4098]) -> [PASS][155] +20 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-kbl:          [DMESG-WARN][156] ([i915#62] / [i915#92]) -> [PASS][157] +5 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_color@pipe-b-degamma:
    - {shard-rkl}:        [SKIP][158] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_color@pipe-b-degamma.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][160] ([i915#4070]) -> [PASS][161] +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-6/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - {shard-rkl}:        [SKIP][162] ([fdo#112022] / [i915#4070]) -> [PASS][163] +6 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - {shard-rkl}:        [SKIP][164] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][165] +2 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - {shard-rkl}:        [SKIP][166] ([fdo#111825] / [i915#4070]) -> [PASS][167] +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][168] ([i915#2346] / [i915#533]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][170] ([i915#2346]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html

--===============3645856656564974939==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling and=
 PNPID-&gt;panel_type matching (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102213/">https://patchwork.freedesktop.org/series/102213/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11467_full -&gt; Patchwork_22801_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22801_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11467/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11467/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11467/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11467/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11467/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11467/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11467/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1467/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11467/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11467/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk2/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22801/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk9/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_228=
01/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb1/igt@gem_exec_endless@dispatch@vcs=
1.html">INCOMPLETE</a> ([i915#3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-skl4/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2801/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2280=
1/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/sh=
ard-glk1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22801/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.ht=
ml">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-skl4/igt@gem_lmem_swapping@random.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_pxp@create-protected-buffe=
r.html">SKIP</a> ([i915#4270])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gem_pxp@create-protected-buffe=
r.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gem_render_copy@y-tiled-mc-cc=
s-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-p=
age.html">SKIP</a> ([i915#2527] / [i915#2856])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@gen9_exec_parse@cmd-crossing-p=
age.html">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/sha=
rd-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.=
html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-=
0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_color_chamelium@pipe-c-dega=
mma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_color_chamelium@pipe-c-dega=
mma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-rapid-movement.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22801/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/s=
hard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22801/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p=
-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +7 similar is=
sues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825=
]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
edp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22801/shard-skl1/igt@kms_hdr@bpc-switch-suspend@bpc-sw=
itch-suspend-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22801/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-apl4/igt@kms_plane_multiple@atomic-pipe=
-d-tiling-4.html">SKIP</a> ([fdo#109271]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp=
-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22801/shard-iclb6/igt@kms_plane_scaling@downscale-w=
ith-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html"=
>SKIP</a> ([i915#5176]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/=
shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]=
)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp=
-complete.html">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22801/shard-iclb6/igt@nouveau_crc@pipe-a-source-outp=
-complete.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2801/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglu-1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i=
915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22801/shard-tglu-3/igt@gem_eio@unwedge-stress.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22801/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPL=
ETE</a> ([i915#3778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22801/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22801/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22801/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22801/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22801/shard-snb4/igt@gem_exec_flush@basic-batch-kerne=
l-default-uc.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices@smem:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-kbl6/igt@gem_exec_suspend@basic-s3-devices@smem.html">D=
MESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22801/shard-kbl3/igt@gem_exec_suspend@basic-s3-devices@smem.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22801/shard-glk6/igt@gem_exec_whisper@basic-queues-all.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22801/shard-rkl-4/igt@gem_exec_whisper@basic-queues-priority.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_gtt@close-race.html">INCOMPLETE</a> =
([i915#5080]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22801/shard-rkl-2/igt@gem_mmap_gtt@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([=
i915#1850]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22801/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-FAIL<=
/a> ([i915#3692]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22801/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22801/shard-glk9/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@i915_pm_dc@dc6-psr.html">SKIP</a> ([i915#658]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801=
/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#42=
81]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
801/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@gem-mmap-type@uc.html">SKIP</a> (=
[fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22801/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> +4=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i91=
5#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22801/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCO=
MPLETE</a> ([i915#5096]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22801/shard-iclb6/igt@i915_pm_rpm@system-suspend-execbuf.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_til=
ed_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/ig=
t@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">PAS=
S</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-kbl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled=
_ccs.html">DMESG-WARN</a> ([i915#62] / [i915#92]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-kbl3/igt@kms_ccs@pip=
e-b-crc-sprite-planes-basic-y_tiled_ccs.html">PASS</a> +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@kms_color@pipe-b-degamma.html">SKIP</a> ([i91=
5#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_color=
@pipe-b-degamma.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-6/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.ht=
ml">SKIP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22801/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-=
lut-sizes.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.htm=
l">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_cursor_crc@pipe=
-b-cursor-64x21-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edg=
e.html">SKIP</a> ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@k=
ms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a> +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html"=
>SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22801/shard-rkl-6/igt@kms_cursor_legacy@cur=
sor-vs-flip-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/shard-glk5/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11467/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22801/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-tog=
gle.h">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============3645856656564974939==--
