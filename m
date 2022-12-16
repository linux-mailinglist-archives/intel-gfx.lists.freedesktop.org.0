Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2D64EE4A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 16:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F6510E5E7;
	Fri, 16 Dec 2022 15:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A888210E5E7;
 Fri, 16 Dec 2022 15:54:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0E36A7E03;
 Fri, 16 Dec 2022 15:54:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2599082933697787598=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Dec 2022 15:54:09 -0000
Message-ID: <167120604964.5855.8266957521745066265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_DSB_fixes/cleanups?=
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

--===============2599082933697787598==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: DSB fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/111997/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12511_full -> Patchwork_111997v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (14 -> 13)
------------------------------

  Missing    (1): shard-tglu-9 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111997v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_hwmon@hwmon-read}:
    - {shard-tglu-10}:    NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglu-10/igt@i915_hwmon@hwmon-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_111997v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [FAIL][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4386]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109314])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#2846])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2842]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][59] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][60] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@gem_huc_copy@huc-copy.html
    - shard-tglb:         [PASS][62] -> [SKIP][63] ([i915#2190])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][66] ([i915#2658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_pwrite@basic-exhaustion.html
    - shard-iclb:         NOTRUN -> [WARN][67] ([i915#2658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#768])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_softpin@evict-single-offset:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#4171])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb7/igt@gem_softpin@evict-single-offset.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3297]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3297])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#5566] / [i915#716])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2856])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#2527] / [i915#2856])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#5286]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#110723])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3689])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#6095])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#3886]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278]) +7 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109279] / [i915#3359])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#3555]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3555])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#1769] / [i915#3555])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          NOTRUN -> [FAIL][95] ([i915#4767])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109274]) +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2587] / [i915#2672]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#2672] / [i915#3555]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109280] / [fdo#111825])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109280]) +6 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +43 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#5438])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +74 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][105] ([i915#4573]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][106] ([i915#4573]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#5288])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#5176]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#5235]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#2920])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109642] / [fdo#111068] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([fdo#109441]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#111615] / [i915#5289])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2437])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#2994])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2994])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@sysfs_clients@split-25.html

  * igt@v3d/v3d_mmap@mmap-bad-handle:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109315])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@v3d/v3d_mmap@mmap-bad-handle.html

  
#### Possible fixes ####

  * igt@api_intel_allocator@alloc-simple:
    - {shard-rkl}:        [SKIP][122] ([fdo#109315]) -> [PASS][123] +11 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@api_intel_allocator@alloc-simple.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@api_intel_allocator@alloc-simple.html

  * igt@core_setmaster@master-drop-set-shared-fd:
    - {shard-rkl}:        [SKIP][124] -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@core_setmaster@master-drop-set-shared-fd.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@core_setmaster@master-drop-set-shared-fd.html

  * igt@device_reset@unbind-reset-rebind:
    - {shard-rkl}:        [FAIL][126] ([i915#4778]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@device_reset@unbind-reset-rebind.html

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][128] ([i915#2582]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-1/igt@fbdev@nullptr.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][130] ([i915#658]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb7/igt@feature_discovery@psr2.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][132] ([i915#4525]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][134] ([i915#2842]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][136] ([i915#2842]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][138] ([i915#7276]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_tiled_pread_pwrite:
    - {shard-rkl}:        [SKIP][140] ([i915#3282]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-3/igt@gem_tiled_pread_pwrite.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-5/igt@gem_tiled_pread_pwrite.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][142] ([i915#5566] / [i915#716]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@cursor:
    - {shard-rkl}:        [SKIP][144] ([i915#1849]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@i915_pm_rpm@cursor.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][146] ([fdo#109308]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-rkl}:        [SKIP][148] ([i915#5174]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@i915_pm_rpm@system-suspend-devices.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128:
    - shard-tglb:         [INCOMPLETE][150] -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-tglb6/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][152] ([i915#2346]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][154] ([i915#1849] / [i915#4098]) -> [PASS][155] +12 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - {shard-rkl}:        [SKIP][156] ([i915#1849] / [i915#3558]) -> [PASS][157] +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@kms_plane@pixel-format@pipe-b-planes.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - {shard-rkl}:        [SKIP][158] ([i915#3558]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][160] ([i915#5176]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][162] ([i915#5235]) -> [PASS][163] +2 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][164] ([fdo#109441]) -> [PASS][165] +3 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle:
    - {shard-rkl}:        [SKIP][166] ([i915#1845] / [i915#4098]) -> [PASS][167] +19 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-idle.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-idle.html

  * igt@perf_pmu@gt-awake:
    - {shard-rkl}:        [SKIP][168] ([i915#5608]) -> [PASS][169] +2 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@perf_pmu@gt-awake.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@perf_pmu@gt-awake.html

  * igt@syncobj_wait@wait-delayed-signal:
    - {shard-rkl}:        [SKIP][170] ([i915#2575]) -> [PASS][171] +10 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-rkl-5/igt@syncobj_wait@wait-delayed-signal.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-2/igt@syncobj_wait@wait-delayed-signal.html

  
#### Warnings ####

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][172] ([i915#658]) -> [SKIP][173] ([i915#2920])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][174] ([i915#2920]) -> [SKIP][175] ([fdo#111068] / [i915#658]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][176] ([i915#2920]) -> [SKIP][177] ([i915#658])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][178], [FAIL][179]) ([i915#3002] / [i915#4312]) -> ([FAIL][180], [FAIL][181], [FAIL][182]) ([fdo#109271] / [i915#3002] / [i915#4312])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4778]: https://gitlab.freedesktop.org/drm/intel/issues/4778
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5438]: https://gitlab.freedesktop.org/drm/intel/issues/5438
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6914]: https://gitlab.freedesktop.org/drm/intel/issues/6914
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7672]: https://gitlab.freedesktop.org/drm/intel/issues/7672
  [i915#7673]: https://gitlab.freedesktop.org/drm/intel/issues/7673
  [i915#7678]: https://gitlab.freedesktop.org/drm/intel/issues/7678
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701


Build changes
-------------

  * Linux: CI_DRM_12511 -> Patchwork_111997v1

  CI-20190529: 20190529
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111997v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html

--===============2599082933697787598==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsb: DSB fixes/cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111997/">https://patchwork.freedesktop.org/series/111997/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111997v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111997v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12511_full -&gt; Patchwork_111997v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (14 -&gt; 13)</h2>
<p>Missing    (1): shard-tglu-9 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111997v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@i915_hwmon@hwmon-read}:<ul>
<li>{shard-tglu-10}:    NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglu-10/igt@i915_hwmon@hwmon-read.ht=
ml">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111997v1_full that come from kno=
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
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111997v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-a=
pl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111997v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v=
1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111997v1/shard-apl2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111997v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111997v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111997v1/shard-apl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111997v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111997v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111997v1/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl8/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/s=
hard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/=
shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v=
1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_exec_fair@basic-none-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12511/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-t=
glb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_lmem_swapping@verify-r=
andom-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@gem_pwrite@basic-exhaustion.=
html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_render_copy@y-tiled-to=
-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb7/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11199=
7v1/shard-iclb2/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-apl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v=
1/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@i915_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary=
-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary=
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
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_ccs@pipe-d-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_chamelium@hdmi-aspect-=
ratio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_chamelium@hdmi-crc-fast=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_chamelium@vga-hpd-witho=
ut-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_color_chamelium@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_cursor_crc@cursor-onsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_fbcon_fbt@fbc.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i91=
5#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5438">i915#5438</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk3/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +74 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-b-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-apl3/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-b-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_lowres@tiling-4.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-c-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010=
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
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v=
1/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-glk4/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@sysfs_clients@sema-25.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@sysfs_clients@split-25.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@v3d/v3d_mmap@mmap-bad-hand=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@alloc-simple:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@api_intel_allocator@alloc-simple.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#1=
09315</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111997v1/shard-rkl-2/igt@api_intel_allocator@alloc-simple.html">PASS</a=
> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_setmaster@master-drop-set-shared-fd:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@core_setmaster@master-drop-set-shared-fd.html=
">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111997v1/shard-rkl-2/igt@core_setmaster@master-drop-set-shared-fd.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4778">i915#4=
778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111997v1/shard-rkl-2/igt@device_reset@unbind-reset-rebind.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rk=
l-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111997v1/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1997v1/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111997v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#=
7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111997v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-3/igt@gem_tiled_pread_pwrite.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1=
/shard-rkl-5/igt@gem_tiled_pread_pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-glk6/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111997v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@i915_pm_rpm@cursor.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/sha=
rd-rkl-6/igt@i915_pm_rpm@cursor.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v=
1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@i915_pm_rpm@system-suspend-devices.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5174">i915=
#5174</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111997v1/shard-rkl-2/igt@i915_pm_rpm@system-suspend-devices.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-128x128:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-tglb6/igt@kms_cursor_edge_walk@right-edge@pipe-b-edp-1-=
128x128.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111997v1/shard-tglb2/igt@kms_cursor_edge_walk@right-e=
dge@pipe-b-edp-1-128x128.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-glk8/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> +12 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@kms_plane@pixel-format@pipe-b-planes.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
58">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111997v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111997v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-=
planes.html">PASS</a> +1 similar issue</li>
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
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb7/igt@=
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
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-iclb8/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11199=
7v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-idle.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111997v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-id=
le.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@gt-awake:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@perf_pmu@gt-awake.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shar=
d-rkl-2/igt@perf_pmu@gt-awake.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-delayed-signal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-rkl-5/igt@syncobj_wait@wait-delayed-signal.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2=
575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111997v1/shard-rkl-2/igt@syncobj_wait@wait-delayed-signal.html">PASS</a> =
+10 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111997v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111997v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12511/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111997v1/shard-iclb1/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12511/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111997v1/shard-apl6/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11199=
7v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/shard-apl2/igt@runner@aborted=
.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12511 -&gt; Patchwork_111997v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111997v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2599082933697787598==--
