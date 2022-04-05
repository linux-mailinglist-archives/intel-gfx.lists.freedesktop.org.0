Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254D64F20CF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 04:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C76410E183;
	Tue,  5 Apr 2022 02:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9EBC10E183;
 Tue,  5 Apr 2022 02:25:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B97F5A00FD;
 Tue,  5 Apr 2022 02:25:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8629786927048047233=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 05 Apr 2022 02:25:07 -0000
Message-ID: <164912550771.24158.8891038289240855487@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220404181844.2649726-1-lucas.demarchi@intel.com>
In-Reply-To: <20220404181844.2649726-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uncore=3A_keep_track_of_last_mmio_accesses_=28rev2=29?=
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

--===============8629786927048047233==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uncore: keep track of last mmio accesses (rev2)
URL   : https://patchwork.freedesktop.org/series/102157/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11450_full -> Patchwork_22774_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22774_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@pipe-b-forked-bo:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-rkl-6/igt@kms_cursor_legacy@pipe-b-forked-bo.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-rkl-5/igt@kms_cursor_legacy@pipe-b-forked-bo.html

  
Known issues
------------

  Here are the changes found in Patchwork_22774_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [FAIL][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][53] ([i915#4991])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][54] ([i915#5076]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +157 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-apl:          NOTRUN -> [FAIL][57] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][58] ([i915#2842]) +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@gem_lmem_swapping@basic.html
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109289])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][66] -> [FAIL][67] ([i915#454])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][68] ([i915#454])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][69] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          NOTRUN -> [DMESG-WARN][70] ([i915#180]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#2521])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#5286])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111614]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3777])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#3763])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3689] / [i915#3886])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3689]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278] / [i915#3886]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +8 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][89] ([i915#1319])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109279] / [i915#3359])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][91] -> [INCOMPLETE][92] ([i915#300])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [fdo#109279])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#5287])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#2122]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][98] -> [DMESG-WARN][99] ([i915#180]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#3701])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109280]) +4 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +80 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +26 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][106] -> [FAIL][107] ([i915#1188]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][108] -> [DMESG-WARN][109] ([i915#180]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][111] ([i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][112] -> [FAIL][113] ([fdo#108145] / [i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109278]) +6 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-b-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#5288])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-4.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#3536])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109441]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][121] -> [SKIP][122] ([fdo#109441]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#111615] / [i915#5289])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][124] -> [DMESG-WARN][125] ([i915#180] / [i915#295])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#533])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#533])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2437])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl4/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2437])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][130] -> [FAIL][131] ([i915#1542])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/igt@perf@polling-parameterized.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][132] -> [DMESG-WARN][133] ([i915#1982] / [i915#262])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl7/igt@perf_pmu@module-unload.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl7/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109291]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl9/igt@sysfs_clients@split-10.html
    - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][137] ([i915#3063] / [i915#3648]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-tglu-4/igt@gem_eio@unwedge-stress.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglu-4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][139] ([i915#4525]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][141] ([i915#2846]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][143] ([i915#2842]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][145] ([i915#2842]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][147] ([i915#2842]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [DMESG-WARN][151] ([i915#180]) -> [PASS][152] +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-tglb:         [INCOMPLETE][153] ([i915#750]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-tglb3/igt@gem_exec_whisper@basic-fds-forked-all.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - {shard-rkl}:        [INCOMPLETE][155] -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          [DMESG-WARN][157] ([i915#1982]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-skl4/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl8/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - {shard-rkl}:        [SKIP][159] ([i915#1845] / [i915#4098]) -> [PASS][160] +3 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_cursor_legacy@pipe-c-forked-bo:
    - {shard-rkl}:        [SKIP][161] ([i915#4070]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/index.html

--===============8629786927048047233==
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
<tr><td><b>Series:</b></td><td>drm/i915/uncore: keep track of last mmio acc=
esses (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102157/">https://patchwork.freedesktop.org/series/102157/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22774/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11450_full -&gt; Patchwork_22774_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22774_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_cursor_legacy@pipe-b-forked-bo:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-rkl-6/igt@kms_cursor_legacy@pipe-b-forked-bo.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
774/shard-rkl-5/igt@kms_cursor_legacy@pipe-b-forked-bo.html">INCOMPLETE</a>=
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22774_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11450/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl1/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11450/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11450/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11450/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11450/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11450/shard-apl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1450/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11450/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11450/shard-apl8/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22774/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-apl8/=
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
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl3/igt@gem_exec_balancer@parallel-kee=
p-in-fence.html">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +157 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-kbl4/igt@gem_exec_fair@basic-none-solo@r=
cs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-apl8/igt@gem_exec_fair@basic-none-solo@r=
cs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_227=
74/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-apl1/igt@gem_lmem_swapping@basic.html">S=
KIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-skl9/igt@gem_lmem_swapping@basic.html">S=
KIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@gem_lmem_swapping@parallel-ra=
ndom.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11450/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-iclb2/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-skl9/igt@i915_pm_dc@dc6-psr.html">FAIL</=
a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl7/igt@i915_suspend@debugfs-reader.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl1/igt@i915_suspend@sysfs-reader.html=
">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_async_flips@alternate-sync=
-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_ccs@pipe-a-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-dat=
a-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_chamelium@hdmi-crc-fast.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_color_chamelium@pipe-d-ct=
m-limited-range.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2774/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</=
a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb=
8888-mmap-gtt-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_flip@2x-flip-vs-suspend.h=
tml">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22774/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#2122]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/s=
hard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22774/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_frontbuffer_tracking@psr-2=
p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-kbl4/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +26 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1=
-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22774/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpm=
s-edp-1-pipe-a.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22774/shard-kbl1/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22774/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_plane_lowres@pipe-b-tilin=
g-4.html">SKIP</a> ([i915#5288])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-=
continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</=
p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move=
-continuous-sf.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.=
html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/s=
hard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-tglb5/igt@kms_rotation_crc@primary-yf-t=
iled-reflect-x-180.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22774/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-skl4/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-apl4/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-apl3/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard=
-apl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl7/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-skl=
7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262]=
)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22774/shard-iclb5/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-skl9/igt@sysfs_clients@split-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22774/shard-apl1/igt@sysfs_clients@split-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-tglu-4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i=
915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22774/shard-tglu-4/igt@gem_eio@unwedge-stress.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22774/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22774/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22774/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22774/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11450/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22774/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11450/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22774/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.htm=
l">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22774/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-tglb3/igt@gem_exec_whisper@basic-fds-forked-all.html">I=
NCOMPLETE</a> ([i915#750]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22774/shard-tglb5/igt@gem_exec_whisper@basic-fds-forked=
-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sme=
m0.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22774/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress@extra=
-wait-smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-skl4/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN<=
/a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22774/shard-skl8/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11450/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22774/shard-rkl-6/igt@kms=
_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-bo:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.o">SKIP</a> ([i9=
15#4070]) -&gt; [PASS][162]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8629786927048047233==--
