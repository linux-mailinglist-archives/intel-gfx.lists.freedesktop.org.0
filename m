Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6624C64EFA7
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 17:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DCB010E602;
	Fri, 16 Dec 2022 16:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAD9310E12E;
 Fri, 16 Dec 2022 16:45:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A36AEAADE6;
 Fri, 16 Dec 2022 16:45:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1000252293450049108=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 16 Dec 2022 16:45:02 -0000
Message-ID: <167120910266.5855.11029581848573923848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216092356.3336893-1-andrzej.hajda@intel.com>
In-Reply-To: <20221216092356.3336893-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vlv=3A_use_intel=5Fde=5Frmw_if_possible?=
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

--===============1000252293450049108==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/vlv: use intel_de_rmw if possible
URL   : https://patchwork.freedesktop.org/series/112001/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12511_full -> Patchwork_112001v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112001v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112001v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (14 -> 9)
------------------------------

  Missing    (5): shard-tglu-9 shard-tglu-10 shard-tglu shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112001v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_112001v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [FAIL][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#6268])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109314])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@gem_huc_copy@huc-copy.html
    - shard-tglb:         [PASS][61] -> [SKIP][62] ([i915#2190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][64] ([i915#2658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#768])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#4171])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb2/igt@gem_softpin@evict-single-offset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#3297]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#3297])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2856])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2527] / [i915#2856])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#5286]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110723])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3689])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#6095])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [i915#3886]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278]) +7 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109279] / [i915#3359])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#3555])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3555])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#1769] / [i915#3555])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109274]) +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2587] / [i915#2672]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2672]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109280] / [fdo#111825])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109280]) +6 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +43 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#5438])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][95] ([i915#4573]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#5288])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#5176]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109642] / [fdo#111068] / [i915#658])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109441]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109441])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#111615] / [i915#5289])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@sysfs_clients@sema-25:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#2994])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#2994])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@sysfs_clients@split-25.html

  * igt@v3d/v3d_mmap@mmap-bad-handle:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109315])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@v3d/v3d_mmap@mmap-bad-handle.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][107] ([i915#4525]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128:
    - shard-tglb:         [INCOMPLETE][109] -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb6/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][111] ([i915#5176]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][113] ([i915#5235]) -> [PASS][114] +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][117] ([i915#5519]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][119] ([i915#2920]) -> [SKIP][120] ([fdo#111068] / [i915#658]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5438]: https://gitlab.freedesktop.org/drm/intel/issues/5438
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697


Build changes
-------------

  * Linux: CI_DRM_12511 -> Patchwork_112001v1

  CI-20190529: 20190529
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112001v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html

--===============1000252293450049108==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/vlv: use intel_de_rmw if po=
ssible</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/112001/">https://patchwork.freedesktop.org/series/112001/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_112001v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_112001v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12511_full -&gt; Patchwork_112001v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112001v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_112001v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (14 -&gt; 9)</h2>
<p>Missing    (5): shard-tglu-9 shard-tglu-10 shard-tglu shard-rkl shard-dg=
1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
112001v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_112001v1/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc@pi=
pe-d-edp-1.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112001v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12511/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12511/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/sha=
rd-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12511/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12511/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12511/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-ap=
l1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2511/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12511/shard-apl2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_112001v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-a=
pl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_112001v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v=
1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_112001v1/shard-apl6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_112001v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_112001v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_112001v1/shard-apl2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_112001v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_112001v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_112001v1/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-apl1/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001=
v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/s=
hard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112=
001v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12511/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-t=
glb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_lmem_swapping@verify-r=
andom-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_render_copy@y-tiled-to=
-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb2/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11200=
1v1/shard-tglb6/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@i915_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_ccs@pipe-a-crc-primary=
-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_ccs@pipe-d-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_chamelium@hdmi-aspect-=
ratio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_chamelium@vga-hpd-witho=
ut-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_color_chamelium@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_cursor_crc@cursor-onsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5438">i915#5438</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-apl1/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-b-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_plane_lowres@tiling-4.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-c-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb8/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v=
1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@kms_psr@psr2_suspend.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441=
">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@sysfs_clients@sema-25.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@sysfs_clients@split-25.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112001v1/shard-iclb7/igt@v3d/v3d_mmap@mmap-bad-hand=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_112001v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb6/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-=
128x128.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_112001v1/shard-tglb6/igt@kms_cursor_edge_walk@right-e=
dge@pipe-b-edp-1-128x128.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb2/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-=
edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/shard-iclb6/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb3/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v=
1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_112001v1/shard-iclb1/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_112001v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12511 -&gt; Patchwork_112001v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112001v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1000252293450049108==--
