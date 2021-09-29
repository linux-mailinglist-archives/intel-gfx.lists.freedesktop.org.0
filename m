Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE8A41D014
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 01:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5FF36EB0D;
	Wed, 29 Sep 2021 23:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E3776EB0B;
 Wed, 29 Sep 2021 23:39:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73B6DAA0ED;
 Wed, 29 Sep 2021 23:39:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0057366010836843483=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 23:39:47 -0000
Message-ID: <163295878742.27098.5203780970968248121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210929194052.469-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20210929194052.469-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev3=29?=
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

--===============0057366010836843483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update memory bandwidth formulae (rev3)
URL   : https://patchwork.freedesktop.org/series/95138/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660_full -> Patchwork_21195_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21195_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-iclb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50]) ([i915#3521])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][51] ([i915#3002])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#280]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][55] ([i915#2846])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2846])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk9/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#2846])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +138 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][62] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109283])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#112283])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@gem_exec_params@secure-non-master.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109289])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2856]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#1937])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109506] / [i915#2411])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][73] ([i915#2373])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][74] ([i915#1759] / [i915#2291])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][75] ([i915#180])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#4224])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl10/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111614])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#3722]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111615]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +292 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3689]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3689] / [i915#3886]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +21 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][90] -> [DMESG-WARN][91] ([i915#1982])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl5/igt@kms_color@pipe-c-ctm-0-75.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][94] ([i915#1319])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111828])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][96] -> [INCOMPLETE][97] ([i915#2411] / [i915#2828] / [i915#456])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3359]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3319])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109279] / [i915#3359]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +52 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2346])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][105] -> [INCOMPLETE][106] ([i915#4173] / [i915#456])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#79])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][109] -> [INCOMPLETE][110] ([i915#198] / [i915#1982])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +5 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][113] -> [FAIL][114] ([i915#2122]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][115] -> [DMESG-WARN][116] ([i915#118] / [i915#95]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@kms_frontbuffer_tracking@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk3/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#111825]) +12 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][118] -> [FAIL][119] ([i915#1188])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533]) +3 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#533]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265]) +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][124] -> [FAIL][125] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#3536])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +9 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#2920]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][131] ([i915#132] / [i915#3467]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][132] ([IGT#2])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl1/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][133] ([IGT#2])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][134] -> [INCOMPLETE][135] ([i915#3896])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109502])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#2437])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#2530])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2994]) +4 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-apl3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2994])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#2994])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-tglb:         [INCOMPLETE][143] ([i915#1373]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][145] ([i915#2842]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][147] ([i915#2842]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@dr1-dirt:
    - shard-skl:          [DMESG-WARN][149] ([i915#1982]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl4/igt@gem_exec_params@dr1-dirt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl8/igt@gem_exec_params@dr1-dirt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][151] ([i915#2190]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][153] ([i915#644]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][155] ([i915#180]) -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][157] ([i915#198] / [i915#4173]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl2/igt@gem_workarounds@suspend-resume-context.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][159] ([i915#1436] / [i915#716]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [INCOMPLETE][161] ([i915#456]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@i915_suspend@forcewake.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][163] ([i915#118] / [i915#95]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][165] ([i915#180]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl3/igt@kms_flip@flip-vs-suspend-i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html

--===============0057366010836843483==
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
rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/95138/">https://patchwork.freedesktop.org/series/95138/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21195/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660_full -&gt; Patchwork_21195_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21195_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10660/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10660/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_106=
60/shard-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/sha=
rd-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_10660/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-icl=
b2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10660/shard-iclb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1066=
0/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10660/shard-iclb5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shar=
d-iclb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10660/shard-iclb6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/boot.html">PASS</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/=
shard-iclb8/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21195/shard-iclb8/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb8/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_211=
95/shard-iclb7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/shard-iclb7/boot.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb6/boot.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21195/shard-iclb6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21195/shard-iclb6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21195/shard-iclb5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21195/shard-iclb5/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb5/bo=
ot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21195/shard-iclb4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21195/shard-iclb4/boot.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb4=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21195/shard-iclb3/boot.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb3/boot.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-ic=
lb3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21195/shard-iclb2/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb2/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard=
-iclb2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21195/shard-iclb1/boot.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-iclb1/boot.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/sh=
ard-iclb1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21195/shard-iclb1/boot.html">FAIL</a>) ([i915#3521])</li>
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
/tree/drm-tip/Patchwork_21195/shard-apl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21195/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb5/igt@gem_ctx_sseu@mmap-args.html">=
SKIP</a> ([i915#280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/shard-kbl2/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shar=
d-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/shard-apl1/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +138 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/sh=
ard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@gem_exec_fair@basic-pace-shar=
e@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/s=
hard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@gem_exec_params@secure-non-ma=
ster.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb5/igt@gen7_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@gen9_exec_parse@bb-start-para=
m.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_selftest@live@gt_lrc.htm=
l">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl4/igt@i915_suspend@forcewake.html">D=
MESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl10/igt@kms_async_flips@crc.html">FAI=
L</a> ([i915#4224])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_big_fb@x-tiled-32bpp-rota=
te-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-90.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +292 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-dat=
a-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +21 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_chamelium@hdmi-audio-edid=
.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl7/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl5/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-=
skl6/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl3/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_content_protection@mei_in=
terface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21195/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE=
</a> ([i915#2411] / [i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-rapid-movement.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21195/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard=
-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#4173] / [i=
915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21195/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">FA=
IL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21195/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> ([i915#198] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/s=
hard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21195/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk6/igt@kms_frontbuffer_tracking@basic.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/s=
hard-glk3/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> ([i915#11=
8] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#111825]) +12 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/shard-sk=
l6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21195/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +9 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb1/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_psr@psr2_dpms.html">FAIL<=
/a> ([i915#132] / [i915#3467]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/shard-apl1/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21195/shard-skl4/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21195/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">=
INCOMPLETE</a> ([i915#3896])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@kms_vrr@flip-suspend.html">SK=
IP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@kms_writeback@writeback-check=
-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb3/igt@nouveau_crc@pipe-d-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-skl1/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-apl3/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-kbl2/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21195/shard-tglb8/igt@sysfs_clients@split-25.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">=
INCOMPLETE</a> ([i915#1373]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21195/shard-tglb1/igt@gem_ctx_isolation@preservation-=
s3@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21195/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21195/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr1-dirt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl4/igt@gem_exec_params@dr1-dirt.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21195/shard-skl8/igt@gem_exec_params@dr1-dirt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1195/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> ([i915#644]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21195/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-kbl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21195/shard-kbl2/igt@gem_softpin@noreloc-s3.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl2/igt@gem_workarounds@suspend-resume-context.html">I=
NCOMPLETE</a> ([i915#198] / [i915#4173]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21195/shard-skl4/igt@gem_workarounds@susp=
end-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21195/shard-skl8/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (=
[i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21195/shard-tglb3/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21195/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10660/shard-apl3/igt@kms_flip@flip-vs-suspend-i">DMESG-WARN</a> ([i=
915#180]) -&gt; [PASS][166]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0057366010836843483==--
