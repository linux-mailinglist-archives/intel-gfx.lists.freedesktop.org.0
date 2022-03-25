Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CB54E7873
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 16:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350BC10E630;
	Fri, 25 Mar 2022 15:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DD3E10E630;
 Fri, 25 Mar 2022 15:54:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B8C3A66C9;
 Fri, 25 Mar 2022 15:54:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5532346731792960148=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 25 Mar 2022 15:54:24 -0000
Message-ID: <164822366404.24040.8277811911081880269@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648210803.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648210803.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_constify_EDID_parsing?=
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

--===============5532346731792960148==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: constify EDID parsing
URL   : https://patchwork.freedesktop.org/series/101787/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11404_full -> Patchwork_22682_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22682_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [FAIL][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4392]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk5/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk5/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk4/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk4/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk4/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][51] -> [TIMEOUT][52] ([i915#2481] / [i915#3070])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb4/igt@gem_eio@unwedge-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@fairslice:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +176 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl9/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][54] ([i915#5076])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#2846])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][57] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][60] -> [SKIP][61] ([i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl9/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#4613]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl6/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#4270])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109289])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         NOTRUN -> [FAIL][69] ([i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#454])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][72] ([i915#1886])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#5286]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111614])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3689]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3116] / [i915#3299])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][85] ([i915#2105])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +63 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3359])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#2346] / [i915#533])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#533])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][94] ([i915#79])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#2122])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][97] ([i915#3701])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#4911])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#533])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][104] ([i915#265])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][105] ([fdo#108145] / [i915#265]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][108] -> [SKIP][109] ([fdo#109441]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271]) +39 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#111615]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][112] ([IGT#2])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl6/igt@kms_sysfs_edid_timing.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#2530])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109291])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][115] ([i915#5098])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl3/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-kbl:          [DMESG-WARN][117] ([i915#180]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [FAIL][119] ([i915#2842]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][121] ([i915#2842]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][123] ([fdo#109271]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][125] ([i915#644]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][127] ([i915#1373] / [i915#4939] / [i915#5230]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][129] ([i915#1436] / [i915#716]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][133] ([i915#3614]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][135] ([i915#118]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][137] ([i915#2346] / [i915#533]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [FAIL][139] ([i915#2346]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][141] ([i915#79]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][143] ([i915#3701]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [SKIP][145] ([i915#5176]) -> [PASS][146] +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][147] ([i915#5235]) -> [PASS][148] +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][151] ([i915#3063] / [i915#3648]) -> [FAIL][152] ([i915#232])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][153] ([i915#2851]) -> [FAIL][154] ([i915#2842])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][155] ([i915#1804] / [i915#2684]) -> [WARN][156] ([i915#2684])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][157] ([i915#2920]) -> [SKIP][158] ([fdo#111068] / [i915#658])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl8/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl3/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl3/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl1/igt@run

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/index.html

--===============5532346731792960148==
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
<tr><td><b>Series:</b></td><td>drm/edid: constify EDID parsing</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101787/">https://patchwork.freedesktop.org/series/101787/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22682/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22682/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11404_full -&gt; Patchwork_22682_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22682_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11404/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk5/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11404/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11404/shard-glk4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11404/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk1/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk1/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11404/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk9/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11404/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1404/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11404/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11404/shard-glk2/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb4/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-ic=
lb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl9/igt@gem_exec_balancer@fairslice.ht=
ml">SKIP</a> ([fdo#109271]) +176 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@gem_exec_balancer@parallel.htm=
l">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/sha=
rd-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/s=
hard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#18=
0]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl9/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gem_lmem_swapping@parallel-mu=
lti.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl6/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gem_pxp@create-valid-protecte=
d-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@gen9_exec_parse@valid-registe=
rs.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html">FAI=
L</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb4/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_ccs@pipe-b-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_chamelium@hdmi-audio-edid.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_content_protection@dp-mst=
-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-3=
2x10-offscreen.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2682/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22682/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL<=
/a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-kbl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22682/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a=
> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#109271]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-i=
clb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-glk1/igt@kms_rotation_crc@primary-x-til=
ed-reflect-x-180.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@kms_rotation_crc@primary-yf-t=
iled-reflect-x-270.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-apl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@nouveau_crc@pipe-d-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-tglb2/igt@prime_nv_api@i915_self_import=
_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl3/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22682/shard-skl7/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs1.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22682/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@=
vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22682/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22682/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22682/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> ([i915#644]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22682/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-skl10/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (=
[i915#1373] / [i915#4939] / [i915#5230]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22682/shard-skl7/igt@gem_softpin@noreloc-=
s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22682/shard-skl2/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-apl6/igt@i915_suspend@fence-restore-untiled.html">DMESG=
-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22682/shard-apl7/igt@i915_suspend@fence-restore-untiled.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-kbl6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 ([i915#3614]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22682/shard-kbl3/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22682/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-glk3/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22682/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor=
-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22682/shard-glk4/igt@kms_flip@2x-flip-vs-expire=
d-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22682/shard-iclb8/igt@kms_flip_=
scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">SKIP</a> ([i915#=
5176]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22682/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-=
0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html">SKIP</a> (=
[i915#5235]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22682/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-do=
wnscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22682/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22682/shard-tglb2/igt@gem_eio@unwedge-stress.html">FAIL</a=
> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22682/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22682/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11404/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22682/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">=
SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11404/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11404/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11404/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/shard-apl1/igt@run">FAIL</a>, =
[FAIL][165], [FAIL][166]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#=
3002] / [i915#4312] / [i915#5257]) -&gt; ([FAIL][167], [FAIL][168], [FAIL][=
169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([i9=
15#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5532346731792960148==--
