Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986C52E7D46
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 00:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398EE8914B;
	Wed, 30 Dec 2020 23:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7876B89193;
 Wed, 30 Dec 2020 23:55:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7117DA7DFF;
 Wed, 30 Dec 2020 23:55:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 23:55:01 -0000
Message-ID: <160937250143.26067.15926388611716795123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201230202309.23982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201230202309.23982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Track_pm=5Fqos_per_connector_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0853196792=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0853196792==
Content-Type: multipart/alternative;
 boundary="===============7400408404621865113=="

--===============7400408404621865113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Track pm_qos per connector (rev2)
URL   : https://patchwork.freedesktop.org/series/85333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9534_full -> Patchwork_19233_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19233_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-queued:
    - shard-hsw:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@gem_ctx_persistence@engines-queued.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][2] ([i915#2389])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl5/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk4/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][7] -> [SKIP][8] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271]) +20 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl4/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#1037] / [i915#2268])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb8/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb2/igt@i915_selftest@live@execlists.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#2521])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][17] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
    - shard-hsw:          NOTRUN -> [SKIP][18] ([fdo#109271]) +18 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2346])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#2055])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#533])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180] / [i915#533])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#165] / [i915#180] / [i915#2621] / [i915#78])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109642] / [fdo#111068])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#1542])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl6/igt@perf@blocking.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl10/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#1542])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk3/igt@perf@polling-parameterized.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk6/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@replace@rcs0:
    - shard-skl:          [FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl3/igt@gem_ctx_persistence@replace@rcs0.html

  * {igt@gem_exec_fair@basic-deadline}:
    - shard-tglb:         [FAIL][40] ([i915#2846]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb8/igt@gem_exec_fair@basic-deadline.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb5/igt@gem_exec_fair@basic-deadline.html

  * {igt@gem_exec_fair@basic-flow@rcs0}:
    - shard-tglb:         [FAIL][42] ([i915#2842]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-none-vip@rcs0}:
    - shard-iclb:         [FAIL][44] ([i915#2842]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb5/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-iclb8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-kbl:          [FAIL][46] ([i915#2842]) -> [PASS][47] +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-kbl:          [SKIP][48] ([fdo#109271]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][50] ([i915#1519]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][52] ([i915#2597]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [FAIL][54] ([i915#54]) -> [PASS][55] +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [FAIL][56] ([i915#2346]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][58] ([i915#2055]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][60] ([i915#198]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][62] ([i915#2122]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][64] ([i915#1188]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb5/igt@kms_psr@psr2_dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [FAIL][68] ([i915#1731]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [INCOMPLETE][70] ([i915#1436] / [i915#1798] / [i915#1982] / [i915#456]) -> [INCOMPLETE][71] ([i915#1436] / [i915#1798] / [i915#1982])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [DMESG-WARN][72] ([i915#1602]) -> [INCOMPLETE][73] ([i915#155])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][74] ([i915#155]) -> [DMESG-WARN][75] ([i915#1602])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][76], [FAIL][77]) ([i915#1814] / [i915#2295] / [i915#483]) -> ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#1814] / [i915#2295] / [i915#483] / [i915#602])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@runner@aborted.html
    - shard-glk:          ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295] / [k.org#202321]) -> ([FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87]) ([i915#1814] / [i915#2295] / [i915#2426] / [k.org#202321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk9/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk5/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk8/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][88], [FAIL][89]) ([i915#1814] / [i915#2029] / [i915#2295]) -> ([FAIL][90], [FAIL][91]) ([i915#2029] / [i915#2295])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl10/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1798]: https://gitlab.freedesktop.org/drm/intel/issues/1798
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2621]: https://gitlab.freedesktop.org/drm/intel/issues/2621
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#2804]: https://gitlab.freedesktop.org/drm/intel/issues/2804
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9534 -> Patchwork_19233

  CI-20190529: 20190529
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19233: a7992ba281fa1ed68959996728a37230f6614097 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html

--===============7400408404621865113==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Track pm_qos per connector (rev=
2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85333/">https://patchwork.freedesktop.org/series/85333/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19233/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19233/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9534_full -&gt; Patchwork_19233_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19233_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-queued:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@gem_ctx_persistence@engines-qu=
eued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl5/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-s=
kl5/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk2/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/sha=
rd-glk4/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-skl4/igt@gem_render_copy@yf-tiled-to-ve=
box-linear.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb8/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/sha=
rd-tglb2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19233/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-s=
kl2/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-2=
56x85-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19233/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19233/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#23=
46</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtil=
ed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19233/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-=
xtiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1923=
3/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19233/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19233/shard-kbl2/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/=
shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2621">i915#26=
21</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">i91=
5#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-ic=
lb8/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl6/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-skl10/igt@per=
f@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-=
glk6/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@replace@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html">FAIL</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/=
shard-skl3/igt@gem_ctx_persistence@replace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-deadline}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
33/shard-tglb5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-flow@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
233/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-vip@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb5/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19233/shard-iclb8/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
33/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9233/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9233/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19233/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19233/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html"=
>PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19233/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-varying-=
size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vg=
a1-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2055">i915#2055</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19233/shard-hsw6/igt@kms_flip@2x-flip-vs-sus=
pend-interruptible@bc-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19233/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19233/shard-skl1/igt@kms_flip@plain-flip-ts-check-interrup=
tible@c-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/sha=
rd-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb5/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-=
iclb2/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19233/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1798">i915#1798</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/456">i915#456</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-tglb8/igt@kms_p=
lane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1798">i91=
5#1798</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9534/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pip=
e-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1602">i915#1602</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19233/shard-kbl3/igt@kms_plane@plane-panning=
-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/155">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19233/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-dp=
ms-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/s=
hard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19233/shard-kbl2/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">=
i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/483">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9534/shard-glk1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233=
/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk8/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
233/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19233/shard-glk2/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2426">i915#2426</a> / <a href=3D"https://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl10/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19233/shard-skl8/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1923=
3/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9534 -&gt; Patchwork_19233</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19233: a7992ba281fa1ed68959996728a37230f6614097 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7400408404621865113==--

--===============0853196792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0853196792==--
