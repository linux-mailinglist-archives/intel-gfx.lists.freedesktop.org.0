Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC8B471213
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 07:04:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBC510E96D;
	Sat, 11 Dec 2021 06:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E0DA10E96D;
 Sat, 11 Dec 2021 06:04:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 162A7A363C;
 Sat, 11 Dec 2021 06:04:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4182874146059187648=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Sat, 11 Dec 2021 06:04:52 -0000
Message-ID: <163920269205.10523.8695934927171171170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210044022.1842938-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211210044022.1842938-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQXNz?=
 =?utf-8?q?orted_fixes/tweaks_to_GuC_support_=28rev6=29?=
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

--===============4182874146059187648==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Assorted fixes/tweaks to GuC support (rev6)
URL   : https://patchwork.freedesktop.org/series/97514/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10987_full -> Patchwork_21817_full
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

  Here are the changes found in Patchwork_21817_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [FAIL][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][53] -> [TIMEOUT][54] ([i915#3063])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#3063])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#4547])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl1/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#2842]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#2842]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl4/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#4270])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3297])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#3318])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#1436] / [i915#716])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][72] -> [DMESG-WARN][73] ([i915#1436] / [i915#716])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#111644] / [i915#1397] / [i915#2411])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#2521])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +6 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][88] ([i915#1319])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][89] ([i915#2105])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +105 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109279] / [i915#3359])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3319])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][93] -> [DMESG-WARN][94] ([i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#2346])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#2346] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-busy-flip:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#111825]) +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][100] -> [FAIL][101] ([i915#79])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#79])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-tglb:         [PASS][104] -> [DMESG-WARN][105] ([i915#2411] / [i915#2867])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][106] -> [FAIL][107] ([i915#2122])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
    - shard-apl:          NOTRUN -> [DMESG-WARN][108] ([i915#1226])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl2/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271]) +40 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +258 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][114] ([i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([fdo#108145] / [i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#658]) +7 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][120] -> [SKIP][121] ([fdo#109441]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][122] ([i915#4663])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][123] -> [DMESG-WARN][124] ([i915#180] / [i915#295])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533]) +4 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2437])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_writeback@writeback-check-output.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([fdo#109291])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2994])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl10/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-3:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#2994])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl6/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][131] ([i915#2582]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-2/igt@fbdev@write.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +8 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][135] ([i915#2481] / [i915#3070]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb7/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][137] ([i915#3063]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-1/igt@gem_eio@unwedge-stress.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][139] ([i915#2842]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][141] ([i915#2842]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][143] ([fdo#109271]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][145] ([i915#2849]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][147] ([i915#198]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - {shard-rkl}:        [SKIP][149] ([i915#3012]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-4/igt@i915_pm_backlight@fade_with_dpms.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][151] ([i915#4281]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][153] ([i915#1397]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-4/igt@i915_pm_rpm@dpms-lpsp.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][155] ([fdo#109308]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-4/igt@i915_pm_rpm@system-suspend-modeset.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html
    - shard-skl:          [INCOMPLETE][157] ([i915#151]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@reset:
    - {shard-rkl}:        [FAIL][159] ([i915#4016]) -> ([PASS][160], [PASS][161])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-1/igt@i915_pm_rps@reset.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-2/igt@i915_pm_rps@reset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-4/igt@i915_pm_rps@reset.html

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - {shard-rkl}:        [SKIP][162] ([i915#1845]) -> [PASS][163] +14 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - {shard-rkl}:        [SKIP][164] ([i915#1149] / [i915#4098]) -> [PASS][165] +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-5.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][166] ([i915#1982]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
    - {shard-rkl}:        [SKIP][168] ([i915#4070]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-6/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][170] ([fdo#112022]) -> [PASS][171] +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/index.html

--===============4182874146059187648==
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
<tr><td><b>Series:</b></td><td>Assorted fixes/tweaks to GuC support (rev6)<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97514/">https://patchwork.freedesktop.org/series/97514/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21817/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21817/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10987_full -&gt; Patchwork_21817_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21817_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10987/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10987/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10987/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10987/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10987/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10987/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10987/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0987/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10987/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10987/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10987/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk9/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-glk1/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21817/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817=
/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3=
063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl3/igt@gem_eio@in-flight-contexts-imm=
ediate.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-s=
kl1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
817/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
17/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/s=
hard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl4/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@gem_userptr_blits@dmabuf-unsy=
nc.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shar=
d-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/s=
hard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-iclb3=
/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-kbl4/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shar=
d-kbl6/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl10/igt@kms_async_flips@alternate-syn=
c-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl3/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl7/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-3=
2x10-offscreen.html">SKIP</a> ([fdo#109271]) +105 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21817/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edg=
e.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21817/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_flip@2x-busy-flip.html">S=
KIP</a> ([fdo#111825]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21817/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21817/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21817/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp=
1.html">DMESG-WARN</a> ([i915#2411] / [i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21817/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl2/igt@kms_flip_tiling@flip-change-ti=
ling@dp-1-pipe-a-y-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +40 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl4/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +258 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21817/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html"=
>FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-apl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/s=
hard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@kms_selftest@all@check_plane_=
state.html">INCOMPLETE</a> ([i915#4663])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21817/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl3/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@prime_nv_test@nv_write_i915_g=
tt_mmap_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-skl10/igt@sysfs_clients@fair-1.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-tglb5/igt@sysfs_clients@fair-3.html">SK=
IP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21817/shard-kbl6/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-2/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard=
-rkl-6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21817/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@=
bcs0.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21817/shard-iclb7/igt@gem_eio@unwedge-stress.html">PASS</a>=
</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-rkl-1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21817/shard-rkl-2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21817/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21817/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21817/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21817/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl8/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> ([=
i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21817/shard-skl7/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-4/igt@i915_pm_backlight@fade_with_dpms.html">SKIP</=
a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21817/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
17/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-4/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1=
397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1817/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-rkl-4/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP<=
/a> ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21817/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">=
PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10987/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21817/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.htm=
l">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-1/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#4016]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2181=
7/shard-rkl-2/igt@i915_pm_rps@reset.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21817/shard-rkl-4/igt@i915_pm_rps@re=
set.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-eve=
nts.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21817/shard-rkl-6/igt@kms_async_flips@async-flip-=
with-page-flip-events.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-5.html">SKIP</a> ([i91=
5#1149] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21817/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a>=
 ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21817/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-6/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.htm=
l">SKIP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21817/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matri=
x-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10987/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.h=
tml">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21817/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-12=
8x42-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement:</p>
</li>
</ul>

</body>
</html>

--===============4182874146059187648==--
