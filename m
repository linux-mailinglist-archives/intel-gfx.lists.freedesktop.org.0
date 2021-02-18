Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6604431F175
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 21:58:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDB36E88B;
	Thu, 18 Feb 2021 20:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9782E6E88B;
 Thu, 18 Feb 2021 20:58:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8FEA8A7DFC;
 Thu, 18 Feb 2021 20:58:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 18 Feb 2021 20:58:21 -0000
Message-ID: <161368190155.23765.8337455135302275091@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vblank=3A_Avoid_storing_a_timestamp_for_the_same_frame_twice_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0619036179=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0619036179==
Content-Type: multipart/alternative;
 boundary="===============8953799435106326488=="

--===============8953799435106326488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/vblank: Avoid storing a timestamp for the same frame twice (rev2)
URL   : https://patchwork.freedesktop.org/series/86672/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9786_full -> Patchwork_19701_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19701_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19701_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19701_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_19701_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb7/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-snb7/igt@gem_ctx_persistence@engines-hostile.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-hsw:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw5/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][7] ([i915#2846])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][14] ([i915#2389]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][15] ([i915#2389])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl7/igt@gem_pwrite@basic-exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][20] ([i915#2658]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][21] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109506] / [i915#2411])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-hsw:          NOTRUN -> [SKIP][23] ([fdo#109271]) +71 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2705])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271]) +63 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl8/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-snb7/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-max.html
    - shard-hsw:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][33] ([i915#1319])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#54]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +135 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][38] -> [FAIL][39] ([i915#96])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1982])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2642])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2672])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#111825])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#1839])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-d-overlay-size-128:
    - shard-hsw:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533]) +10 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_plane_cursor@pipe-d-overlay-size-128.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-hsw:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#1072]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][60] ([IGT#2])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][61] -> [INCOMPLETE][62] ([i915#198] / [i915#2828])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +148 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#1542])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl8/igt@perf@blocking.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl3/igt@perf@blocking.html

  * igt@prime_nv_pcopy@test1_micro:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109291])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@prime_nv_pcopy@test1_micro.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +179 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@prime_nv_pcopy@test2.html

  * igt@sysfs_clients@recycle-many:
    - shard-hsw:          [PASS][69] -> [FAIL][70] ([i915#3028])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw1/igt@sysfs_clients@recycle-many.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw5/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#3028])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb6/igt@sysfs_clients@recycle-many.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          [PASS][73] -> [SKIP][74] ([fdo#109271] / [i915#3026]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl6/igt@sysfs_clients@sema-10@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl6/igt@sysfs_clients@sema-10@vcs0.html

  * igt@sysfs_clients@split-25@vecs0:
    - shard-skl:          [PASS][75] -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl7/igt@sysfs_clients@split-25@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl10/igt@sysfs_clients@split-25@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][77] ([i915#2389]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-tglb:         [DMESG-WARN][79] ([i915#2803]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][81] ([i915#118] / [i915#95]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-glk6/igt@gem_exec_whisper@basic-fds.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-glk1/igt@gem_exec_whisper@basic-fds.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][83] ([i915#1436] / [i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-hsw:          [INCOMPLETE][85] ([i915#2880]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw4/igt@i915_module_load@reload-with-fault-injection.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][87] ([i915#2782]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw2/igt@i915_selftest@live@hangcheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][89] ([i915#636]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl6/igt@i915_suspend@forcewake.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl9/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][93] ([i915#54]) -> [PASS][94] +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][95] ([i915#2346]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][99] ([i915#198] / [i915#2295]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][101] ([i915#1188]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl4/igt@kms_hdr@bpc-switch.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [INCOMPLETE][103] ([i915#146] / [i915#198] / [i915#2828]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][107] ([fdo#108145] / [i915#265]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [FAIL][113] ([i915#3028]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-hsw7/igt@sysfs_clients@recycle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-hsw7/igt@sysfs_clients@recycle.html
    - shard-iclb:         [FAIL][115] ([i915#3028]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb4/igt@sysfs_clients@recycle.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-10@rcs0:
    - shard-apl:          [SKIP][117] ([fdo#109271] / [i915#3026]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl6/igt@sysfs_clients@sema-10@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl6/igt@sysfs_clients@sema-10@rcs0.html

  * igt@sysfs_clients@split-25@rcs0:
    - shard-skl:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-skl7/igt@sysfs_clients@split-25@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl10/igt@sysfs_clients@split-25@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][121] ([i915#588]) -> [SKIP][122] ([i915#658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][123] ([i915#1602] / [i915#2411] / [i915#456]) -> [INCOMPLETE][124] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][125] ([i915#658]) -> [SKIP][126] ([i915#2920]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([i915#658]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#602])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1814] / [i915#2295] / [i915#3002]) -> ([FAIL][145], [FAIL][146]) ([i915#2295] / [i915#3002])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl8/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1602] / [i915#2295] / [i915#2667] / [i915#3002])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb5/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb8/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb3/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1970

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/index.html

--===============8953799435106326488==
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
<tr><td><b>Series:</b></td><td>drm/vblank: Avoid storing a timestamp for th=
e same frame twice (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86672/">https://patchwork.freedesktop.org/series/86672/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19701/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9786_full -&gt; Patchwork_19701_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19701_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19701_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19701_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19701/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">I=
NCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19701_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-icl=
b7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-snb7/igt@gem_ctx_persistence@engines-ho=
stile.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-hsw5/igt@gem_ctx_persistence@engines-mi=
xed-process.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1970=
1/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2=
842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/sha=
rd-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-iclb2/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-kbl4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-k=
bl6/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl3/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-skl7/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-kbl1/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@gem_workarounds@suspend-resume=
.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_big_fb@y-tiled-addfb-size-=
overflow.html">SKIP</a> ([fdo#109271]) +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl8/igt@kms_ccs@pipe-c-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-snb7/igt@kms_chamelium@hdmi-frame-dump.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-=
max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_color_chamelium@pipe-c-ctm-=
max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_color_chamelium@pipe-d-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-1=
28x128-onscreen.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19701/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">=
FAIL</a> ([i915#54]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_cursor_edge_walk@pipe-c-25=
6x256-bottom-edge.html">SKIP</a> ([fdo#109271]) +135 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19701/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-lega=
cy.html">FAIL</a> ([i915#96])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19701/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">D=
MESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19701/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@kms_multipipe_modeset@basic-m=
ax-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19701/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-128:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_plane_cursor@pipe-d-overla=
y-size-128.html">SKIP</a> ([fdo#109271] / [i915#533]) +10 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-hsw2/igt@kms_psr@psr2_primary_blt.html"=
>SKIP</a> ([fdo#109271] / [i915#1072]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/sh=
ard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl4/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19701/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INC=
OMPLETE</a> ([i915#198] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +148 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl8/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl3/igt@perf=
@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_micro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-tglb1/igt@prime_nv_pcopy@test1_micro.ht=
ml">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-kbl4/igt@prime_nv_pcopy@test2.html">SKI=
P</a> ([fdo#109271]) +179 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9786/shard-hsw1/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-h=
sw5/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9786/shard-tglb6/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-=
tglb1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-apl6/igt@sysfs_clients@sema-10@vcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-=
apl6/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#30=
26]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl7/igt@sysfs_clients@split-25@vecs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shar=
d-skl10/igt@sysfs_clients@split-25@vecs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19701/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-tglb8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19701/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-glk6/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a>=
 ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19701/shard-glk1/igt@gem_exec_whisper@basic-fds.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19701/shard-skl7/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-hsw4/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> ([i915#2880]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19701/shard-hsw5/igt@i915_module_load@reload-with=
-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-hsw2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</=
a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19701/shard-hsw2/igt@i915_selftest@live@hangcheck.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i=
915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19701/shard-skl4/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19701/shard-skl9/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19701/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-rand=
om.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19701/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html"=
>FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19701/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-=
a1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">INCOMPLETE</a> ([i915#198] / [i915#2295]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl8/igt@kms_flip@flip-=
vs-suspend-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/=
shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a=
> ([i915#146] / [i915#198] / [i915#2828]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19701/shard-skl1/igt@kms_hdr@bpc-switch-=
suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19701/shard-skl3/igt@kms_plane_alpha_blend@=
pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#1=
09441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19701/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19701/shard-apl1/igt@kms_vblank@pipe-c-ts-continuatio=
n-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9786/shard-hsw7/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1970=
1/shard-hsw7/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9786/shard-iclb4/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_197=
01/shard-iclb4/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-apl6/igt@sysfs_clients@sema-10@rcs0.html">SKIP</a> ([fdo=
#109271] / [i915#3026]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19701/shard-apl6/igt@sysfs_clients@sema-10@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-skl7/igt@sysfs_clients@split-25@rcs0.html">SKIP</a> ([fd=
o#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19701/shard-skl10/igt@sysfs_clients@split-25@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19701/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#1602] / [i915#2411] / [i915#456]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb3/igt@kms_fbcon_fbt@fbc-=
suspend.html">INCOMPLETE</a> ([i915#1436] / [i915#1602] / [i915#1887] / [i9=
15#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19701/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-iclb8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9786/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
86/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002]) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-kbl6=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-k=
bl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19701/shard-kbl7/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shar=
d-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19701/shard-kbl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2295] / [=
i915#2505] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9786/shard-apl7/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#=
2295] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19701/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-apl8/igt=
@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#3002])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9786/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9786/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/shard-tglb7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_9786/shard-tglb8/igt@runner@aborted.html">FAIL</a>) ([i915#1602] / [i915#=
2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002]) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/shard-tglb7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19701/shard-tglb3/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1970">FAIL</a=
>, [FAIL][155]) ([i915#1602] / [i915#2295] / [i915#2667] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8953799435106326488==--

--===============0619036179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0619036179==--
