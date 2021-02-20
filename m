Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC6632066F
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 18:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67726E2BC;
	Sat, 20 Feb 2021 17:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82A5D6E29D;
 Sat, 20 Feb 2021 17:30:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A6E4A8169;
 Sat, 20 Feb 2021 17:30:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Sat, 20 Feb 2021 17:30:42 -0000
Message-ID: <161384224246.24213.462236376801151394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210220124443.1920-1-michal.wajdeczko@intel.com>
In-Reply-To: <20210220124443.1920-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Keep_strict_GuC_ABI_definitions_separate_=28rev2?=
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
Content-Type: multipart/mixed; boundary="===============2077131794=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2077131794==
Content-Type: multipart/alternative;
 boundary="===============6635292180628880314=="

--===============6635292180628880314==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Keep strict GuC ABI definitions separate (rev2)
URL   : https://patchwork.freedesktop.org/series/87256/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9791_full -> Patchwork_19710_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_19710_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19710_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19710_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][1], [FAIL][2], [FAIL][3]) ([i915#1814] / [i915#2505] / [i915#92]) -> ([FAIL][4], [FAIL][5], [FAIL][6]) ([i915#1436] / [i915#2505])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl6/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19710_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#658])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@feature_discovery@psr2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][9] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1099]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#3063])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +57 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2389])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][19] ([i915#1729])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][20] ([i915#2658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][21] ([i915#3002])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1699]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][23] ([i915#2724])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb6/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][24] -> [TIMEOUT][25] ([i915#2795])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb7/igt@gem_vm_create@destroy-race.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb2/igt@gem_vm_create@destroy-race.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +125 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][28] -> [WARN][29] ([i915#1519])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118] / [i915#95])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk9/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [PASS][32] -> [INCOMPLETE][33] ([i915#2782])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw1/igt@i915_selftest@live@hangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][41] ([i915#2105])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#54]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#54]) +12 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271]) +210 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2346] / [i915#533])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#2598])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][54] ([i915#2772] / [i915#42])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][57] -> [INCOMPLETE][58] ([i915#2055])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2642])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#49])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#49])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271]) +43 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +70 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-snb:          [PASS][69] -> [SKIP][70] ([fdo#109271]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-snb5/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb2/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][76] ([i915#265])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2733])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109441]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-hsw:          [PASS][84] -> [FAIL][85] ([IGT#2])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw2/igt@kms_sysfs_edid_timing.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw8/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180] / [i915#295])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#533]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@recycle:
    - shard-snb:          NOTRUN -> [FAIL][89] ([i915#3028])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@sysfs_clients@recycle.html
    - shard-hsw:          [PASS][90] -> [FAIL][91] ([i915#3028]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@sysfs_clients@recycle.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw1/igt@sysfs_clients@recycle.html
    - shard-kbl:          [PASS][92] -> [FAIL][93] ([i915#3028])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl2/igt@sysfs_clients@recycle.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#3028])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@sysfs_clients@recycle-many.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25@vecs0:
    - shard-skl:          [PASS][96] -> [SKIP][97] ([fdo#109271])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@sysfs_clients@split-25@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl2/igt@sysfs_clients@split-25@vecs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][98] ([i915#3063]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][100] ([i915#3070]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          [DMESG-WARN][106] ([i915#1610] / [i915#2803]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk6/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@i915_selftest@live@client:
    - shard-apl:          [DMESG-FAIL][108] ([i915#3047]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl1/igt@i915_selftest@live@client.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl6/igt@i915_selftest@live@client.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][110] ([i915#198]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [DMESG-WARN][112] ([i915#1982]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_color@pipe-a-ctm-max.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl3/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][114] ([i915#54]) -> [PASS][115] +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-kbl:          [FAIL][118] ([i915#70]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][120] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][128] ([i915#1188]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][130] ([fdo#108145] / [i915#265]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][134] ([i915#1542]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@perf@polling-parameterized.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl2/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          [FAIL][136] ([i915#3028]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@sysfs_clients@recycle-many.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [FAIL][138] ([i915#3028]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@sysfs_clients@recycle-many.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb1/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-kbl:          [SKIP][140] ([fdo#109271] / [i915#3026]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl4/igt@sysfs_clients@sema-10@vcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@sysfs_clients@sema-10@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][142] ([i915#2852]) -> [FAIL][143] ([i915#2842])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][144] ([i915#658]) -> [SKIP][145] ([i915#588])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][146] ([i915#2920]) -> [SKIP][147] ([i915#658]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][148] ([i915#658]) -> [SKIP][149] ([i915#2920]) +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/index.html

--===============6635292180628880314==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Keep strict GuC ABI definitions separate (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87256/">https://patchwork.freedesktop.org/series/87256/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9791_full -&gt; Patchwork_19710_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_19710_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19710_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19710_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2505] / [i915#92]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#2505])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19710_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#1729])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@gem_userptr_blits@process-exit-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb7/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb2/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@i915_hangman@engine-error@vecs0.html">SKIP</a> ([fdo#109271]) +125 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1519])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk9/igt@i915_pm_rc6_residency@rc6-idle.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_chamelium@hdmi-audio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#54]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +210 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WARN</a> ([i915#2772] / [i915#42])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-snb5/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb2/igt@kms_plane@plane-position-covered-pipe-b-planes.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw8/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl7/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-snb5/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-hsw1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl2/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@sysfs_clients@split-25@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl2/igt@sysfs_clients@split-25@vecs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-glk6/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl1/igt@i915_selftest@live@client.html">DMESG-FAIL</a> ([i915#3047]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl6/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_color@pipe-a-ctm-max.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl3/igt@kms_color@pipe-a-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">FAIL</a> ([i915#70]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-skl2/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-apl3/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-tglb1/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl4/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-kbl2/igt@sysfs_clients@sema-10@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19710/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-">SKIP</a> ([i915#2920]) +3 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6635292180628880314==--

--===============2077131794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2077131794==--
