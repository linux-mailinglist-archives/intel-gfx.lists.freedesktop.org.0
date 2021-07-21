Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28453D1547
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671E06E9AE;
	Wed, 21 Jul 2021 17:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 482966E9AE;
 Wed, 21 Jul 2021 17:42:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 444CDA47DB;
 Wed, 21 Jul 2021 17:42:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 21 Jul 2021 17:42:34 -0000
Message-ID: <162688935427.766.2336882574514382946@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721152358.2893314-1-jason@jlekstrand.net>
In-Reply-To: <20210721152358.2893314-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_the_debugfs_splat_from_mock_selftests_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0876688727=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0876688727==
Content-Type: multipart/alternative;
 boundary="===============5101640126447772105=="

--===============5101640126447772105==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix the debugfs splat from mock selftests (rev3)
URL   : https://patchwork.freedesktop.org/series/92729/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10365_full -> Patchwork_20664_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20664_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20664_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20664_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - {shard-rkl}:        [SKIP][3] ([i915#1397]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - {shard-rkl}:        [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html

  
Known issues
------------

  Here are the changes found in Patchwork_20664_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][7] ([i915#1839])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#3063])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][11] ([i915#3354])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2849])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#1888] / [i915#307])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][24] ([i915#3318])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-apl:          NOTRUN -> [FAIL][25] ([i915#579])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#579])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][27] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271]) +298 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb7/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][33] ([i915#1319]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3359])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2346] / [i915#533])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#3451])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#2546])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111825]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1188])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2733])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][59] ([IGT#2])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +261 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#1542])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb4/igt@perf@polling-parameterized.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb8/igt@perf@polling-parameterized.html
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1542])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl2/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl5/igt@perf@polling-parameterized.html
    - shard-apl:          [PASS][65] -> [FAIL][66] ([i915#1542])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl2/igt@perf@polling-parameterized.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111719])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb5/igt@perf_pmu@rc6-runtime-pm.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [INCOMPLETE][69] ([i915#146] / [i915#198]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][71] ([i915#2410]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-skl:          [TIMEOUT][73] ([i915#3063]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl1/igt@gem_eio@in-flight-contexts-1us.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@reset-stress:
    - {shard-rkl}:        [FAIL][75] ([i915#3115]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@gem_eio@reset-stress.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][77] ([i915#2369] / [i915#3063]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@gem_eio@unwedge-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][79] ([i915#2842]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][81] ([i915#2842]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@independent@vcs0:
    - shard-iclb:         [FAIL][85] ([i915#3795]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb5/igt@gem_exec_schedule@independent@vcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb8/igt@gem_exec_schedule@independent@vcs0.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][87] ([i915#118] / [i915#95]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@i915_pm_rpm@sysfs-read:
    - {shard-rkl}:        [SKIP][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_selftest@mock@dmabuf:
    - shard-iclb:         [DMESG-WARN][91] ([i915#3746]) -> [PASS][92] +17 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb4/igt@i915_selftest@mock@dmabuf.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb5/igt@i915_selftest@mock@dmabuf.html

  * igt@i915_selftest@mock@objects:
    - shard-skl:          [DMESG-WARN][93] ([i915#3746]) -> [PASS][94] +17 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl2/igt@i915_selftest@mock@objects.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl1/igt@i915_selftest@mock@objects.html
    - shard-tglb:         [DMESG-WARN][95] ([i915#3746]) -> [PASS][96] +17 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb6/igt@i915_selftest@mock@objects.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@i915_selftest@mock@objects.html

  * igt@i915_selftest@mock@requests:
    - shard-kbl:          [DMESG-WARN][97] ([i915#3746]) -> [PASS][98] +17 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl4/igt@i915_selftest@mock@requests.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@i915_selftest@mock@requests.html

  * igt@i915_selftest@mock@uncore:
    - shard-glk:          [DMESG-WARN][99] ([i915#3746]) -> [PASS][100] +17 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk9/igt@i915_selftest@mock@uncore.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk2/igt@i915_selftest@mock@uncore.html

  * igt@i915_selftest@mock@vma:
    - shard-snb:          [DMESG-WARN][101] ([i915#3746]) -> [PASS][102] +17 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-snb6/igt@i915_selftest@mock@vma.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@i915_selftest@mock@vma.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl2/igt@i915_suspend@debugfs-reader.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - {shard-rkl}:        [SKIP][105] ([i915#3638]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - {shard-rkl}:        [SKIP][107] ([fdo#111614]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][109] ([i915#3721]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][111] ([i915#3678]) -> [PASS][112] +5 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - {shard-rkl}:        [SKIP][113] ([i915#1149] / [i915#1849]) -> [PASS][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-75.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][115] ([i915#1982]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - {shard-rkl}:        [SKIP][117] ([fdo#112022]) -> [PASS][118] +6 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - {shard-rkl}:        [SKIP][119] ([fdo#111825]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][121] ([i915#2346]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][123] ([fdo#111314]) -> [PASS][124] +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-kbl:          [FAIL][125] ([i915#79]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][127] ([i915#2122]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][129] ([i915#79]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][131] ([i915#146] / [i915#198] / [i915#2910]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][133] ([i915#1188]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl4/igt@kms_hdr@bpc-switch.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_lease@lease_get:
    - {shard-rkl}:        [SKIP][135] ([i915#1845]) -> [PASS][136] +14 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_lease@lease_get.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_lease@lease_get.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - {shard-rkl}:        [SKIP][137] ([i915#1849]) -> [PASS][138] +30 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][139] ([fdo#108145] / [i915#265]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][141] ([i915#1849] / [i915#3558]) -> [PASS][142] +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][143] ([fdo#109441]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][145] ([i915#1072]) -> [PASS][146] +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_psr@sprite_plane_onoff.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][147] ([i915#1542]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@perf@blocking.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl10/igt@perf@blocking.html

  * igt@perf@blocking-parameterized:
    - {shard-rkl}:        [FAIL][149] ([i915#3793]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-2/igt@perf@blocking-parameterized.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-1/igt@perf@blocking-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][151] ([i915#51]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl1/igt@perf@short-reads.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-ti

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/index.html

--===============5101640126447772105==
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
<tr><td><b>Series:</b></td><td>Fix the debugfs splat from mock selftests (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92729/">https://patchwork.freedesktop.org/series/92729/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10365_full -&gt; Patchwork_20664_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20664_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20664_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20664_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-suspend:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk8/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20664_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb7/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#1888] / [i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +298 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb7/igt@kms_chamelium@hdmi-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> ([i915#3451])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@kms_frontbuffer_tracking@fbc-badstride.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb4/igt@kms_psr@psr2_primary_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl2/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +261 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb4/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb5/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> ([fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl3/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> ([i915#146] / [i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl1/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl2/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#3115]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@independent@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb5/igt@gem_exec_schedule@independent@vcs0.html">FAIL</a> ([i915#3795]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb8/igt@gem_exec_schedule@independent@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@dmabuf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb4/igt@i915_selftest@mock@dmabuf.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb5/igt@i915_selftest@mock@dmabuf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@objects:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl2/igt@i915_selftest@mock@objects.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl1/igt@i915_selftest@mock@objects.html">PASS</a> +17 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-tglb6/igt@i915_selftest@mock@objects.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-tglb7/igt@i915_selftest@mock@objects.html">PASS</a> +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl4/igt@i915_selftest@mock@requests.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl6/igt@i915_selftest@mock@requests.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@uncore:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-glk9/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-glk2/igt@i915_selftest@mock@uncore.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-snb6/igt@i915_selftest@mock@vma.html">DMESG-WARN</a> ([i915#3746]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-snb6/igt@i915_selftest@mock@vma.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-apl2/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-apl7/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-75.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198] / [i915#2910]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_get:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_lease@lease_get.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_lease@lease_get.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html">PASS</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-iclb8/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl5/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-skl10/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-rkl-2/igt@perf@blocking-parameterized.html">FAIL</a> ([i915#3793]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20664/shard-rkl-1/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/shard-skl1/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-ti">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============5101640126447772105==--

--===============0876688727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0876688727==--
