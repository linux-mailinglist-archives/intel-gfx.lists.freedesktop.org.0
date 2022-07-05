Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792275674D8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 18:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFA891C59;
	Tue,  5 Jul 2022 16:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDB8E91CA3;
 Tue,  5 Jul 2022 16:52:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B36B7AADD6;
 Tue,  5 Jul 2022 16:52:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1683100416054257568=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karolina Drobnik" <karolina.drobnik@intel.com>
Date: Tue, 05 Jul 2022 16:52:29 -0000
Message-ID: <165703994969.2011.812026748407031489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1656911806.git.karolina.drobnik@intel.com>
In-Reply-To: <cover.1656911806.git.karolina.drobnik@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_waitboosting_before_fence_wait?=
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

--===============1683100416054257568==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Apply waitboosting before fence wait
URL   : https://patchwork.freedesktop.org/series/105925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11849_full -> Patchwork_105925v1_full
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

  Here are the unknown changes that may have been introduced in Patchwork_105925v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - {shard-rkl}:        NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * {igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode}:
    - shard-iclb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - {shard-tglu}:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglu-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11849_full and Patchwork_105925v1_full:

### New IGT tests (2) ###

  * igt@i915_pm_rps@fence-order:
    - Statuses : 9 pass(s)
    - Exec time: [0.01, 0.07] s

  * igt@kms_color@ctm-green-to-red@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.44] s

  

