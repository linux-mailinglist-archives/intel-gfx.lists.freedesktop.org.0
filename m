Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010024E8D5B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 06:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613E910EAC5;
	Mon, 28 Mar 2022 04:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4525A10EAC5;
 Mon, 28 Mar 2022 04:39:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40AA7A00FD;
 Mon, 28 Mar 2022 04:39:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0628425109124250785=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Mon, 28 Mar 2022 04:39:01 -0000
Message-ID: <164844234122.2848.11981401154252269985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328031607.1810247-1-fei.yang@intel.com>
In-Reply-To: <20220328031607.1810247-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev9=29?=
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

--===============0628425109124250785==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: avoid concurrent writes to aux_inv (rev9)
URL   : https://patchwork.freedesktop.org/series/100772/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11407_full -> Patchwork_22692_full
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

  Here are the changes found in Patchwork_22692_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#5441]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk1/igt@api_intel_bb@blit-reloc-keep-cache.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk8/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#4525])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl7/igt@gem_lmem_swapping@parallel-random.html
    - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk4/igt@gem_lmem_swapping@parallel-random.html
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#4613]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][15] ([i915#5441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@gem_ppgtt@blt-vs-render-ctx0.html
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][16] ([i915#5441])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +29 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_tiled_blits@basic:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([i915#5441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl7/igt@gem_tiled_blits@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][23] ([i915#5441])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-skl:          NOTRUN -> [INCOMPLETE][24] ([i915#5441]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][26] ([i915#4991])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#3297]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109289]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271]) +67 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@gen9_exec_parse@batch-invalid-length.html
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2856]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111644] / [i915#1397] / [i915#2411])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110892])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#5286])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#5286]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#5441]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([i915#5441]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl1/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
    - shard-apl:          [PASS][40] -> [INCOMPLETE][41] ([i915#1982] / [i915#5441])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][42] ([i915#2828] / [i915#5441])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][43] ([i915#5441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][44] -> [INCOMPLETE][45] ([i915#1373] / [i915#5441])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
    - shard-iclb:         [PASS][46] -> [INCOMPLETE][47] ([i915#1373] / [i915#5441])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3777])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][49] ([i915#5441]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-iclb:         [PASS][50] -> [INCOMPLETE][51] ([i915#5441]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#5441]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3777])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#3777])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#110723]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3886]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278] / [i915#3886])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111615] / [i915#3689])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3742])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109278] / [i915#1149])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][72] ([i915#1319]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][73] ([i915#1319])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#1063])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@srm:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109300] / [fdo#111066])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109279] / [i915#3359])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278]) +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109274] / [fdo#109278]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#5287]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-blt-4tiled.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109274])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109274] / [fdo#111825]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109280]) +13 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#109280] / [fdo#111825])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_hdr@static-swap.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271]) +67 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3536]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_lowres@pipe-c-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#5288])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-4.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#5176]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#658])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-tglb:         NOTRUN -> [FAIL][95] ([i915#132] / [i915#3467])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109441]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [PASS][97] -> [DMESG-WARN][98] ([i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][99] ([i915#180])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +33 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_vblank@pipe-d-query-forked-busy.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109502])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#2437])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +65 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109291]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@prime_nv_test@i915_nv_sharing.html

  * igt@sysfs_clients@create:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#2994])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-50:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-10:
    - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][109] ([i915#2842]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem:
    - shard-glk:          [INCOMPLETE][111] ([i915#5441]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-snb:          [INCOMPLETE][113] ([i915#5441]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-snb7/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb2/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - {shard-tglu}:       [INCOMPLETE][115] ([i915#5441]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglu-6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [INCOMPLETE][117] ([i915#5441]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglb:         [INCOMPLETE][119] ([i915#5441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-iclb:         [INCOMPLETE][121] ([i915#5441]) -> [PASS][122] +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-kbl:          [INCOMPLETE][123] ([i915#5441]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][125] ([i915#2122]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][127] ([i915#4911]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][129] ([fdo#109441]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][131] ([i915#180] / [

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/index.html

--===============0628425109124250785==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: avoid concurrent writes to aux_inv (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100772/">https://patchwork.freedesktop.org/series/100772/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11407_full -&gt; Patchwork_22692_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22692_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk1/igt@api_intel_bb@blit-reloc-keep-cache.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk8/igt@api_intel_bb@blit-reloc-keep-cache.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl7/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk4/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-FAIL</a> ([i915#5441])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-FAIL</a> ([i915#5441])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_pxp@create-regular-buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl7/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl2/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_tiled_partial_pwrite_pread@reads.html">INCOMPLETE</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">INCOMPLETE</a> ([i915#5441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +67 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2856]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5286]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl1/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">INCOMPLETE</a> ([i915#1982] / [i915#5441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">INCOMPLETE</a> ([i915#2828] / [i915#5441])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">INCOMPLETE</a> ([i915#5441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">INCOMPLETE</a> ([i915#1373] / [i915#5441])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">INCOMPLETE</a> ([i915#1373] / [i915#5441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">INCOMPLETE</a> ([i915#5441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">INCOMPLETE</a> ([i915#5441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_chamelium@vga-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_color@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb5/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_content_protection@mei_interface.html">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_content_protection@srm.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html">SKIP</a> ([fdo#109278]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-blt-4tiled.html">SKIP</a> ([i915#5287]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html">SKIP</a> ([fdo#109271]) +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-y.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-4.html">SKIP</a> ([i915#5288])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html">SKIP</a> ([i915#5176]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_psr@psr2_cursor_plane_move.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@kms_vblank@pipe-d-query-forked-busy.html">SKIP</a> ([fdo#109271]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb6/igt@kms_vrr@flip-dpms.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@prime_nv_test@i915_nv_sharing.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb6/igt@sysfs_clients@create.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl7/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl6/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk9/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-snb7/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-snb2/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglu-6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-apl4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-apl3/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22692/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          [DMESG-WARN][131] ([i915#180] / [</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0628425109124250785==--
