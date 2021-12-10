Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4175946FD64
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 10:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980DC10E289;
	Fri, 10 Dec 2021 09:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66E0B10E289;
 Fri, 10 Dec 2021 09:08:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D128A00FD;
 Fri, 10 Dec 2021 09:08:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8515197072454672219=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 10 Dec 2021 09:08:22 -0000
Message-ID: <163912730236.3445.1327164212672380282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU3Vw?=
 =?utf-8?q?port_bigger_GuC_RSA_keys?=
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

--===============8515197072454672219==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Support bigger GuC RSA keys
URL   : https://patchwork.freedesktop.org/series/97760/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10984_full -> Patchwork_21797_full
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

  Here are the changes found in Patchwork_21797_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [FAIL][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk9/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][51] ([i915#3002])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-glk:          [PASS][52] -> [DMESG-WARN][53] ([i915#118]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/igt@gem_ctx_persistence@many-contexts.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][54] -> [TIMEOUT][55] ([i915#3063] / [i915#3648])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +32 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl1/igt@gem_exec_params@no-vebox.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl6/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +116 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#768])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][66] ([i915#3002])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#3318])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109289])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gen7_exec_parse@load-register-reg.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#454])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109506] / [i915#2411])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-tglb2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#180]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-apl7/igt@i915_suspend@fence-restore-untiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278]) +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886]) +5 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [i915#3886]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +94 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][84] -> [DMESG-WARN][85] ([i915#1982])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][88] ([i915#1319])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][89] ([i915#180])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [fdo#109279])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][93] -> [INCOMPLETE][94] ([i915#180] / [i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][95] -> [INCOMPLETE][96] ([i915#180] / [i915#636])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109274]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][98] -> [SKIP][99] ([i915#3701]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109280]) +5 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#1188])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#533])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][105] -> [DMESG-WARN][106] ([i915#180]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][109] ([fdo#108145] / [i915#265])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2733])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658]) +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][113] -> [SKIP][114] ([fdo#109441]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][115] -> [INCOMPLETE][116] ([i915#198] / [i915#2828])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2437])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#2530])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#109295])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        ([SKIP][121], [SKIP][122]) ([i915#4098]) -> [PASS][123]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][124] ([i915#658]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@feature_discovery@psr1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][126] ([i915#3063]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][128] ([i915#2842]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][130] ([i915#2842]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][132] ([i915#2842]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][134] ([i915#2842]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][136] ([fdo#109271]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][138] ([i915#3639]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][140] ([i915#180]) -> [PASS][141] +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][142] ([i915#3012]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {shard-rkl}:        ([SKIP][144], [SKIP][145]) ([fdo#109308]) -> [PASS][146]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][147] ([fdo#109308]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][149] ([i915#151]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - {shard-rkl}:        ([SKIP][151], [SKIP][152]) ([i915#1845]) -> [PASS][153]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][154] ([i915#1845]) -> [PASS][155] +16 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][156] ([i915#4070]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-4/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][158] ([fdo#112022] / [i915#4070]) -> [PASS][159] +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - {shard-rkl}:        ([SKIP][160], [SKIP][161]) ([fdo#112022] / [i915#4070]) -> [PASS][162]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - {shard-rkl}:        [SKIP][163] ([i915#1849] / [i915#4070]) -> [PASS][164] +3 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - {shard-rkl}:        [SKIP][165] ([fdo#111825] / [i915#4070]) -> [PASS][166] +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [FAIL][167] ([i915#2346]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][169] ([i915#2346] / [i915#533]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl9/igt@kms_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/index.html

--===============8515197072454672219==
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
<tr><td><b>Series:</b></td><td>Support bigger GuC RSA keys</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97760/">https://patchwork.freedesktop.org/series/97760/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21797/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21797/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10984_full -&gt; Patchwork_21797_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21797_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10984/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10984/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10984/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10984/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk9/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10984/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10984/shard-glk9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10984/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0984/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10984/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10984/shard-glk6/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21797/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-glk1/boot.html">FAI=
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
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-glk5/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2179=
7/shard-glk7/igt@gem_ctx_persistence@many-contexts.html">DMESG-WARN</a> ([i=
915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-tg=
lb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2179=
7/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-skl1/igt@gem_exec_params@no-vebox.html"=
>SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21797/shard-skl6/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21797/shard-apl3/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_pxp@regular-baseline-src-c=
opy-readible.html">SKIP</a> ([fdo#109271]) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@gen7_exec_parse@load-register=
-reg.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl2/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-iclb3=
/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-tglb2/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-apl7/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
97/shard-apl3/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> (=
[i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary-ro=
tation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109278]) +7 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-skl1/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl2/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_chamelium@vga-edid-read.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-=
skl9/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@kms_color_chamelium@pipe-c-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl3/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21797/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10984/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-a=
pl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#=
1982])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10984/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-k=
bl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#=
636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21797/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-t=
o-32bpp-ytile.html">SKIP</a> ([i915#3701]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109280]) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard=
-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21797/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21797/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-skl6/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shar=
d-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21797/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">IN=
COMPLETE</a> ([i915#198] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl1/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@nouveau_crc@pipe-c-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-iclb2/igt@prime_vgem@fence-write-hang.h=
tml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21797/shard-kbl7/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10984/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-r=
kl-4/igt@drm_read@short-buffer-nonblock.html">SKIP</a>) ([i915#4098]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-=
rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-1/igt@feature_discovery@psr1.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1797/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21797/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21797/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21797/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21797/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21797/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> =
([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21797/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP=
</a> ([i915#3639]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21797/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">=
PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21797/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html">SKIP=
</a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21797/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10984/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard-r=
kl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a>) ([fdo#109308]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard=
-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#=
109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21797/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOM=
PLETE</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21797/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10984/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-0.html">SKIP<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shard=
-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-0.html">SKIP</a>) ([i915#1845]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/sh=
ard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">SKIP</=
a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21797/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS=
</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.ht=
ml">SKIP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21797/shard-rkl-4/igt@kms_color@pipe-c-invalid-degamma-=
lut-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen=
.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_crc@=
pipe-a-cursor-128x42-offscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10984/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/shar=
d-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">SKIP</a>) ([fdo#112022]=
 / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21797/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.=
html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_edge_w=
alk@pipe-a-128x128-top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.htm=
l">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21797/shard-rkl-6/igt@kms_cursor_legacy@c=
ursora-vs-flipa-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21797/shard-iclb3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10984/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21797/shard-skl9/igt=
@kms_">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============8515197072454672219==--
