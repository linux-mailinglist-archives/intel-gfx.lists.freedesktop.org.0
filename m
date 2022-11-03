Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED70617C41
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 13:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC60210E5DC;
	Thu,  3 Nov 2022 12:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3EDE10E27C;
 Thu,  3 Nov 2022 12:13:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95354AA01E;
 Thu,  3 Nov 2022 12:13:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2331872538003420721=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 03 Nov 2022 12:13:33 -0000
Message-ID: <166747761355.9193.2511223438627011412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Bump_up_sample_period_for_busy_stats_selftest?=
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

--===============2331872538003420721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest: Bump up sample period for busy stats selftest
URL   : https://patchwork.freedesktop.org/series/110454/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12333_full -> Patchwork_110454v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_12333_full and Patchwork_110454v1_full:

### New IGT tests (1) ###

  * igt@fbdev@pan:
    - Statuses : 6 pass(s)
    - Exec time: [0.03, 0.07] s

  

Known issues
------------

  Here are the changes found in Patchwork_110454v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [FAIL][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4386]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - shard-apl:          NOTRUN -> [FAIL][51] ([i915#6724])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@fbdev@read.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#4525]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2846])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#4613])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_vme:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#284])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@gem_media_vme.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [INCOMPLETE][67] ([i915#7248])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][68] ([i915#7248])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][69] ([i915#4991])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109289])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#5566] / [i915#716])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#3989] / [i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][75] -> [INCOMPLETE][76] ([i915#7253])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4387])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@i915_pm_sseu@full-enable.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#2521])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#5286])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +27 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#6095])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@dp-hpd:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3555])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109274])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#79])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-tglb:         [PASS][94] -> [FAIL][95] ([i915#79])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#79]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][98] -> [INCOMPLETE][99] ([i915#4839])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#2122]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#2672]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#3555])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#2587] / [i915#2672]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#2672] / [i915#3555])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +69 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271]) +20 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [PASS][110] -> [DMESG-WARN][111] ([i915#1982]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109280]) +4 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#7307])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][115] -> [SKIP][116] ([i915#5176]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#5176]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][118] -> [SKIP][119] ([i915#5235]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#5235]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#2920])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([fdo#109441]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][125] -> [SKIP][126] ([i915#5519])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [PASS][127] -> [FAIL][128] ([i915#7318])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl4/igt@perf_pmu@interrupts.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl10/igt@perf_pmu@interrupts.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#109295])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@sysfs_clients@split-10.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][132] ([i915#658]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb3/igt@feature_discovery@psr2.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][134] ([i915#6268]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][136] ([i915#2842]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][138] ([i915#2842]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][140] ([i915#5566] / [i915#716]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][142] ([i915#1804]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][144] ([i915#6537]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/igt@i915_pm_rps@engine-order.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][146] ([i915#5334]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [DMESG-WARN][148] ([i915#4391]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb7/igt@kms_dp_aux_dev.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb5/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [FAIL][150] ([i915#2122]) -> [PASS][151] +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [INCOMPLETE][152] -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
    - shard-glk:          [DMESG-FAIL][154] ([i915#118]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
    - shard-glk:          [DMESG-WARN][156] ([i915#118]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][158] ([fdo#109441]) -> [PASS][159] +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][160] ([i915#180]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
    - shard-skl:          [INCOMPLETE][162] ([i915#7404]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][164] ([i915#658]) -> [SKIP][165] ([i915#588])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6724]: https://gitlab.freedesktop.org/drm/intel/issues/6724
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7253]: https://gitlab.freedesktop.org/drm/intel/issues/7253
  [i915#7307]: https://gitlab.freedesktop.org/drm/intel/issues/7307
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#7404]: https://gitlab.freedesktop.org/drm/intel/issues/7404
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12333 -> Patchwork_110454v1

  CI-20190529: 20190529
  CI_DRM_12333: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110454v1: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/index.html

--===============2331872538003420721==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest: Bump up sample period for=
 busy stats selftest</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110454/">https://patchwork.freedesktop.org/series/110454/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110454v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110454v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12333_full -&gt; Patchwork_110454v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12333_full and Patchwork_1=
10454v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@fbdev@pan:<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.03, 0.07] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110454v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12333/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12333/shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12333/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12333/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12333/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12333/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2333/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12333/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110454v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-a=
pl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110454v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v=
1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110454v1/shard-apl1/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110454v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110454v1/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110454v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110454v1/shard-apl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110454v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110454v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110454v1/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl7/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@fbdev@read.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6724">i915#6724<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110454v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/=
shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@gem_exec_fair@basic-none-vi=
p@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0454v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
454v1/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v=
1/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@gem_lmem_swapping@random-e=
ngines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#28=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@gem_pread@exhaustion.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
248">i915#7248</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@gem_pread@exhaustion.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
248">i915#7248</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@gem_userptr_blits@input-ch=
ecking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v=
1/shard-apl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
454v1/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7253">i915#7=
253</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110454v1/shard-skl7/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@kms_chamelium@dp-frame-dump=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_chamelium@dp-hpd.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-skl9/igt@kms_chamelium@hdmi-crc-sing=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_chamelium@hdmi-hpd-for=
-each-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_cursor_crc@cursor-onsc=
reen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip@2x-flip-vs-expire=
d-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110454v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@=
ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_flip@2x-flip-vs-pannin=
g-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110454v1/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110454v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454=
v1/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#4839</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110454v1/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptibl=
e@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms=
_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default=
-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
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
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl7/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +69 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_frontbuffer_tracking@ps=
r-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-plflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110454v1/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p=
-primscrn-indfb-plflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7307"=
>i915#7307</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-ed=
p-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-glk1/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454=
v1/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110454v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl4/igt@perf_pmu@interrupts.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-skl=
10/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7318">i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-skl1/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110454v1/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0454v1/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110454v1/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk2/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110454v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915=
#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110454v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-apl6/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v=
1/shard-apl2/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110454v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb7/igt@kms_dp_aux_dev.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/=
shard-iclb5/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/21=
22">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110454v1/shard-skl9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-e=
dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-fullscreen.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110454v1/shard-tglb5/igt@kms_frontbuffer_tra=
cking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html=
">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi=
-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110454v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi=
-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11045=
4v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12333/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110454v1/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-susp=
end.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12333/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7404">i915#7404</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110454v1/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-s=
uspend.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12333/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10454v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12333/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12333/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1104=
54v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110454v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110454v1/shard-apl8/igt@runn=
er@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12333 -&gt; Patchwork_110454v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12333: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110454v1: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2331872538003420721==--
