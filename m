Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C234706DA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 18:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB07510E960;
	Fri, 10 Dec 2021 17:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F091710E95D;
 Fri, 10 Dec 2021 17:17:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9424A363C;
 Fri, 10 Dec 2021 17:17:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7602125214491533210=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 10 Dec 2021 17:17:12 -0000
Message-ID: <163915663292.3445.12569215875119264802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209154533.4084-1-ramalingam.c@intel.com>
In-Reply-To: <20211209154533.4084-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev4=29?=
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

--===============7602125214491533210==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev4)
URL   : https://patchwork.freedesktop.org/series/95686/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10985_full -> Patchwork_21808_full
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

  Here are the changes found in Patchwork_21808_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [FAIL][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4392]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk4/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][51] ([i915#3002])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +99 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tglb5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][56] -> [TIMEOUT][57] ([i915#3063] / [i915#3648])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][58] ([i915#2846])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][63] -> [FAIL][64] ([i915#2842]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][65] -> [SKIP][66] ([fdo#109271])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109292])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@gem_mmap_gtt@coherency.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +106 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109293] / [fdo#109506])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109506] / [i915#2411])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#3743]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][77] ([i915#3763])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +9 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109278] / [i915#3886])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][88] -> [DMESG-WARN][89] ([i915#1982]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [i915#1149])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][92] ([i915#1319]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [PASS][93] -> [SKIP][94] ([fdo#109271])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][95] ([i915#180])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#2346] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [FAIL][99] ([i915#2122])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#79])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][102] ([i915#636])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2672])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][104] -> [SKIP][105] ([i915#3701])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109280]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271]) +35 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +7 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_basic:
    - shard-tglb:         NOTRUN -> [FAIL][114] ([i915#132] / [i915#3467])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tglb5/igt@kms_psr@psr2_basic.html
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109441])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][118] -> [FAIL][119] ([i915#31])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk2/igt@kms_setmode@basic.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][120] -> [DMESG-WARN][121] ([i915#180]) +3 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109278])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2437])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_writeback@writeback-check-output.html

  * igt@perf@short-reads:
    - shard-skl:          NOTRUN -> [FAIL][124] ([i915#51])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@perf@short-reads.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][125] -> [INCOMPLETE][126] ([i915#198])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl4/igt@perf_pmu@rc6-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl10/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@sysfs_clients@create.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#3259])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - {shard-rkl}:        [SKIP][130] ([i915#1845] / [i915#4098]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@drm_read@short-buffer-wakeup.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][132] ([i915#2582]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@fbdev@pan.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][134] ([i915#2842]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][136] ([fdo#109271]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][138] ([i915#2849]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][140] ([i915#198]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl9/igt@gem_workarounds@suspend-resume-context.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][142] ([i915#1436] / [i915#716]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][144] ([i915#4281]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - {shard-rkl}:        [SKIP][146] ([fdo#109308]) -> [PASS][147] +3 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        ([SKIP][148], [SKIP][149]) ([i915#1397]) -> [PASS][150]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        ([SKIP][151], [SKIP][152]) ([fdo#109308]) -> [PASS][153]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-4/igt@i915_pm_rpm@system-suspend-modeset.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][154] ([i915#2521]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][156] ([i915#118]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-rkl}:        [SKIP][158] ([i915#1845]) -> [PASS][159] +24 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][160] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][161] +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - {shard-rkl}:        ([SKIP][162], [SKIP][163]) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][164] +2 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-4/igt@kms_color@pipe-b-ctm-green-to-red.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@kms_color@pipe-b-ctm-green-to-red.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - {shard-rkl}:        [SKIP][165] ([fdo#112022] / [i915#4070]) -> [PASS][166] +4 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - {shard-rkl}:        ([SKIP][167], [SKIP][168]) ([fdo#112022] / [i915#4070]) -> [PASS][169] +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/index.html

--===============7602125214491533210==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Enabling 64k page size and fla=
t ccs (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/95686/">https://patchwork.freedesktop.org/series/95686/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21808/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10985_full -&gt; Patchwork_21808_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21808_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10985/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10985/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10985/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/sha=
rd-glk9/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10985/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10985/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10985/shard-glk2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10985/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0985/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10985/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-glk5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10985/shard-glk5/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk9/=
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
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21808/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl6/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html">SKIP</a> ([fdo#109271]) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-tglb5/igt@gem_ctx_sseu@invalid-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/sh=
ard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1808/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/sh=
ard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/sh=
ard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl1/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl1/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> ([fdo#109292])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +106 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl6/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress=
-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stress=
-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basi=
c-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 simil=
ar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-basi=
c-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simil=
ar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_ccs@pipe-c-bad-rotation-9=
0-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/s=
hard-skl6/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN</a> ([i915#198=
2]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_color@pipe-d-ctm-max.html=
">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_color_chamelium@pipe-c-ct=
m-max.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl3/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21808/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html=
">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_flip@2x-flip-vs-expired-v=
blank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vb=
lank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21808/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl2/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21808/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-t=
o-32bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_frontbuffer_tracking@fbcps=
r-suspend.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_pipe_b_c_ivb@from-pipe-c-t=
o-b-with-3-lanes.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-kbl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-tglb5/igt@kms_psr@psr2_basic.html">FAIL<=
/a> ([i915#132] / [i915#3467])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP<=
/a> ([fdo#109441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/sh=
ard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-glk2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-glk8/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21808/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-iclb3/igt@kms_vblank@pipe-d-ts-continua=
tion-dpms-suspend.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-glk1/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@perf@short-reads.html">FAIL</a=
> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl4/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-skl10=
/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21808/shard-skl7/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21808/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</=
a> ([i915#3259])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-2/igt@drm_read@short-buffer-wakeup.html">SKIP</a> (=
[i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21808/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-2/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-r=
kl-6/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21808/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> =
([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21808/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21808/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl9/igt@gem_workarounds@suspend-resume-context.html">I=
NCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21808/shard-skl6/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21808/shard-skl7/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
08/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@gem-mmap-type@uc.html">SKIP</a> (=
[fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21808/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shard-=
rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) ([i915#1397]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shar=
d-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10985/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/sha=
rd-rkl-4/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP</a>) ([fdo#10930=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
08/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21808/shard-skl1/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21808/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_big_fb@=
x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +24 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> ([i9=
15#1149] / [i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_color@pipe-a-ctm-0=
-25.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10985/shard-rkl-4/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10985/shar=
d-rkl-2/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP</a>) ([i915#1149] =
/ [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_color@pipe-b-=
ctm-green-to-red.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10985/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.h=
tml">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21808/shard-rkl-6/igt@kms_cursor_crc@pi=
pe-a-cursor-256x85-sliding.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-">=
SKIP</a>, [SKIP][168]) ([fdo#112022] / [i915#4070]) -&gt; [PASS][169] +2 si=
milar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7602125214491533210==--
