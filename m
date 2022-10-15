Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D72F75FF8C1
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 08:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B3B10E042;
	Sat, 15 Oct 2022 06:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A440F10E042;
 Sat, 15 Oct 2022 06:24:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CA11AA0ED;
 Sat, 15 Oct 2022 06:24:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3212736320863550367=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 15 Oct 2022 06:24:43 -0000
Message-ID: <166581508363.302.7283353371526812915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Add_GuC-Error-Capture-Init_coverage_of_new_engine_?=
 =?utf-8?q?types?=
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

--===============3212736320863550367==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Add GuC-Error-Capture-Init coverage of new engine types
URL   : https://patchwork.freedesktop.org/series/109737/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12242_full -> Patchwork_109737v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 12)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109737v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_create@create-clear@smem0:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-rkl-5/igt@gem_create@create-clear@smem0.html

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html

  
Known issues
------------

  Here are the changes found in Patchwork_109737v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#5032]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#6268])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#4525]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][54] -> [INCOMPLETE][55] ([i915#1982] / [i915#3371] / [i915#7192])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][61] -> [SKIP][62] ([i915#2190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][64] -> [DMESG-WARN][65] ([i915#5566] / [i915#716])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-apl:          NOTRUN -> [FAIL][66] ([i915#7036])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
    - shard-skl:          NOTRUN -> [FAIL][67] ([i915#7036])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][68] -> [DMESG-WARN][69] ([i915#5591])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb7/igt@i915_selftest@live@hangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@legacy-format:
    - shard-iclb:         [PASS][70] -> [INCOMPLETE][71] ([i915#7017] / [i915#7057])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@kms_addfb_basic@legacy-format.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb3/igt@kms_addfb_basic@legacy-format.html
    - shard-tglb:         [PASS][72] -> [INCOMPLETE][73] ([i915#6987] / [i915#7190])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb5/igt@kms_addfb_basic@legacy-format.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-tglb7/igt@kms_addfb_basic@legacy-format.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2521])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +52 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271]) +27 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl3/igt@kms_chamelium@hdmi-hpd-storm.html
    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3546])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_color@ctm-0-25.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
    - shard-apl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#2346])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#79])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#79]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#2122]) +5 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2587] / [i915#2672]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672]) +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2672] / [i915#3555])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +95 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][100] ([i915#4573]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#4573]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109441]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2437])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][106] -> [DMESG-WARN][107] ([i915#1982])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@perf_pmu@module-unload.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/igt@perf_pmu@module-unload.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@sysfs_clients@create.html
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][110] ([i915#4525]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][112] ([i915#2842]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][114] ([i915#5566] / [i915#716]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@gen9_exec_parse@allowed-all.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@gen9_exec_parse@allowed-all.html
    - shard-apl:          [DMESG-WARN][116] ([i915#5566] / [i915#716]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][118] ([i915#4281]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-skl:          [FAIL][120] ([i915#2346]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][122] ([i915#2122]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [FAIL][124] ([i915#7200]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-valid-mode:
    - shard-glk:          [FAIL][126] ([i915#7197]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-valid-mode.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-valid-mode.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [SKIP][130] ([i915#5235]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +4 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][134] ([i915#5213]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk1/igt@perf@stress-open-close.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          [INCOMPLETE][136] ([i915#6949] / [i915#7165]) -> [INCOMPLETE][137] ([i915#6949] / [i915#7165] / [i915#7192])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@dmabuf@all@dma_fence_chain.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/igt@dmabuf@all@dma_fence_chain.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          [INCOMPLETE][138] ([i915#6950] / [i915#7065]) -> [INCOMPLETE][139] ([i915#6950] / [i915#7065] / [i915#7192])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@i915_selftest@mock@vma.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/igt@i915_selftest@mock@vma.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          [SKIP][140] ([fdo#109271]) -> [SKIP][141] ([fdo#109271] / [i915#7206])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-glk:          [SKIP][142] ([fdo#109271]) -> [SKIP][143] ([fdo#109271] / [i915#7206])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-glk:          [SKIP][144] ([fdo#109271]) -> [SKIP][145] ([fdo#109271] / [i915#7205])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk7/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-skl:          [SKIP][146] ([fdo#109271]) -> [SKIP][147] ([fdo#109271] / [i915#7205])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_dsc@dsc-with-bpc-formats.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-apl:          [SKIP][148] ([fdo#109271]) -> [SKIP][149] ([fdo#109271] / [i915#7205])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][150] ([i915#79]) -> [FAIL][151] ([i915#2122])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-skl:          [SKIP][152] ([fdo#109271]) -> [SKIP][153] ([fdo#109271] / [i915#7207])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][154] ([i915#2920]) -> [SKIP][155] ([i915#658]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][156] ([i915#658]) -> [SKIP][157] ([i915#2920])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][158] ([fdo#111068] / [i915#658]) -> [SKIP][159] ([i915#2920]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][160] ([i915#2920]) -> [SKIP][161] ([fdo#111068] / [i915#658])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][167], [FAIL][168], [FAIL][169]) ([i915#3002] / [i915#4312])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl8/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl7/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#6987]: https://gitlab.freedesktop.org/drm/intel/issues/6987
  [i915#7017]: https://gitlab.freedesktop.org/drm/intel/issues/7017
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7057]: https://gitlab.freedesktop.org/drm/intel/issues/7057
  [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
  [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
  [i915#7190]: https://gitlab.freedesktop.org/drm/intel/issues/7190
  [i915#7192]: https://gitlab.freedesktop.org/drm/intel/issues/7192
  [i915#7197]: https://gitlab.freedesktop.org/drm/intel/issues/7197
  [i915#7200]: https://gitlab.freedesktop.org/drm/intel/issues/7200
  [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
  [i915#7206]: https://gitlab.freedesktop.org/drm/intel/issues/7206
  [i915#7207]: https://gitlab.freedesktop.org/drm/intel/issues/7207
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12242 -> Patchwork_109737v1

  CI-20190529: 20190529
  CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109737v1: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/index.html

--===============3212736320863550367==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Add GuC-Error-Capture-Init cov=
erage of new engine types</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109737/">https://patchwork.freedesktop.org/series/109737/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109737v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12242_full -&gt; Patchwork_109737v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 12)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109737v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_create@create-clear@smem0:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-rkl-5/igt@gem_create@create-clear@sm=
em0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-hdmi-a4:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend@=
d-hdmi-a4.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109737v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12242/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_12242/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/s=
hard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12242/shard-skl7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12242/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2242/shard-skl5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/sh=
ard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_12242/shard-skl5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12242/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1224=
2/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_12242/shard-skl1/boot.html">PASS</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109737v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109737v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109737v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109737v1/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-sk=
l10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109737v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v=
1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109737v1/shard-skl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109737v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109737v1/shard-skl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-sk=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109737v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109737v1/shard-skl4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl4/boot.ht=
ml">PASS</a>)</li>
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
/CI_DRM_12242/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737=
v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109737v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shar=
d-skl2/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3371">i915#3371</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7192">i915#7192</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v=
1/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737=
v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v=
1/shard-glk9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@i915_pipe_stress@stress-xrgb=
8888-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7036">i915#7036</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@i915_pipe_stress@stress-xrgb=
8888-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7036">i915#7036</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1=
/shard-tglb3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@legacy-format:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-iclb3/igt@kms_addfb_basic@legacy-format.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1=
/shard-iclb3/igt@kms_addfb_basic@legacy-format.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7017">i915#7017</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7057">i915#7057<=
/a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-tglb5/igt@kms_addfb_basic@legacy-format.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1=
/shard-tglb7/igt@kms_addfb_basic@legacy-format.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/6987">i915#6987</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7190">i915#7190<=
/a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pip=
e-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109737v1/shard-skl9/igt@kms_async_flips@alternate-sync-as=
ync-flip@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-apl3/igt@kms_ccs@pipe-a-random-ccs-da=
ta-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_ccs@pipe-a-random-ccs-da=
ta-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@kms_ccs@pipe-b-bad-rotation=
-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-apl3/igt@kms_chamelium@hdmi-hpd-storm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-glk9/igt@kms_chamelium@hdmi-hpd-storm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@kms_chamelium@hdmi-hpd-with=
-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_color@ctm-0-25.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109737v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109737v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109737v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109737v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109737v1/shard-skl2/igt@kms_flip@wf_vblank-ts-check-interruptibl=
e@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_frontbuffer_tracking@fb=
cpsr-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737=
v1/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-skl4/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl6/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-=
skl10/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-apl1/igt@sysfs_clients@create.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-skl1/igt@sysfs_clients@create.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109737v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09737v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-skl10/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109737v1/shard-skl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-apl2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#55=
66</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i9=
15#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109737v1/shard-apl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/=
shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/23=
46">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109737v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk1/igt@kms_flip@2x-pla=
in-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/7200">i915#7200</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737=
v1/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp=
-linear-downscaling@pipe-a-valid-mode.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/7197">i915#7197</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-glk6/igt=
@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-v=
alid-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109737v1/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-iclb7/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10973=
7v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-glk1/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
737v1/shard-glk9/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl6/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#69=
49</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7165">i=
915#7165</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109737v1/shard-skl6/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#=
6949</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7165"=
>i915#7165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7192">i915#7192</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl6/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6950">i915#6950</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7065">i915#=
7065</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109737v1/shard-skl10/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6950">i915#6950</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7065">i915#7=
065</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7192">=
i915#7192</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0=
-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-st=
ride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/7206">i915#7206</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0=
-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109737v1/shard-glk7/igt@kms_big_fb@y-tiled-max-hw-st=
ride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/7206">i915#7206</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9737v1/shard-glk7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7205">i915#7205=
</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-skl5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9737v1/shard-skl4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7205">i915#7205=
</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12242/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9737v1/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7205">i915#7205=
</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109737v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64=
bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-skl=
7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pi=
pe-a-default-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7207">i915#7207</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109737v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109737v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109737v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109737v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12242/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12242/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12242/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109737=
v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109737v1/shard-apl7/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109737v1/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12242 -&gt; Patchwork_109737v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109737v1: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3212736320863550367==--
