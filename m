Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C92422EBAF7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 09:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3759089D4D;
	Wed,  6 Jan 2021 08:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57C3A89D4B;
 Wed,  6 Jan 2021 08:13:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 481C5A363D;
 Wed,  6 Jan 2021 08:13:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 06 Jan 2021 08:13:08 -0000
Message-ID: <160992078826.18709.7426640768404223775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105051353.5714-1-anshuman.gupta@intel.com>
In-Reply-To: <20210105051353.5714-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pps=3A_Add_PPS_power_domain_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0744940194=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0744940194==
Content-Type: multipart/alternative;
 boundary="===============0785318621137259402=="

--===============0785318621137259402==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pps: Add PPS power domain (rev2)
URL   : https://patchwork.freedesktop.org/series/85470/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9548_full -> Patchwork_19267_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19267_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19267_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19267_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-apl4/igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-apl8/igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_19267_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][3] ([i915#768])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
    - shard-skl:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1699]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl6/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#198]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl6/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl5/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#1149] / [i915#315])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-max.html
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@legacy:
    - shard-glk:          NOTRUN -> [SKIP][12] ([fdo#109271]) +26 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk3/igt@kms_content_protection@legacy.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][13] ([i915#1319])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#109278] / [fdo#109279])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#2295] / [i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][19] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +75 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2346])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109274])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109280])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +34 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl2/igt@kms_hdr@bpc-switch.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#1187])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#533])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][34] ([fdo#108145] / [i915#265])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][37] ([IGT#2])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2437])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-mi-rpc:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109289])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@perf@gen12-mi-rpc.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#1542])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl2/igt@perf@polling-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl7/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109291])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][44] ([fdo#109271]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none-vip@rcs0}:
    - shard-glk:          [FAIL][46] ([i915#2842]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-apl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-tglb:         [FAIL][50] ([i915#2842]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-iclb:         [FAIL][52] ([i915#2842]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs1}:
    - shard-kbl:          [FAIL][54] ([i915#2842]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-kbl:          [SKIP][56] ([fdo#109271]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-glk:          [DMESG-WARN][58] ([i915#1610]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@vcs1}:
    - shard-kbl:          [DMESG-WARN][60] ([i915#1610] / [i915#2803]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl3/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-iclb:         [INCOMPLETE][62] ([i915#2461]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_userptr_blits@userfault:
    - shard-skl:          [INCOMPLETE][64] -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl3/igt@gem_userptr_blits@userfault.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl6/igt@gem_userptr_blits@userfault.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][66] ([i915#151] / [i915#1982]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - shard-skl:          [DMESG-FAIL][68] ([i915#2634]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][70] ([i915#1982]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][72] ([i915#54]) -> [PASS][73] +12 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][74] ([i915#2405] / [i915#300]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][76] ([i915#79]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][78] ([i915#49]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][80] ([i915#1188]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][84] ([fdo#109441]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@perf@non-zero-reason}:
    - shard-iclb:         [FAIL][86] ([i915#2804]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb2/igt@perf@non-zero-reason.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb2/igt@perf@non-zero-reason.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][88] ([i915#2681] / [i915#2684]) -> [WARN][89] ([i915#1804] / [i915#2684])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][90], [FAIL][91]) ([i915#2295] / [i915#2426] / [i915#2505] / [i915#483]) -> ([FAIL][92], [FAIL][93], [FAIL][94]) ([i915#2295] / [i915#2505] / [i915#483])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl1/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][95], [FAIL][96]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> [FAIL][97] ([i915#2295] / [i915#483] / [k.org#202321])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk2/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][98], [FAIL][99], [FAIL][100]) ([i915#1436] / [i915#2295] / [i915#483]) -> [FAIL][101] ([i915#2295])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl3/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl6/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2461]: https://gitlab.freedesktop.org/drm/intel/issues/2461
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2634]: https://gitlab.freedesktop.org/drm/intel/issues/2634
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2804]: https://gitlab.freedesktop.org/drm/intel/issues/2804
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9548 -> Patchwork_19267

  CI-20190529: 20190529
  CI_DRM_9548: 93efa2366af7640d75a63666f790521f3747b808 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5944: e230cd8d481ea28ccc11b554d7a34ffca003fb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19267: 1adba2ece40dcf1615848dbc7a0d186adfbe8030 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html

--===============0785318621137259402==
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
<tr><td><b>Series:</b></td><td>drm/i915/pps: Add PPS power domain (rev2)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85470/">https://patchwork.freedesktop.org/series/85470/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19267/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19267/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9548_full -&gt; Patchwork_19267_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19267_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19267_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19267_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-apl4/igt@kms_atomic_transition@plane-all-modeset-transit=
ion@dp-1-pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-apl8/igt@kms_atomic_transition@plane-al=
l-modeset-transition@dp-1-pipe-b.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19267_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@gem_render_copy@y-tiled-to-ve=
box-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@uc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl6/igt@gem_userptr_blits@process-exit=
-mmap-busy@uc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-s=
kl8/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl5/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_color@pipe-a-ctm-0-25.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/114=
9">i915#1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/315">i915#315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_color_chamelium@pipe-a-ct=
m-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-=
max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19267/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm-=
max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19267/shard-glk3/igt@kms_content_protection@legacy.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1319">i915#1319</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
267/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#22=
95</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300">i9=
15#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19267/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-6=
4x21-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19267/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_flip@2x-flip-vs-dpms-off-=
vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/sh=
ard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-kbl3/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl2/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-skl7/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1187">i915#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19267/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/=
shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@kms_vblank@pipe-d-ts-continua=
tion-modeset-rpm.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@perf@gen12-mi-rpc.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#=
109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-=
skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19267/shard-iclb4/igt@prime_nv_api@i915_nv_reimport=
_twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19267/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-vip@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19267/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
67/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
267/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
267/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
67/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19267/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19267/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19267/shard-kbl3/igt@gem_exec_schedule@u-fairslice@vcs1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2461">i915#2461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19267/shard-iclb4/igt@gem_exec_whisper@basic-contexts-priori=
ty.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@userfault:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl3/igt@gem_userptr_blits@userfault.html">INCOMPLETE</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267=
/shard-skl6/igt@gem_userptr_blits@userfault.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
82">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19267/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2634">i915#2634</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_async_flips@async-flip-with-=
page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9267/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19267/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen=
.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405=
">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19267/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19267/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-in=
dfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19267/shard-skl3/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/=
shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19267/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage=
-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
67/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>{igt@perf@non-zero-reason}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb2/igt@perf@non-zero-reason.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2804">i915#2804</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/sha=
rd-iclb2/igt@perf@non-zero-reason.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19267/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9267/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-glk2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://bugzilla.kernel.org/show=
_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19267/shard-glk7/igt@runner@aborted.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">=
i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=
=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9548/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9548/shard-skl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/shard=
-skl8/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2295">i915#2295</a>)</p>
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
<li>Linux: CI_DRM_9548 -&gt; Patchwork_19267</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9548: 93efa2366af7640d75a63666f790521f3747b808 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5944: e230cd8d481ea28ccc11b554d7a34ffca003fb25 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19267: 1adba2ece40dcf1615848dbc7a0d186adfbe8030 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0785318621137259402==--

--===============0744940194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0744940194==--
