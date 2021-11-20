Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B8F457C07
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Nov 2021 07:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDFE6E8C7;
	Sat, 20 Nov 2021 06:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B395D6E8BC;
 Sat, 20 Nov 2021 06:52:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9602A7E03;
 Sat, 20 Nov 2021 06:52:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3864682917485206086=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 20 Nov 2021 06:52:24 -0000
Message-ID: <163739114465.27214.15946901279445385574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211120014201.26480-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211120014201.26480-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Avoid_with=5Fintel=5Fruntime=5Fpm_within_spinlock?=
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

--===============3864682917485206086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Avoid with_intel_runtime_pm within spinlock
URL   : https://patchwork.freedesktop.org/series/97124/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10908_full -> Patchwork_21645_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21645_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21645_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21645_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl1/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  
Known issues
------------

  Here are the changes found in Patchwork_21645_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@gem_create@create-massive.html

  * igt@gem_exec_capture@pi@vcs1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#3371])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@gem_exec_capture@pi@vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_exec_capture@pi@vcs1.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2849])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#109283])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#456])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb5/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2856])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@i2c:
    - shard-iclb:         [PASS][22] -> [DMESG-WARN][23] ([i915#4391])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb3/igt@i915_pm_rpm@i2c.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb7/igt@i915_pm_rpm@i2c.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +5 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][26] ([i915#4272])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3743])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111615]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689] / [i915#3886]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615] / [i915#3689]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +63 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3742])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@vga-hpd:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111828])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3319]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109279] / [i915#3359]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][50] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +133 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][53] -> [DMESG-WARN][54] ([i915#1982]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111825]) +18 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#2411] / [i915#456])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#1187])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][60] ([i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111615] / [fdo#112054])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_plane_lowres@pipe-d-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3536])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_plane_lowres@pipe-d-tiling-none.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2733])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#2920]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109441]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         NOTRUN -> [FAIL][72] ([i915#132] / [i915#3467])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][73] ([IGT#2])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180] / [i915#295])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2437])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2530]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][79] -> [FAIL][80] ([i915#1542])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl6/igt@perf@polling-parameterized.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl4/igt@perf@polling-parameterized.html

  * igt@prime_udl:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@prime_udl.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][84] ([i915#2582]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@fbdev@unaligned-write.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][86] ([i915#658]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@feature_discovery@psr2.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        ([PASS][90], [FAIL][91]) ([i915#2410]) -> [PASS][92]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][93] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][97] ([i915#2842]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][99] ([i915#118]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][101] ([i915#2190]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][103] ([i915#1436] / [i915#716]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [FAIL][105] ([i915#4275]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][107] ([fdo#109308]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@i915_pm_rpm@i2c.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][109] ([i915#2521]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][111] ([i915#1845]) -> [PASS][112] +36 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - {shard-rkl}:        ([SKIP][113], [SKIP][114]) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][115]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_color@pipe-b-ctm-negative:
    - {shard-rkl}:        [SKIP][116] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_color@pipe-b-ctm-negative.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_concurrent@pipe-b:
    - {shard-rkl}:        [SKIP][118] ([i915#1845] / [i915#4070]) -> [PASS][119] +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_concurrent@pipe-b.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - {shard-rkl}:        ([PASS][120], [SKIP][121]) ([fdo#112022]) -> [PASS][122]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        [SKIP][123] ([fdo#112022] / [i915#4070]) -> [PASS][124] +6 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-tglb:         [INCOMPLETE][125] -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - {shard-rkl}:        [SKIP][127] ([i915#1849] / [i915#4070]) -> [PASS][128] +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - {shard-rkl}:        ([PASS][129], [SKIP][130]) ([i915#4098]) -> [PASS][131] +6 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - {shard-rkl}:        ([SKIP][132], [SKIP][133]) ([fdo#111825] / [i915#4070]) -> [PASS][134] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - {shard-rkl}:        [SKIP][135] ([fdo#111825] / [i915#4070]) -> [PASS][136] +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-skl:          [FAIL][137] ([i915#2346]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - {shard-rkl}:        ([SKIP][139], [SKIP][140]) ([fdo#111314] / [i915#4098]) -> [PASS][141]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/index.html

--===============3864682917485206086==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Avoid with_intel_runtime_pm within spinlock</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97124/">https://patchwork.freedesktop.org/series/97124/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10908_full -&gt; Patchwork_21645_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21645_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21645_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21645_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl1/igt@gem_partial_pwrite_pread@writes-after-reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@gem_partial_pwrite_pread@writes-after-reads.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21645_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@gem_exec_capture@pi@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_exec_capture@pi@vcs1.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb5/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb7/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb3/igt@i915_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb7/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> ([i915#4391])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl8/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html">SKIP</a> ([fdo#109271]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +133 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_plane_lowres@pipe-d-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_psr@psr2_sprite_blt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl1/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl6/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-apl4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl2/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a>) ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@i915_pm_rpm@i2c.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-a-ctm-red-to-blue.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_color@pipe-a-ctm-red-to-blue.html">SKIP</a>) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_color@pipe-b-ctm-negative.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_concurrent@pipe-b.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_concurrent@pipe-b.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html">SKIP</a>) ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">SKIP</a>) ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a>) ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21645/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============3864682917485206086==--
