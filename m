Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6206A4CAA5B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 17:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718A010E125;
	Wed,  2 Mar 2022 16:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DA1F10E125;
 Wed,  2 Mar 2022 16:34:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07228A77A5;
 Wed,  2 Mar 2022 16:34:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2157898376725744563=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 02 Mar 2022 16:34:42 -0000
Message-ID: <164623888299.11321.6992270969510830337@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220302043256.191529-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220302043256.191529-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaW9t?=
 =?utf-8?q?mu/vt-d=3A_Add_RPLS_to_quirk_list_to_skip_TE_disabling_=28rev3?=
 =?utf-8?q?=29?=
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

--===============2157898376725744563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: iommu/vt-d: Add RPLS to quirk list to skip TE disabling (rev3)
URL   : https://patchwork.freedesktop.org/series/100165/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11308_full -> Patchwork_22458_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22458_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5}:
    - {shard-rkl}:        NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11308_full and Patchwork_22458_full:

### New IGT tests (1) ###

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_22458_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [FAIL][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49]) ([i915#5032])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][52] ([i915#5076])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#2846])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][60] -> [DMESG-WARN][61] ([i915#118])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][62] -> [INCOMPLETE][63] ([i915#1895])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][66] ([i915#2658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4270]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#768])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#3297])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3323])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][72] ([i915#4991])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl8/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][73] ([i915#4991])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109289]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][75] -> [DMESG-WARN][76] ([i915#1436] / [i915#716])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][77] -> [DMESG-WARN][78] ([i915#1436] / [i915#716])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2856])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2527] / [i915#2856]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +106 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#2521])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#4272])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_async_flips@crc.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#404])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +31 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#3743])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3777]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3777])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3777]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#111615])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +8 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3689])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111615] / [i915#3689]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl1/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][101] ([i915#1319]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109279] / [i915#3359]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109278]) +6 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
    - shard-skl:          NOTRUN -> [DMESG-WARN][105] ([i915#1982])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#2346] / [i915#533])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         [PASS][109] -> [INCOMPLETE][110] ([i915#5239])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-tglb7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271]) +130 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109274])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][113] ([i915#180])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#4839])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][116] ([i915#3701])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109280]) +7 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][120] ([fdo#108145] / [i915#265])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][121] ([fdo#108145] / [i915#265]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][122] ([i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#111615] / [fdo#112054])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#3536]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#3536])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#111068] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109441])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109441])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][132] ([i915#132] / [i915#3467])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#2437])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2437])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#2530])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109278] / [i915#2530])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@prime_nv_api@i915_nv_double_export:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#109291])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@prime_nv_api@i915_nv_double_export.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109291])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@prime_nv_pcopy@test3_5.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][139] ([i915#5098])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2994])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@sysfs_clients@fair-3.html
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2994])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl8/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][143] ([i915#232]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [INCOMPLETE][145] ([i915#4547]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/igt@gem_exec_capture@pi@bcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][147] ([i915#2842]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][151] ([i915#4171]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/igt@gem_softpin@allocator-evict-all-engines.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/index.html

--===============2157898376725744563==
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
<tr><td><b>Series:</b></td><td>iommu/vt-d: Add RPLS to quirk list to skip T=
E disabling (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100165/">https://patchwork.freedesktop.org/series/100165/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22458/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11308_full -&gt; Patchwork_22458_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22458_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5}:=
</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-rkl-1/igt@kms_plane_scaling@planes-upsc=
ale-factor-0-25-downscale-factor-0-5.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-=
3-scaler-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-dg1-18/igt@kms_plane_scaling@scaler-wit=
h-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html">SKIP</a=
> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11308_full and Patchwork_2=
2458_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d=
-edp-1-planes-upscale-downscale:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22458_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11308/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11308/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/sha=
rd-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11308/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11308/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11308/shard-skl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308=
/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11308/shard-skl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1308/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11308/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/boot.html">P=
ASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22458/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22458/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl9/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl7/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl3/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22458/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22458/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22458/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shard-skl10=
/boot.html">PASS</a>) ([i915#5032])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22458/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@gem_exec_balancer@parallel-bb=
-first.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11308/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
458/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11308/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
58/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915=
#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
58/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22458/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html">=
DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22458/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html">IN=
COMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl8/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@gem_pxp@create-regular-contex=
t-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gem_userptr_blits@create-dest=
roy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/shard-apl8/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#4991])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/shard-kbl3/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#4991])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gen7_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-apl3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/shar=
d-apl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/=
shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb5/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2527] / [i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +106 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_async_flips@alternate-sync=
-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_async_flips@crc.html">FAIL=
</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_atomic@plane-primary-over=
lay-mutable-zpos.html">SKIP</a> ([i915#404])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@kms_big_fb@x-tiled-8bpp-rotate=
-270.html">SKIP</a> ([fdo#109271]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-dat=
a-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-kbl1/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_color_chamelium@pipe-a-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-rapid-movement.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-1=
28x128-bottom-edge.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22458/shard-skl1/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-tglb7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs=
-cursor-atomic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/shard-tglb8/igt@kms_cursor_legacy@long-nonbloc=
king-modeset-vs-cursor-atomic.html">INCOMPLETE</a> ([i915#5239])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +130 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_flip@2x-flip-vs-absolute-=
wf_vblank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl3/igt@kms_flip@flip-vs-suspend-inter=
ruptible@b-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/=
shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#=
4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109280] / [fdo#11182=
5]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_plane_lowres@pipe-b-tilin=
g-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_plane_lowres@pipe-c-tilin=
g-none.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_plane_lowres@pipe-c-tilin=
g-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl8/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg=
-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22458/sh=
ard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html"=
>SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@kms_psr@psr2_sprite_mmap_gtt.=
html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-apl1/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@nouveau_crc@pipe-b-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@nouveau_crc@pipe-d-source-out=
p-complete.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_export:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-tglb1/igt@prime_nv_api@i915_nv_double_e=
xport.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-iclb3/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl10/igt@syncobj_timeline@transfer-tim=
eline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/shard-kbl3/igt@sysfs_clients@fair-3.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22458/shard-apl8/igt@sysfs_clients@fair-3.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22458/shard-skl7/igt@sysfs_clients@split-10.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#=
232]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2458/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-skl7/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22458/shard-skl10/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22458/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22458/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11308/shard-glk6/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22458/shard-glk4/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2157898376725744563==--
