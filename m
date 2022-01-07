Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D9487F2B
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 00:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9D510F533;
	Fri,  7 Jan 2022 23:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E18B10F51B;
 Fri,  7 Jan 2022 23:00:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 297D5A8836;
 Fri,  7 Jan 2022 23:00:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4729794302539229055=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 07 Jan 2022 23:00:23 -0000
Message-ID: <164159642313.24388.14460428508591481025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220107210516.907834-1-lucas.demarchi@intel.com>
In-Reply-To: <20220107210516.907834-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_x86/quirks=3A_Replace_QFLAG=5F?=
 =?utf-8?q?APPLY=5FONCE_with_static_locals?=
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

--===============4729794302539229055==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/3] x86/quirks: Replace QFLAG_APPLY_ONCE with static locals
URL   : https://patchwork.freedesktop.org/series/98622/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11054_full -> Patchwork_21943_full
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

  Here are the unknown changes that may have been introduced in Patchwork_21943_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_create@madvise@smem:
    - {shard-rkl}:        ([DMESG-WARN][1], [PASS][2]) -> [INCOMPLETE][3]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@gem_exec_create@madvise@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@gem_exec_create@madvise@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_create@madvise@smem.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - {shard-rkl}:        [PASS][4] -> [INCOMPLETE][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@gem_exec_whisper@basic-queues-forked.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@prime_self_import@reimport-vs-gem_close-race:
    - {shard-rkl}:        [PASS][7] -> ([PASS][8], [DMESG-WARN][9])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-2/igt@prime_self_import@reimport-vs-gem_close-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-4/igt@prime_self_import@reimport-vs-gem_close-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@prime_self_import@reimport-vs-gem_close-race.html

  * igt@runner@aborted:
    - {shard-rkl}:        ([FAIL][10], [FAIL][11], [FAIL][12]) ([i915#2029] / [i915#3002] / [i915#3810] / [i915#4312]) -> ([FAIL][13], [FAIL][14]) ([i915#3002] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-1/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-1/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21943_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#4525]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@gem_lmem_swapping@random.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#4270])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@gem_pxp@create-regular-context-2.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109303])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3743]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +132 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#109278])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109274] / [fdo#111825])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#79])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][52] -> [INCOMPLETE][53] ([i915#180])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
    - shard-kbl:          [PASS][54] -> [INCOMPLETE][55] ([i915#180] / [i915#3614])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2122]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#3701])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +114 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#533]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][64] -> [INCOMPLETE][65] ([i915#2828])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#1888] / [i915#4729])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk3/igt@kms_plane_cursor@pipe-c-overlay-size-256.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk5/igt@kms_plane_cursor@pipe-c-overlay-size-256.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3536])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109441])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-d-wait-forked:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +53 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_vblank@pipe-d-wait-forked.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@fair-3:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl9/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - {shard-rkl}:        [INCOMPLETE][85] -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@drm_import_export@prime.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@drm_import_export@prime.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][87] ([i915#658]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb5/igt@feature_discovery@psr2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-tglb:         [DMESG-WARN][89] ([i915#2411] / [i915#2867]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [TIMEOUT][91] ([i915#3063]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb2/igt@gem_eio@in-flight-1us.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb1/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - {shard-rkl}:        [TIMEOUT][93] ([i915#3063]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@gem_eio@in-flight-contexts-10ms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][95] ([i915#2481] / [i915#3070]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - {shard-tglu}:       [FAIL][97] ([i915#1888]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-3/igt@gem_exec_balancer@bonded-pair.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-2/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][99] ([i915#4525]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [INCOMPLETE][101] ([i915#4547]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl1/igt@gem_exec_capture@pi@bcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][103] ([i915#2842]) -> [PASS][104] +4 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][105] ([i915#2190]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][107] ([i915#1436] / [i915#716]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][109] ([i915#454]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {shard-rkl}:        [SKIP][111] ([fdo#109308]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        ([PASS][113], [SKIP][114]) ([fdo#109308]) -> [PASS][115]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][116] ([i915#1397]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-tglu}:       [DMESG-FAIL][118] ([i915#3987]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-3/igt@i915_selftest@live@gt_pm.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][120] ([i915#402]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-5/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-6/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][122] ([i915#118]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][124] ([i915#1149] / [i915#4098]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color@pipe-a-ctm-negative:
    - {shard-rkl}:        [SKIP][126] ([i915#1149] / [i915#1849]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_color@pipe-a-ctm-negative.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        ([SKIP][130], [PASS][131]) ([fdo#112022]) -> [PASS][132] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        [SKIP][133] ([fdo#112022]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][135] ([i915#180]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - {shard-rkl}:        [SKIP][137] ([i915#4070]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        ([PASS][139], [SKIP][140]) ([fdo#111825]) -> [PASS][141]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - {shard-rkl}:        ([SKIP][142], [SKIP][143]) ([fdo#111314] / [i915#4098]) -> [PASS][144]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][145] ([i915#79]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-tglb:         [FAIL][147] ([i915#79]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb2/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/index.html

--===============4729794302539229055==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/3] x86/quirks: Replace QFLAG_APPLY_ONCE with static locals</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98622/">https://patchwork.freedesktop.org/series/98622/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11054_full -&gt; Patchwork_21943_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21943_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_create@madvise@smem:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@gem_exec_create@madvise@smem.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@gem_exec_create@madvise@smem.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_create@madvise@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@reimport-vs-gem_close-race:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-2/igt@prime_self_import@reimport-vs-gem_close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-4/igt@prime_self_import@reimport-vs-gem_close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@prime_self_import@reimport-vs-gem_close-race.html">DMESG-WARN</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-2/igt@runner@aborted.html">FAIL</a>) ([i915#2029] / [i915#3002] / [i915#3810] / [i915#4312]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21943_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_chamelium@dp-audio-edid.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">INCOMPLETE</a> ([i915#180])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">INCOMPLETE</a> ([i915#180] / [i915#3614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-256:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk3/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk5/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">FAIL</a> ([i915#1888] / [i915#4729])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb7/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@kms_vblank@pipe-d-wait-forked.html">SKIP</a> ([fdo#109271]) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb3/igt@prime_nv_pcopy@test3_2.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl9/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@drm_import_export@prime.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@drm_import_export@prime.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vcs1.html">DMESG-WARN</a> ([i915#2411] / [i915#2867]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb2/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb1/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-3/igt@gem_exec_balancer@bonded-pair.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-2/igt@gem_exec_balancer@bonded-pair.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl1/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a>) ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#3987]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglu-5/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglu-6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_color@pipe-a-ctm-blue-to-red.html">SKIP</a> ([i915#1149] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-negative:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_color@pipe-a-ctm-negative.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_color@pipe-a-ctm-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">PASS</a>) ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-forked-move.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">SKIP</a>) ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11054/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21943/shard-tglb2/">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============4729794302539229055==--
