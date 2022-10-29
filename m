Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13368611F3D
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Oct 2022 04:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B359610E915;
	Sat, 29 Oct 2022 02:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B84E10E915;
 Sat, 29 Oct 2022 02:03:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 431B8AADDC;
 Sat, 29 Oct 2022 02:03:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7570954288828079701=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Sat, 29 Oct 2022 02:03:05 -0000
Message-ID: <166700898523.24146.7074490276400068626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221028111953.12552-1-swati2.sharma@intel.com>
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_for_VDSC?=
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

--===============7570954288828079701==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 for VDSC
URL   : https://patchwork.freedesktop.org/series/110253/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12316_full -> Patchwork_110253v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110253v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110253v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110253v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_exec@basic-close-race:
    - {shard-rkl}:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-5/igt@gem_ctx_exec@basic-close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-4/igt@gem_ctx_exec@basic-close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_110253v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) ([i915#4386]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([i915#4525])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-tglb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][61] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][62] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-glk:          NOTRUN -> [FAIL][65] ([i915#3318])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#5566] / [i915#716])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][68] -> [DMESG-WARN][69] ([i915#5566] / [i915#716])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2521])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +41 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
    - shard-skl:          NOTRUN -> [INCOMPLETE][78] ([i915#6947])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][79] -> [FAIL][80] ([i915#2122])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][81] -> [DMESG-WARN][82] ([i915#180])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-tglb:         [PASS][83] -> [DMESG-WARN][84] ([i915#2411] / [i915#2867])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-tglb3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([i915#6375])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2587] / [i915#2672]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2672]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2672] / [i915#3555]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][91] ([i915#4573]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271]) +32 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][94] -> [SKIP][95] ([fdo#109441]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@busy:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@split-50:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][98] ([i915#658]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb3/igt@feature_discovery@psr2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][100] ([fdo#103375]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@full:
    - {shard-dg1}:        [FAIL][102] ([i915#6032]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-dg1-15/igt@gem_exec_balancer@full.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-dg1-15/igt@gem_exec_balancer@full.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - {shard-rkl}:        [SKIP][108] ([i915#3281]) -> [PASS][109] +4 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - {shard-rkl}:        [FAIL][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - {shard-rkl}:        [FAIL][112] ([i915#6778]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_softpin@evict-single-offset:
    - shard-iclb:         [FAIL][114] ([i915#4171]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb6/igt@gem_softpin@evict-single-offset.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb6/igt@gem_softpin@evict-single-offset.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][116] ([i915#6258]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          [FAIL][118] ([i915#4275]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/igt@i915_pm_dc@dc9-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][120] ([i915#1804]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][122] ([i915#6537]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/igt@i915_pm_rps@engine-order.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl7/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][124] ([i915#5334]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-skl:          [INCOMPLETE][126] -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][128] ([i915#2346]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@blocking-wf_vblank@b-edp1:
    - shard-skl:          [FAIL][130] ([i915#2122]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl4/igt@kms_flip@blocking-wf_vblank@b-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl9/igt@kms_flip@blocking-wf_vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][132] ([i915#79]) -> [PASS][133] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][134] ([i915#3555]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-skl:          [DMESG-WARN][136] ([i915#1982]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-skl1/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb5/igt@kms_psr@psr2_dpms.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_psr@psr2_dpms.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][140] ([i915#2876]) -> [FAIL][141] ([i915#2842])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          [INCOMPLETE][142] ([i915#7248]) -> [WARN][143] ([i915#2658])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-glk3/igt@gem_pread@exhaustion.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [WARN][144] ([i915#2658]) -> [INCOMPLETE][145] ([i915#7248])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/igt@gem_pwrite@basic-exhaustion.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][146] ([i915#2920]) -> [SKIP][147] ([i915#658]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][148] ([fdo#111068] / [i915#658]) -> [SKIP][149] ([i915#2920])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][150] ([i915#658]) -> [SKIP][151] ([i915#2920]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([i915#3002] / [i915#4312]) -> ([FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6778]: https://gitlab.freedesktop.org/drm/intel/issues/6778
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6947]: https://gitlab.freedesktop.org/drm/intel/issues/6947
  [i915#7142]: https://gitlab.freedesktop.org/drm/intel/issues/7142
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12316 -> Patchwork_110253v1

  CI-20190529: 20190529
  CI_DRM_12316: 7c83dbaba9930d85a9fe427226fbdb2d3267a88b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110253v1: 7c83dbaba9930d85a9fe427226fbdb2d3267a88b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/index.html

--===============7570954288828079701==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 for VDSC</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110253/">https://patchwork.freedesktop.org/series/110253/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110253v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110253v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12316_full -&gt; Patchwork_110253v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110253v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110253v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110253v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110253v1/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">I=
NCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling@pipe-a-valid-mode.html">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-tglb8/igt@kms_f=
lip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mod=
e.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_ctx_exec@basic-close-race:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-5/igt@gem_ctx_exec@basic-close-race.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v=
1/shard-rkl-4/igt@gem_ctx_exec@basic-close-race.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110253v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12316/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12316/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12316/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12316/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12316/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12316/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2316/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12316/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110253v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-a=
pl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110253v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v=
1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110253v1/shard-apl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110253v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110253v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110253v1/shard-apl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110253v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110253v1/shard-apl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110253v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110253v1/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110253v1/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fen=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0253v1/shard-tglb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12316/shard-apl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1=
/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a=
>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12316/shard-glk6/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1=
/shard-glk1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a=
>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110253v1/shard-skl1/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-skl7/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_ccs@pipe-b-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_ccs@pipe-d-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +41 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_chamelium@dp-crc-multip=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_chamelium@dp-hpd-storm.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-skl4/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/6947">i915#6947</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110253v1/shard-glk3/igt@kms_flip@2x-plain-fli=
p-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110253v1/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110253v1/shard-tglb3/igt@kms_flip@flip-vs-suspend-interruptible@c-=
edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bp=
p-yftileccs-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb2/ig=
t@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe=
-a-default-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6375">i915#6375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-b-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@kms_psr@psr2_sprite_blt.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253=
v1/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-apl2/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110253v1/shard-glk2/igt@sysfs_clients@split-50.html=
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
/CI_DRM_12316/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
253v1/shard-rkl-1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-dg1-15/igt@gem_exec_balancer@full.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6032">i915#6032</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v=
1/shard-dg1-15/igt@gem_exec_balancer@full.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110253v1/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110253v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0253v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html">PASS</a> +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html">FAI=
L</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10253v1/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6778">i915#6778<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0253v1/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb6/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110253v1/shard-iclb6/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#=
6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110253v1/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-apl6/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4275">i915#4275</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/sha=
rd-apl8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i91=
5#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110253v1/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-apl3/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v=
1/shard-apl7/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110253v1/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.htm=
l">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110253v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp=
-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-glk8/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl4/igt@kms_flip@blocking-wf_vblank@b-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110253v1/shard-skl9/igt@kms_flip@blocking-wf_vblank@b-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110253v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a=
-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-skl1/igt@kms_frontbuffer_tracking@psr-slowdraw.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
82">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110253v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-slowdraw.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb5/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/sh=
ard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#2876=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10253v1/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-glk3/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11025=
3v1/shard-glk7/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-apl7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1102=
53v1/shard-apl3/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110253v1/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110253v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12316/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110253v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12316/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12316/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12316/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12316/shard-apl1/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110253v1/shard-apl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/sh=
ard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0253v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110253v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110253v1/shard-apl1/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12316 -&gt; Patchwork_110253v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12316: 7c83dbaba9930d85a9fe427226fbdb2d3267a88b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110253v1: 7c83dbaba9930d85a9fe427226fbdb2d3267a88b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7570954288828079701==--
