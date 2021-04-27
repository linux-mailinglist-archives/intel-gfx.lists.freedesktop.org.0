Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C60A136BE1D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 06:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8D76E8F3;
	Tue, 27 Apr 2021 04:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F3696E8F2;
 Tue, 27 Apr 2021 04:10:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 843F5A00CC;
 Tue, 27 Apr 2021 04:10:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Tue, 27 Apr 2021 04:10:53 -0000
Message-ID: <161949665351.17486.623505943967374205@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426152420.359402-1-kai.heng.feng@canonical.com>
In-Reply-To: <20210426152420.359402-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Invoke_another_=5FDSM_to_enable_MUX_on_HP_Workstation_?=
 =?utf-8?q?laptops?=
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
Content-Type: multipart/mixed; boundary="===============1126425412=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1126425412==
Content-Type: multipart/alternative;
 boundary="===============1749020486987793302=="

--===============1749020486987793302==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Invoke another _DSM to enable MUX on HP Workstation laptops
URL   : https://patchwork.freedesktop.org/series/89503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10011_full -> Patchwork_19994_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19994_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-close-race:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1895])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb3/igt@gem_ctx_exec@basic-close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@gem_ctx_exec@basic-close-race.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][4] ([i915#3316])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@gem_ctx_ringsize@idle@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([i915#2369] / [i915#3063])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +87 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][10] -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][14] ([i915#2389])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +81 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#3324])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][21] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271]) +193 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][24] -> [INCOMPLETE][25] ([i915#636])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl6/igt@i915_suspend@forcewake.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][30] ([i915#1319]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][31] ([i915#2105])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#54])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#155] / [i915#180] / [i915#636])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180] / [i915#533])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][44] ([fdo#108145] / [i915#265]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][46] ([fdo#108145] / [i915#265]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2733])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#658]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][53] ([IGT#2])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2437])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2437])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +188 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2994]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-1:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1731])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#3259])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl4/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html

  
#### Possible fixes ####

  * igt@gem_create@create-clear:
    - shard-glk:          [FAIL][66] ([i915#1888] / [i915#3160]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-glk3/igt@gem_create@create-clear.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-glk7/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][68] ([i915#2410]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [INCOMPLETE][70] ([i915#3316]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][72] ([i915#2846]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [FAIL][74] ([i915#2846]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][78] ([fdo#109271]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-tglb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][82] ([i915#118] / [i915#95]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-glk4/igt@gem_exec_whisper@basic-normal-all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-glk1/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][84] ([i915#307]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][86] ([i915#2428]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][88] ([i915#198]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl6/igt@i915_selftest@mock@requests.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk:          [FAIL][90] -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-glk6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +5 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][94] ([i915#2346]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][96] ([i915#2122]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][98] ([i915#1982]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][104] ([i915#1542]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb5/igt@perf@polling-parameterized.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][106] ([i915#2681] / [i915#2684]) -> [WARN][107] ([i915#1804] / [i915#2684])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][108] ([i915#2684]) -> [WARN][109] ([i915#1804] / [i915#2684])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][110] ([i915#1226]) -> [SKIP][111] ([fdo#109349])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][112] ([i915#2920]) -> [SKIP][113] ([i915#658]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][114] ([i915#658]) -> [SKIP][115] ([i915#2920]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#3002] / [i915#602]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#92])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1814] / [i915#3002]) -> ([FAIL][142], [FAIL][143]) ([i915#3002])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-apl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-apl8/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2722] / [i915#3002]) -> ([FAIL][150], [FAIL][151], [FAIL][152]) ([i915#2029] / [i915#3002])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl9/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl9/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/index.html

--===============1749020486987793302==
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
<tr><td><b>Series:</b></td><td>drm/i915: Invoke another _DSM to enable MUX =
on HP Workstation laptops</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89503/">https://patchwork.freedesktop.org/series/89503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19994/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19994/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10011_full -&gt; Patchwork_19994_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19994_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-close-race:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb3/igt@gem_ctx_exec@basic-close-race.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/s=
hard-iclb2/igt@gem_ctx_exec@basic-close-race.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1895">i915#1895</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@gem_ctx_ringsize@idle@bcs0.htm=
l">INCOMPLETE</a> ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/sh=
ard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
94/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994=
/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#307]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl8/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@gem_workarounds@suspend-resume=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-snb2/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +193 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl6/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl=
3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-snb2/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl8/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_content_protection@uevent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-1=
28x42-offscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#636]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19994/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible=
@c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19994/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interr=
uptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19994/shard-iclb7/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-pri-shrfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl3/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19994/shard-kbl7/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-iclb=
4/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19994/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl3/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +188 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-apl7/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-kbl1/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19994/shard-skl1/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9994/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a=
>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl4/igt@sysfs_timeslice_duration@timeout@vcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19994/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html">FAIL</a> (=
[i915#3259])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-glk3/igt@gem_create@create-clear.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / =
[i915#3160]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19994/shard-glk7/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19994/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE<=
/a> ([i915#3316]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19994/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10011/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19994/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10011/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19994/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19994/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10011/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9994/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 similar=
 issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10011/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19994/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-glk4/igt@gem_exec_whisper@basic-normal-all.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19994/shard-glk1/igt@gem_exec_whisper@basic-normal-all.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (=
[i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19994/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</=
a> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19994/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl6/igt@i915_selftest@mock@requests.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#19=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19994/shard-skl8/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19994/shard-glk6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19994/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PA=
SS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19994/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19994/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19994/shard-skl6/igt@kms_flip@flip-vs-suspend-interrupt=
ible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/sh=
ard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19994/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb5/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1999=
4/shard-iclb2/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2681] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19994/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1804">i915#1804</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19994/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i=
915#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19994/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19994/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html">=
SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19994/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10011/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10011/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0011/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1001=
1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">=
i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2292">i915#2292</a> / [i915#3002] / [i915#602]) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl4/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19994/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-kb=
l7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19994/shard-kbl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19994/shard-kbl2/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19994/shard-kbl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994=
/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002]=
 / [i915#92])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10011/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1999=
4/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19994/shard-apl1/igt@runner@aborted.html=
">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10011/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10011/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10011/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/shard-skl2/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2029">i915#2029</a> / [i915#2722] / [i915#3002]) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19994/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19994/shard-skl2/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2029">i915#2029</a> / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============1749020486987793302==--

--===============1126425412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1126425412==--