Known issues
------------

  Here are the changes found in Patchwork_105925v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [FAIL][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#5032])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl10/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-snb:          [PASS][53] -> [DMESG-WARN][54] ([i915#4528])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-snb5/igt@device_reset@unbind-reset-rebind.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-snb2/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#1099])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-snb6/igt@gem_ctx_persistence@hostile.html
    - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#2410])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb5/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#4525]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-snb:          NOTRUN -> [SKIP][67] ([fdo#109271]) +57 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-snb6/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#4270])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@gem_pxp@display-protected-crc.html
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#4270])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_softpin@evict-single-offset:
    - shard-apl:          NOTRUN -> [FAIL][74] ([i915#4171])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl8/igt@gem_softpin@evict-single-offset.html
    - shard-kbl:          NOTRUN -> [FAIL][75] ([i915#4171])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@gem_softpin@evict-single-offset.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][76] ([i915#180]) +5 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][77] ([i915#4991])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@gem_userptr_blits@input-checking.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][78] ([i915#4991])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#3297])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_userptr_blits@unsync-overlap.html
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#3297])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_render_tiledy_blits:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +121 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#5566] / [i915#716])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2527] / [i915#2856])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#1937])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +242 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][87] ([i915#1886])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][88] -> [DMESG-WARN][89] ([i915#5591])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb1/igt@i915_selftest@live@hangcheck.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#5286])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#5286])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#1888] / [i915#5138])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111615]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#3743]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#110723])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3886]) +8 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#6095])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278] / [i915#3886])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#3689] / [i915#3886])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3886])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk9/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3689])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl8/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109284] / [fdo#111827])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
    - shard-glk:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#111827])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk9/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109284] / [fdo#111827])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
    - shard-snb:          NOTRUN -> [SKIP][110] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][112] ([i915#1319])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#4103])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#4103])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][115] -> [DMESG-WARN][116] ([i915#118] / [i915#1888])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#5287])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#5287])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][119] ([i915#180] / [i915#4939])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109274])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_flip@2x-wf_vblank-ts-check.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][122] -> [FAIL][123] ([i915#79])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][124] -> [FAIL][125] ([i915#2122])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][126] -> [DMESG-WARN][127] ([i915#180])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#2122]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#2672]) +4 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109280]) +4 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271]) +27 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271]) +120 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3555]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#3555]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_mmap_write_crc@main:
    - shard-skl:          [PASS][137] -> [SKIP][138] ([fdo#109271]) +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@kms_mmap_write_crc@main.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][139] ([fdo#108145] / [i915#265]) +3 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][141] ([i915#265])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][142] ([fdo#108145] / [i915#265]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-d-primary-size-256:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109278]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@kms_plane_cursor@pipe-d-primary-size-256.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#1836])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_prime@basic-crc@first-to-second.html
    - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#1836])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#658])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#658]) +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][149] ([i915#132] / [i915#3467])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109441])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][151] -> [SKIP][152] ([fdo#109441])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][153] -> [SKIP][154] ([i915#5519])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([i915#5030]) +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([i915#5030]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#533])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#2437])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][159] -> [FAIL][160] ([i915#1722])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/igt@perf@polling-small-buf.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([fdo#109291])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@prime_nv_api@i915_self_import_to_different_fd.html
    - shard-iclb:         NOTRUN -> [SKIP][162] ([fdo#109291])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@sw_sync@sync_merge_same:
    - shard-kbl:          NOTRUN -> [FAIL][163] ([i915#6140])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@sw_sync@sync_merge_same.html

  * igt@sw_sync@sync_multi_timeline_wait:
    - shard-apl:          NOTRUN -> [FAIL][164] ([i915#6140])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@sw_sync@sync_multi_timeline_wait.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#2994]) +3 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#2994])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#2994]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@sysfs_clients@recycle.html
    - shard-tglb:         NOTRUN -> [SKIP][168] ([i915#2994])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@sysfs_clients@recycle.html
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271] / [i915#2994])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk7/igt@sysfs_clients@recycle.html
    - shard-iclb:         NOTRUN -> [SKIP][170] ([i915#2994])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb4/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@drm_buddy@all@buddy_alloc_smoke:
    - shard-skl:          [INCOMPLETE][171] ([i915#5800]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][173] ([i915#6268]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [FAIL][175] ([i915#6268]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][177] ([i915#4525]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - {shard-rkl}:        [FAIL][179] ([i915#2842]) -> [PASS][180] +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][181] ([i915#2842]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][183] ([i915#2842]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][185] ([i915#2842]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][187] ([i915#2842]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][189] ([i915#3281]) -> [PASS][190] +9 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][191] ([i915#118]) -> [PASS][192] +2 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_partial_pwrite_pread@reads:
    - {shard-rkl}:        [SKIP][193] ([i915#3282]) -> [PASS][194] +4 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][195] ([i915#180]) -> [PASS][196] +2 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-start-param:
    - {shard-rkl}:        [SKIP][197] ([i915#2527]) -> [PASS][198] +2 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [DMESG-WARN][199] ([i915#6201]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][201] ([i915#3989] / [i915#454]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-1/igt@i915_pm_dc@dc6-dpms.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][203] ([i915#454]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
    - {shard-rkl}:        [FAIL][205] ([i915#3989]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][207] ([fdo#109308]) -> [PASS][208] +1 similar issue
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][209] ([i915#3048]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@i915_pm_sseu@full-enable.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][211] ([i915#180]) -> [PASS][212] +3 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [FAIL][213] ([i915#2346]) -> [PASS][214] +2 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [FAIL][215] -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - {shard-rkl}:        [SKIP][217] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][218] +3 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][219] ([i915#79]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][221] ([i915#2122]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][223] ([i915#79]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][225] ([i915#1849] / [i915#4098]) -> [PASS][226] +9 similar issues
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - {shard-rkl}:        [SKIP][227] ([i915#4278]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_invalid_mode@zero-hdisplay.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][229] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][231] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_properties@crtc-properties-atomic:
    - {shard-rkl}:        [SKIP][233] ([i915#1849]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr@primary_blt:
    - {shard-rkl}:        [SKIP][235] ([i915#1072]) -> [PASS][236] +1 similar issue
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-5/igt@kms_psr@primary_blt.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][237] ([fdo#109441]) -> [PASS][238] +1 similar issue
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - {shard-rkl}:        [SKIP][239] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][240] +2 similar issues
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-wait-forked-hang:
    - shard-skl:          [SKIP][241] ([fdo#109271]) -> [PASS][242] +28 similar issues
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_vblank@pipe-a-wait-forked-hang.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@kms_vblank@pipe-a-wait-forked-hang.html

  * igt@kms_vblank@pipe-b-wait-forked-hang:
    - {shard-rkl}:        [SKIP][243] ([i915#1845] / [i915#4098]) -> [PASS][244] +16 similar issues
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-5/igt@kms_vblank@pipe-b-wait-forked-hang.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_vblank@pipe-b-wait-forked-hang.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][245] ([i915#2436]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][247] ([i915#5639]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@perf@polling-parameterized.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/igt@perf@polling-parameterized.html
    - shard-apl:          [FAIL][249] ([i915#5639]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl8/igt@perf@polling-parameterized.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-apl4/igt@perf@polling-parameterized.html
    - shard-glk:          [FAIL][251] ([i915#5639]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/igt@perf@polling-parameterized.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][253] ([i915#5784]) -> [TIMEOUT][254] ([i915#3063])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][255] ([i915#4525]) -> [FAIL][256] ([i915#6117])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][257] ([i915#2842]) -> [FAIL][258] ([i915#2849])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][259] ([fdo#109271]) -> [SKIP][260] ([fdo#109271] / [i915#3886])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-skl:          [SKIP][261] ([fdo#109271] / [i915#1888]) -> [SKIP][262] ([fdo#109271])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-skl:          [SKIP][263] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][264] ([fdo#109271] / [fdo#111827])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/igt@kms_chamelium@hdmi-audio.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl6/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         [SKIP][265] ([fdo#109300]) -> [SKIP][266] ([i915#1063])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb5/igt@kms_content_protection@mei_interface.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_content_protection@mei_interface.html
    - shard-iclb:         [SKIP][267] ([fdo#109300]) -> [SKIP][268] ([fdo#109300] / [fdo#111066])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb6/igt@kms_content_protection@mei_interface.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_content_protection@mei_interface.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][269] ([i915#79]) -> [FAIL][270] ([i915#2122])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-skl:          [INCOMPLETE][271] -> [SKIP][272] ([fdo#109271])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][273] ([i915#180] / [i915#1982]) -> [DMESG-WARN][274] ([i915#180])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][275] ([fdo#111068] / [i915#658]) -> [SKIP][276] ([i915#2920])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][277] ([i915#5939]) -> [SKIP][278] ([fdo#109642] / [fdo#111068] / [i915#658])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282], [FAIL][283], [FAIL][284], [FAIL][285], [FAIL][286], [FAIL][287], [FAIL][288], [FAIL][289], [FAIL][290], [FAIL][291], [FAIL][292]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][293], [FAIL][294], [FAIL][295], [FAIL][296], [FAIL][297], [FAIL][298], [FAIL][299], [FAIL][300], [FAIL][301], [FAIL][302], [FAIL][303], [FAIL][304], [FAIL][305], [FAIL][306]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@aborted.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@runner@aborted.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@aborted.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@aborted.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@runner@aborted.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@aborted.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@aborted.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3048]: https://gitlab.freedesktop.org/drm/intel/issues/3048
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
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
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6201]: https://gitlab.freedesktop.org/drm/intel/issues/6201
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * IGT: IGT_6555 -> IGTPW_7461
  * Linux: CI_DRM_11849 -> Patchwork_105925v1

  CI-20190529: 20190529
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7461: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7461/index.html
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105925v1: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/index.html

--===============1683100416054257568==
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
<tr><td><b>Series:</b></td><td>drm/i915: Apply waitboosting before fence wa=
it</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105925/">https://patchwork.freedesktop.org/series/105925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105925v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11849_full -&gt; Patchwork_105925v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105925v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pip=
e-a-default-mode}:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglu-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-h=
dmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105925v1/shard-tglu-1/igt@kms_pipe_crc_basic@suspend-read-c=
rc@pipe-a-hdmi-a-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11849_full and Patchwork_1=
05925v1_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_pm_rps@fence-order:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.01, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.44] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105925v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11849/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11849/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11849/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11849/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11849/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1849/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11849/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/sh=
ard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105925v1/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105925v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl10/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/s=
hard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105925v1/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl1/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105925v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/s=
hard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105925v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl5/boot.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05925v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105925v1/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105925v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/sh=
ard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105925v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5925v1/shard-skl9/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-snb5/igt@device_reset@unbind-reset-rebind.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10592=
5v1/shard-snb2/igt@device_reset@unbind-reset-rebind.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105925v1/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-snb6/igt@gem_ctx_persistence@hostile.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1099">i915#1099</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb5/igt@gem_ctx_persistence@hostile=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2410">i915#2410</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105925v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05925v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1=
/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v=
1/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-snb6/igt@gem_exec_whisper@basic-queu=
es.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl1/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@gem_pxp@display-protected-c=
rc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4270">i915#4270</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_pxp@display-protected-c=
rc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-apl8/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@gem_softpin@noreloc-s3.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@gem_userptr_blits@unsync-ov=
erlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@gem_userptr_blits@unsync-ov=
erlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@gen3_render_tiledy_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v=
1/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@i915_pm_rpm@dpms-lpsp.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +242 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@i915_selftest@live@gt_pm.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb1/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1=
/shard-tglb1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5925v1/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#=
5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl1/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +8 similar issues=
</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary=
-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb8/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-glk9/igt@kms_ccs@pipe-c-crc-primary-r=
otation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_ccs@pipe-d-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@kms_chamelium@hdmi-crc-mult=
iple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl8/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb3/igt@kms_color_chamelium@pipe-a-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-glk9/igt@kms_color_chamelium@pipe-a-c=
tm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_color_chamelium@pipe-a-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-snb2/igt@kms_color_chamelium@pipe-a-c=
tm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_color_chamelium@pipe-c-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_cursor_legacy@basic-bus=
y-flip-before-cursor.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb2/igt@kms_cursor_legacy@basic-bus=
y-flip-before-cursor.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a=
-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105925v1/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-=
hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb7/igt@kms_draw_crc@draw-method-rg=
b565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_draw_crc@draw-method-rg=
b565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_flip@2x-wf_vblank-ts-ch=
eck.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb5/igt@kms_flip@2x-wf_vblank-ts-ch=
eck.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105925v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105925v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105925v1/shard-skl3/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 sim=
ilar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar iss=
ues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-glk1/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +120 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_mmap_write_crc@main:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard=
-skl4/igt@kms_mmap_write_crc@main.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-256:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb1/igt@kms_plane_cursor@pipe-d-pr=
imary-size-256.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@kms_prime@basic-crc@first-t=
o-second.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1836">i915#1836</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb5/igt@kms_prime@basic-crc@first-t=
o-second.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1836">i915#1836</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb8/igt@kms_psr@psr2_cursor_mmap_gt=
t.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3467">i915#3467</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gt=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-i=
clb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105925v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl3/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl1/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-=
skl10/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb1/igt@prime_nv_api@i915_self_impo=
rt_to_different_fd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb6/igt@prime_nv_api@i915_self_impo=
rt_to_different_fd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109291">fdo#109291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@sw_sync@sync_merge_same.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/614=
0">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_multi_timeline_wait:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@sw_sync@sync_multi_timeline=
_wait.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6140">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105925v1/shard-skl1/igt@sysfs_clients@fair-1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-apl6/igt@sysfs_clients@recycle.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-tglb2/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-glk7/igt@sysfs_clients@recycle.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-iclb4/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_buddy@all@buddy_alloc_smoke:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5800">i9=
15#5800</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105925v1/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05925v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105925v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05925v1/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05925v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105925v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105925v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5925v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281"=
>i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105925v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.h=
tml">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105925v1/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105925v1/shard-apl6/igt@gem_workarounds@suspend-resume.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-snb6/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6201">i915#6201</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105925v1/shard-snb5/igt@i915_module_load@reload-with-fau=
lt-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglu-1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10592=
5v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-=
iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shar=
d-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo=
#109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105925v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3048">i915#3048</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v=
1/shard-skl10/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#18=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-kbl7/igt@i915_suspend@debugfs-reader.html">PASS</a> +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346"=
>i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105925v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@toggle.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size=
.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105925v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@varying-=
size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untile=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-pwrite-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105925v1/shard-glk1/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +9 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105925v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-a-constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-5/igt@kms_psr@primary_blt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/=
shard-rkl-6/igt@kms_psr@primary_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10592=
5v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-rkl-6/igt@kms_universa=
l_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-wait-forked-hang:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_vblank@pipe-a-wait-forked-hang.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105925v1/shard-skl1/igt@kms_vblank@pipe-a-wait-forked-hang.html">PASS<=
/a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-5/igt@kms_vblank@pipe-b-wait-forked-hang.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105925v1/shard-rkl-6/igt@kms_vblank@pipe-b-wait-forked-hang.html"=
>PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
36">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105925v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-coun=
ters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925=
v1/shard-skl7/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-apl8/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925=
v1/shard-apl4/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925=
v1/shard-glk5/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1=
/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105925v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105925v1/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#28=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc=
_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105925v1/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_=
ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105925v1/shard-skl9/igt@kms_ccs@pipe-c-random-ccs=
-data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl6/igt@kms_chamelium@hdmi-audio.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fdo#11=
1827</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888"=
>i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105925v1/shard-skl6/igt@kms_chamelium@hdmi-audio.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fd=
o#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-tglb5/igt@kms_content_protection@mei_interface.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300">fd=
o#109300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-tglb2/igt@kms_content_protection@mei_interface.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1063">=
i915#1063</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-iclb6/igt@kms_content_protection@mei_interface.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300">fd=
o#109300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-iclb6/igt@kms_content_protection@mei_interface.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300"=
>fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111066">fdo#111066</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105925v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i91=
5#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-render.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105925v1/shard-skl3/igt@kms_frontbuffer_trac=
king@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105925v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105925v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1059=
25v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11849/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11849/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11849/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11849/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_118=
49/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl4/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10592=
5v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105925v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105925v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl4/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5925v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105925v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v1/shard-kbl6/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6555 -&gt; IGTPW_7461</li>
<li>Linux: CI_DRM_11849 -&gt; Patchwork_105925v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGTPW_7461: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7461/index.htm=
l<br />
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105925v1: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1683100416054257568==--
