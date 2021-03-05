Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 892C232F6D0
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Mar 2021 00:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0F96EC98;
	Fri,  5 Mar 2021 23:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6283A6EC96;
 Fri,  5 Mar 2021 23:51:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B50DA47E2;
 Fri,  5 Mar 2021 23:51:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 05 Mar 2021 23:51:34 -0000
Message-ID: <161498829434.8414.10809196311488560662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210305193757.50470-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210305193757.50470-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/query=3A_Correlate_engine_and_cpu_timestamps_with_better_accu?=
 =?utf-8?q?racy_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1794295252=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1794295252==
Content-Type: multipart/alternative;
 boundary="===============3925419396814539824=="

--===============3925419396814539824==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/query: Correlate engine and cpu timestamps with better accuracy (rev3)
URL   : https://patchwork.freedesktop.org/series/87552/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9836_full -> Patchwork_19762_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19762_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19762_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19762_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_19762_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-iclb:         NOTRUN -> [SKIP][3] ([i915#1839])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@feature_discovery@display-4x.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][4] ([i915#3002]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#794])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_ringsize@plugged@vecs0:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@gem_ctx_ringsize@plugged@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@gem_ctx_ringsize@plugged@vecs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk3/igt@gem_exec_fair@basic-pace@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][17] ([i915#2389]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#2803])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][20] ([i915#1610] / [i915#2803])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#2428])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +359 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1699]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][28] ([i915#2724])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109293] / [fdo#109506])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_selftest@live@client:
    - shard-glk:          [PASS][30] -> [DMESG-FAIL][31] ([i915#3047])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk4/igt@i915_selftest@live@client.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk5/igt@i915_selftest@live@client.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl8/igt@i915_suspend@forcewake.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110723])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][39] ([i915#1149] / [i915#315])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +24 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109279])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][45] ([IGT#6])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][46] ([IGT#6])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][47] ([IGT#6]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2122])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#2641])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
    - shard-skl:          NOTRUN -> [FAIL][59] ([i915#2628])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#49])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-skl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109441])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][72] ([i915#31])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][73] ([IGT#2])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +80 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +59 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2530])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109289]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +204 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> ([FAIL][80], [FAIL][81]) ([i915#3002] / [i915#698])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@runner@aborted.html

  * igt@sysfs_clients@busy@vcs1:
    - shard-kbl:          [PASS][82] -> [FAIL][83] ([i915#3009])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@sysfs_clients@busy@vcs1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@sysfs_clients@busy@vcs1.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [PASS][84] -> [FAIL][85] ([i915#3028])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@sysfs_clients@recycle.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-snb:          NOTRUN -> [FAIL][86] ([i915#3028])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3026])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@sysfs_clients@split-10@bcs0.html
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3026])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@sysfs_clients@split-10@bcs0.html

  * igt@sysfs_clients@split-10@vcs0:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3026]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@sysfs_clients@split-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][90] ([i915#2918]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][92] ([i915#2369] / [i915#3063]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb2/igt@gem_eio@unwedge-stress.html
    - shard-skl:          [TIMEOUT][94] ([i915#2369] / [i915#2771]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gem_eio@unwedge-stress.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][96] ([i915#1895] / [i915#3031]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_exec_balancer@hang.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][98] ([i915#2846]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][104] ([i915#2803]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][106] ([i915#118] / [i915#95]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][108] ([i915#1982]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl3/igt@i915_module_load@reload.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl7/igt@i915_module_load@reload.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][110] ([i915#2597]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * {igt@kms_ccs@pipe-a-random-ccs-data}:
    - shard-iclb:         [DMESG-WARN][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][114] ([i915#54]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [FAIL][116] ([i915#2346]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][118] ([i915#79]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][120] ([i915#2598]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +6 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@wf_vblank-ts-check@b-edp1:
    - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl7/igt@kms_flip@wf_vblank-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [SKIP][126] ([i915#668]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - shard-skl:          [FAIL][128] ([i915#53]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][130] ([fdo#108145] / [i915#265]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         [FAIL][134] ([i915#3028]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@sysfs_clients@recycle.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-25@rcs0:
    - shard-skl:          [SKIP][136] ([fdo#109271]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@sysfs_clients@sema-25@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@sysfs_clients@sema-25@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][138] ([i915#2684]) -> [WARN][139] ([i915#2681] / [i915#2684])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-iclb:         [SKIP][140] ([i915#3116]) -> [FAIL][141] ([i915#3137])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         [FAIL][142] ([i915#3137]) -> [SKIP][143] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_content_protection@legacy.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei_interface:
    - shard-iclb:         [FAIL][144] ([i915#3144]) -> [SKIP][145] ([fdo#109300] / [fdo#111066])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_content_protection@mei_interface.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_con

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/index.html

--===============3925419396814539824==
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
<tr><td><b>Series:</b></td><td>i915/query: Correlate engine and cpu timestamps with better accuracy (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87552/">https://patchwork.freedesktop.org/series/87552/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9836_full -&gt; Patchwork_19762_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19762_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19762_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19762_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b:<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19762_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> ([i915#794])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@plugged@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@gem_ctx_ringsize@plugged@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@gem_ctx_ringsize@plugged@vecs0.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html">SKIP</a> ([fdo#109271]) +359 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk4/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk5/igt@i915_selftest@live@client.html">DMESG-FAIL</a> ([i915#3047])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl8/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@kms_chamelium@dp-crc-single.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_color@pipe-a-ctm-0-75.html">FAIL</a> ([i915#1149] / [i915#315])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">DMESG-FAIL</a> ([IGT#6]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2628])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb8/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl2/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@kms_vblank@pipe-d-query-forked-hang.html">SKIP</a> ([fdo#109271]) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl8/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +204 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#698])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@sysfs_clients@busy@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@sysfs_clients@busy@vcs1.html">FAIL</a> ([i915#3009])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-snb6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl3/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3026])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3026])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl8/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> ([i915#2918]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl4/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#3031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl3/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-apl7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-random-ccs-data}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl7/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#668]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">FAIL</a> ([i915#53]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb5/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@sysfs_clients@sema-25@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-skl9/igt@sysfs_clients@sema-25@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb1/igt@kms_content_protection@dp-mst-type-0.html">FAIL</a> ([i915#3137])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_content_protection@legacy.html">FAIL</a> ([i915#3137]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb6/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_content_protection@mei_interface.html">FAIL</a> ([i915#3144]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19762/shard-iclb7/igt@kms_con">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3925419396814539824==--

--===============1794295252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1794295252==--
