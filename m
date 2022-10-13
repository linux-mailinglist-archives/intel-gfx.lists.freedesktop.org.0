Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B1A5FD756
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 11:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C5610E71F;
	Thu, 13 Oct 2022 09:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EBA110E6FA;
 Thu, 13 Oct 2022 09:49:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15DDEAADD7;
 Thu, 13 Oct 2022 09:49:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3760818666741058567=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pablo Ceballos" <pceballos@google.com>
Date: Thu, 13 Oct 2022 09:49:21 -0000
Message-ID: <166565456105.20368.2338456606524419106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220915004601.320198-1-pceballos@google.com>
In-Reply-To: <20220915004601.320198-1-pceballos@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/lspcon=3A_Increase_LSPCON_mode_settle_timeout_=28?=
 =?utf-8?q?rev2=29?=
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

--===============3760818666741058567==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/lspcon: Increase LSPCON mode settle timeout (rev2)
URL   : https://patchwork.freedesktop.org/series/108735/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12239_full -> Patchwork_108735v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108735v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108735v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108735v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_import_export@flink:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-tglb2/igt@drm_import_export@flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-tglb5/igt@drm_import_export@flink.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([fdo#109271] / [i915#180] / [i915#3002]) -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11]) ([i915#180] / [i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl8/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl6/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl1/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl2/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl8/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl6/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl7/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl8/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][12], [FAIL][13], [FAIL][14]) ([i915#3002] / [i915#7066]) -> ([FAIL][15], [FAIL][16], [FAIL][17]) ([i915#3002])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl9/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl7/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl6/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_108735v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42]) -> ([PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67]) ([i915#4392])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk9/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk9/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk9/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][68] -> [FAIL][69] ([i915#6268])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([i915#4525])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][72] -> [FAIL][73] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_softpin@evict-single-offset:
    - shard-apl:          NOTRUN -> [FAIL][76] ([i915#4171])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3323])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +48 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gen7_exec_parse@basic-allowed.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#3524])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][81] -> [DMESG-FAIL][82] ([i915#5334])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#2521])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271]) +28 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-glk:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color@ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3546])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_color@ctm-0-25.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl6/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_content_protection@lic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][92] ([i915#7121] / [i915#7173])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_content_protection@lic@pipe-a-dp-1.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][93] -> [DMESG-WARN][94] ([i915#180]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#4767])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#2122])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2587] / [i915#2672]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#2672] / [i915#3555]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +249 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#4573]) +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([i915#5235]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][106] -> [SKIP][107] ([fdo#109441])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][108] ([i915#6493])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2437]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@non-zero-reason:
    - shard-skl:          NOTRUN -> [TIMEOUT][110] ([i915#6943] / [i915#7065])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@perf@non-zero-reason.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][111] -> [FAIL][112] ([i915#5639])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb3/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb8/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2994]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][114] ([i915#4793] / [i915#4939]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][116] ([i915#4525]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][118] ([i915#2842]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_sync@basic-store-all:
    - shard-skl:          [FAIL][120] -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl3/igt@gem_sync@basic-store-all.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][122] ([i915#180] / [i915#1982]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [FAIL][124] ([i915#2521]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][126] ([i915#2346]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [FAIL][128] ([i915#2122]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][130] ([i915#79]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][132] ([i915#3555]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [SKIP][134] ([i915#5235]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][136] ([fdo#109441]) -> [PASS][137] +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][140] ([i915#5213]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk6/igt@perf@stress-open-close.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          [INCOMPLETE][142] ([i915#6949]) -> [INCOMPLETE][143] ([i915#6949] / [i915#7165])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl6/igt@dmabuf@all@dma_fence_chain.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@dmabuf@all@dma_fence_chain.html

  * igt@kms_content_protection@legacy@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][144] ([i915#1319] / [i915#7121]) -> [INCOMPLETE][145] ([i915#1319] / [i915#7121] / [i915#7173])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl7/igt@kms_content_protection@legacy@pipe-a-dp-1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl3/igt@kms_content_protection@legacy@pipe-a-dp-1.html

  * igt@kms_content_protection@srm@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][146] ([i915#7121]) -> [INCOMPLETE][147] ([i915#7121] / [i915#7173]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl1/igt@kms_content_protection@srm@pipe-a-dp-1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl7/igt@kms_content_protection@srm@pipe-a-dp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][148] ([i915#658]) -> [SKIP][149] ([i915#2920])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][150] ([i915#2920]) -> [SKIP][151] ([i915#658]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6943]: https://gitlab.freedesktop.org/drm/intel/issues/6943
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
  [i915#7066]: https://gitlab.freedesktop.org/drm/intel/issues/7066
  [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
  [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12239 -> Patchwork_108735v2

  CI-20190529: 20190529
  CI_DRM_12239: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108735v2: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/index.html

--===============3760818666741058567==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/lspcon: Increase LSPCON mod=
e settle timeout (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108735/">https://patchwork.freedesktop.org/series/108735/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108735v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108735v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12239_full -&gt; Patchwork_108735v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108735v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108735v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108735v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@drm_import_export@flink:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-tglb2/igt@drm_import_export@flink.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shar=
d-tglb5/igt@drm_import_export@flink.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12239/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12239/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2=
/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108735v2/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-apl2/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-skl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12239/shard-skl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/7066">i915#7066</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/sha=
rd-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
735v2/shard-skl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108735v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12239/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12239/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12239/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12239/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12239/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12239/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2239/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12239/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12239/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
735v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108735v2/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108735v2/shard-glk2/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8735v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108735v2/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108735v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8735v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108735v2/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108735v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735=
v2/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108735v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08735v2/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_softpin@evict-single-of=
fset.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4171">i915#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@gen7_exec_parse@basic-allow=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl1/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shar=
d-skl1/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3524">i915#3524</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10873=
5v2/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-skl7/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +8 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +28 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_chamelium@hdmi-edid-cha=
nge-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-glk8/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_color@ctm-0-25.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl6/igt@kms_color_chamelium@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_content_protection@lic@=
pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7121">i915#7121</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108735v2/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@kms_flip@plain-flip-ts-chec=
k-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_frontbuffer_tracking@f=
bcpsr-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +249 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl6/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4573">i915#4573</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-apl1/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl10/igt@kms_psr2_sf@overlay-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735=
v2/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@kms_sysfs_edid_timing.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6493"=
>i915#6493</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@perf@non-zero-reason.html">=
TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/694=
3">i915#6943</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7065">i915#7065</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb3/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/s=
hard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108735v2/shard-skl9/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
793">i915#4793</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108735v2/shard-skl10/igt@gem_ctx_isolation@preservation-=
s3@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108735v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108735v2/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl3/igt@gem_sync@basic-store-all.html">FAIL</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shar=
d-skl10/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-apl1/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108735v2/shard-skl7/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-glk7/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108735v2/shard-skl9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-ed=
p1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108735v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe=
-a-default-mode.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb1/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1087=
35v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108735v2/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-glk6/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
735v2/shard-glk8/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-skl6/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#69=
49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108735v2/shard-skl9/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7165">i915#=
7165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl7/igt@kms_content_protection@legacy@pipe-a-dp-1.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1319">i915#1319</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7121">i915#7121</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108735v2/shard-apl3/igt@kms_content_protection@legacy=
@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1319">i915#1319</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7121">i915#7121</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-apl1/igt@kms_content_protection@srm@pipe-a-dp-1.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
121">i915#7121</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108735v2/shard-apl7/igt@kms_content_protection@srm@pipe-a-dp-1=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7121">i915#7121</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7173">i915#7173</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108735v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12239/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108735v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12239 -&gt; Patchwork_108735v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12239: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108735v2: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3760818666741058567==--
