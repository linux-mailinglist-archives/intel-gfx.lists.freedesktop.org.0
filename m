Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C7D58B634
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 16:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515F411B07B;
	Sat,  6 Aug 2022 14:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B95B814BE67;
 Sat,  6 Aug 2022 14:49:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFF19A9932;
 Sat,  6 Aug 2022 14:49:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1558971251128033590=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Sat, 06 Aug 2022 14:49:48 -0000
Message-ID: <165979738867.21389.869996080085859949@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220806122636.43068-1-tomas.winkler@intel.com>
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_=28rev2=29?=
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

--===============1558971251128033590==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/106638/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11971_full -> Patchwork_106638v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106638v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106638v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106638v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_106638v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk6/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][53] ([i915#4991])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#4525]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_spin_batch@spin-each:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#2898])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl9/igt@gem_spin_batch@spin-each.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl2/igt@gem_spin_batch@spin-each.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3323])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][68] ([i915#3318])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#5566] / [i915#716])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2521])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +154 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +51 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][81] ([i915#1319])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-skl:          [PASS][82] -> [INCOMPLETE][83] ([i915#4939])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][84] -> [FAIL][85] ([i915#79])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#2122])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#79])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#2122])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#3555]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2672] / [i915#3555])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#3555])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2672]) +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][97] -> [DMESG-WARN][98] ([i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][99] ([i915#265])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][100] ([fdo#108145] / [i915#265]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][101] ([fdo#108145] / [i915#265])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([i915#5235]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([fdo#109441]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][109] -> [SKIP][110] ([i915#5519])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
    - shard-kbl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2437])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl4/igt@kms_writeback@writeback-check-output.html

  * igt@perf@non-zero-reason:
    - shard-skl:          NOTRUN -> [TIMEOUT][116] ([i915#6473])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@perf@non-zero-reason.html

  * igt@sysfs_clients@fair-0:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@sysfs_clients@fair-0.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +135 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][119] ([i915#658]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@feature_discovery@psr1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [INCOMPLETE][121] ([i915#180]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-tglb:         [DMESG-WARN][123] ([i915#2411] / [i915#2867]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][125] ([i915#4525]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][127] ([i915#2842]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][129] ([i915#2842]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [FAIL][131] -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][133] ([i915#6258]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-1/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][135] ([i915#3524]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl9/igt@i915_pm_sseu@full-enable.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-tglu}:       [DMESG-FAIL][137] ([i915#3987]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-3/igt@i915_selftest@live@gt_pm.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglu-6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [FAIL][139] ([i915#2521]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-tglu}:       [INCOMPLETE][141] -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglu-2/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][143] ([i915#1845] / [i915#4098]) -> [PASS][144] +15 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][145] ([i915#5072]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][147] ([i915#2346]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - {shard-rkl}:        [SKIP][149] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][150] +4 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-kbl:          [FAIL][151] ([i915#79]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][153] ([i915#79]) -> [PASS][154] +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-tglb:         [FAIL][155] ([i915#79]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][157] ([i915#79]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - {shard-rkl}:        [SKIP][159] ([i915#1849] / [i915#4098]) -> [PASS][160] +12 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-skl:          [INCOMPLETE][161] ([i915#4939]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
    - {shard-rkl}:        [SKIP][163] ([i915#1849] / [i915#3558]) -> [PASS][164] +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - {shard-rkl}:        [SKIP][165] ([i915#1849] / [i915#3546] / [i915#4098]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - {shard-rkl}:        [SKIP][167] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_properties@crtc-properties-legacy:
    - {shard-rkl}:        [SKIP][169] ([i915#1849]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][171] ([i915#1072]) -> [PASS][172] +1 similar issue
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_psr@primary_render.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][173] ([fdo#109441]) -> [PASS][174] +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb4/igt@kms_psr@psr2_primary_blt.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][175] ([i915#5461]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - {shard-rkl}:        [SKIP][177] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][179] ([i915#180]) -> [PASS][180] +5 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][181] ([i915#1542]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@perf@polling.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@perf@polling.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][183] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][184] ([fdo#109271] / [i915#3886])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-skl:          [SKIP][185] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][186] ([fdo#109271] / [fdo#111827])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-glk:          [SKIP][187] ([fdo#109271] / [i915#1888]) -> [SKIP][188] ([fdo#109271])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
    - shard-skl:          [SKIP][189] ([fdo#109271] / [i915#1888]) -> [SKIP][190] ([fdo#109271]) +1 similar issue
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglb:         [SKIP][191] ([i915#5288]) -> [SKIP][192] ([fdo#112054] / [i915#5288])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb5/igt@kms_plane_lowres@tiling-4.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-tglb5/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][193] ([i915#2920]) -> [SKIP][194] ([i915#658])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][195] ([i915#658]) -> [SKIP][196] ([i915#2920])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][197] ([fdo#111068] / [i915#658]) -> [SKIP][198] ([i915#2920])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl8/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl7/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl7/igt@runner@aborted.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl8/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl4/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl4/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl4/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6473]: https://gitlab.freedesktop.org/drm/intel/issues/6473
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11971 -> Patchwork_106638v2

  CI-20190529: 20190529
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106638v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html

--===============1558971251128033590==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 (rev2)</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/106638/">https://patchwork.freedesktop.org/series/106638/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106638v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106638v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11971_full -&gt; Patchwork_106638v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106638v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_106638v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
106638v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_106638v2/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106638v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11971/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11971/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11971/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11971/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11971/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11971/shard-glk3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11971/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1971/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11971/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shar=
d-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11971/shard-glk7/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
638v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106638v2/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106638v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6638v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106638v2/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106638v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6638v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106638v2/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106638v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
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
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@gem_create@create-massive.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06638v2/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06638v2/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10663=
8v2/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +=
1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-kbl7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10663=
8v2/shard-kbl1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-each:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl9/igt@gem_spin_batch@spin-each.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shar=
d-skl2/igt@gem_spin_batch@spin-each.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2898">i915#2898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v=
2/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v2/shard-skl9/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +154 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_ccs@pipe-b-random-ccs-d=
ata-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_chamelium@dp-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enab=
le-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_chamelium@hdmi-mode-tim=
ings.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106638v2/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106638v2/shard-glk5/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106638v2/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106638v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#=
79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106638v2/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@=
kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-d=
efault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-a-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb3/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-apl6/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638=
v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106638v2/shard-tglb7/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106638v2/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106638v2/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl4/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-skl10/igt@perf@non-zero-reason.html"=
>TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/64=
73">i915#6473</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl7/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-kbl4/igt@tools_test@sysfs_l3_parity.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +135 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@feature_discovery@psr1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/s=
hard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106638v2/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106638v2/shard-tglb5/igt@gem_ctx_isolation@preservatio=
n-s3@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106638v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06638v2/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106638v2/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">FAIL</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/=
shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#=
6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106638v2/shard-rkl-1/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl9/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3524">i915#3524</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v=
2/shard-skl2/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#39=
87</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106638v2/shard-tglu-6/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106638v2/shard-skl9/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen=
12_rc_ccs_cc.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v2/shard-tglu-2/igt@kms_ccs@pipe-a-crc-pri=
mary-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-=
pixel-format-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5072">i915#5072</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-iclb3/igt@kms_cursor_legac=
y@cursor-vs-flip@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-render-ytil=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_draw_crc@draw-=
method-xrgb8888-render-ytiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106638v2/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i9=
15#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106638v2/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106638v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-shrfb-scaledprimary.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl7/igt@kms_plane@plane-pa=
nning-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-p=
lanes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane@plane-panning-=
bottom-right@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849=
">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a=
-alpha-basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_plane_alpha_blen=
d@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_106638v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_psr@primary_render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2=
/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb4/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1066=
38v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-rkl-6/igt@kms_universa=
l_plane@universal-plane-gen9-features-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_106638v2/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-sus=
pend.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl2/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl1=
0/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl6/igt@kms_ccs@pipe=
-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
827">fdo#111827</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106638v2/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-=
0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr=
-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-glk3/igt@kms_frontbuffer_=
tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr=
-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-skl6/igt@kms_frontbuffer_=
tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 simil=
ar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb5/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5288">i915#5288</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10663=
8v2/shard-tglb5/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D112054">fdo#112054</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5288">i915#5288</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106638v2/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106638v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11971/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11971/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106638v2/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl8/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106638v2/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106638v2/shard-apl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/sh=
ard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106638v2/shard-apl8/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11971 -&gt; Patchwork_106638v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106638v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1558971251128033590==--
