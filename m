Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AABDE3262AE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 13:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F197C6E906;
	Fri, 26 Feb 2021 12:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 948186E906;
 Fri, 26 Feb 2021 12:25:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DCD4A3ECB;
 Fri, 26 Feb 2021 12:25:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 26 Feb 2021 12:25:17 -0000
Message-ID: <161434231756.4756.12959301332098882666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210226095154.806669-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210226095154.806669-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Wedge_the_GPU_if_command_parser_setup_fails?=
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
Content-Type: multipart/mixed; boundary="===============1781988209=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1781988209==
Content-Type: multipart/alternative;
 boundary="===============2779944522198729008=="

--===============2779944522198729008==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Wedge the GPU if command parser setup fails
URL   : https://patchwork.freedesktop.org/series/87422/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9810_full -> Patchwork_19732_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19732_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#280])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#3115])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk6/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk8/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1895] / [i915#3031])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb5/igt@gem_exec_balancer@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][7] ([i915#2846])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][16] ([i915#2389]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([i915#2803])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#2803])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb8/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][25] ([i915#3002])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1699]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1699]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#198])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl2/igt@gem_workarounds@suspend-resume.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl5/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109289]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109289] / [fdo#111719])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][34] -> [INCOMPLETE][35] ([i915#155])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2705])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#2705])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#54]) +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][48] -> [FAIL][49] ([i915#54])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
    - shard-apl:          [PASS][50] -> [FAIL][51] ([i915#54])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#54]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#2346])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#2122])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#79])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2598])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#2122])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2642])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +39 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111825]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +182 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271]) +13 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +116 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
    - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2733])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180] / [i915#295])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@non-system-wide-paranoid:
    - shard-snb:          NOTRUN -> [SKIP][86] ([fdo#109271]) +122 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@perf@non-system-wide-paranoid.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#3019])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl9/igt@sysfs_clients@busy@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl10/igt@sysfs_clients@busy@vcs0.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [PASS][89] -> [FAIL][90] ([i915#3028])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw2/igt@sysfs_clients@recycle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw8/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [PASS][91] -> [FAIL][92] ([i915#3028])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb5/igt@sysfs_clients@recycle-many.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@sysfs_clients@recycle-many.html
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#3028])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl7/igt@sysfs_clients@recycle-many.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#1731])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][97] ([i915#146] / [i915#198]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [DMESG-WARN][105] ([i915#1610]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [DMESG-WARN][107] ([i915#118] / [i915#95]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk8/igt@gem_exec_whisper@basic-queues.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk3/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [FAIL][109] ([i915#2822]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb1/igt@gem_vm_create@destroy-race.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gem_vm_create@destroy-race.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][111] ([i915#1436] / [i915#716]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][113] ([i915#454]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][115] ([i915#1519]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [DMESG-WARN][117] ([i915#1982]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl9/igt@kms_color@pipe-c-ctm-0-75.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][119] ([i915#54]) -> [PASS][120] +8 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][121] ([i915#96]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +7 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [DMESG-WARN][125] ([i915#180]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][127] ([i915#2122]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][129] ([fdo#108145] / [i915#265]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         [FAIL][133] ([i915#3028]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@sysfs_clients@recycle.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@sysfs_clients@recycle.html
    - shard-glk:          [FAIL][135] ([i915#3028]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk4/igt@sysfs_clients@recycle.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk6/igt@sysfs_clients@recycle.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][137] ([i915#2681] / [i915#2684]) -> [WARN][138] ([i915#1804] / [i915#2684])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][139] ([i915#1804] / [i915#2684]) -> [WARN][140] ([i915#2681] / [i915#2684])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][141] ([i915#155] / [i915#180] / [i915#636]) -> [INCOMPLETE][142] ([i915#155] / [i915#636])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][143] ([i915#658]) -> [SKIP][144] ([i915#2920]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][145] ([i915#2920]) -> [SKIP][146] ([i915#658]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602] / [i915#92]) -> ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shar

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/index.html

--===============2779944522198729008==
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
<tr><td><b>Series:</b></td><td>drm/i915: Wedge the GPU if command parser setup fails</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87422/">https://patchwork.freedesktop.org/series/87422/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9810_full -&gt; Patchwork_19732_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19732_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@gem_ctx_persistence@engines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk8/igt@gem_eio@kms.html">FAIL</a> ([i915#3115])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#3031])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb8/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@uc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl2/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl5/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289] / [fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> ([i915#155])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#54]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +182 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@non-system-wide-paranoid:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-snb7/igt@perf@non-system-wide-paranoid.html">SKIP</a> ([fdo#109271]) +122 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl9/igt@sysfs_clients@busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl10/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3019])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw2/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw8/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb5/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl7/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> ([i915#146] / [i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk8/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk3/igt@gem_exec_whisper@basic-queues.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-tglb1/igt@gem_vm_create@destroy-race.html">FAIL</a> ([i915#2822]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-tglb5/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl9/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> ([i915#96]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +7 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-glk4/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-glk6/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19732/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9810/shar">FAIL</a>, [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602] / [i915#92]) -&gt; ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2779944522198729008==--

--===============1781988209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1781988209==--
