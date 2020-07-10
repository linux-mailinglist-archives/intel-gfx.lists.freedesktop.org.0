Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F8321BAE9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 18:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A29A6EC83;
	Fri, 10 Jul 2020 16:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0877E6E25F;
 Fri, 10 Jul 2020 16:30:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00BA9A47DB;
 Fri, 10 Jul 2020 16:30:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jul 2020 16:29:59 -0000
Message-ID: <159439859999.20497.13748319686412782140@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200710120717.32484-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Be_defensive_in_the_face_of_false_CS_events_=28rev5?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Be defensive in the face of false CS events (rev5)
URL   : https://patchwork.freedesktop.org/series/79340/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8726_full -> Patchwork_18132_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18132_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#93] / [i915#95]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl3/igt@gem_exec_params@invalid-fence-in.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl6/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_concurrent@pipe-a:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@kms_concurrent@pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb7/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#95]) +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-glk3/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-glk9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl3/igt@kms_hdr@bpc-switch.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl2/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sw_sync@sync_busy_fork_unixsocket:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#402])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@sw_sync@sync_busy_fork_unixsocket.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb1/igt@sw_sync@sync_busy_fork_unixsocket.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - shard-apl:          [DMESG-WARN][27] ([i915#1635] / [i915#95]) -> [PASS][28] +14 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@gem_ctx_param@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl8/igt@gem_ctx_param@basic.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][29] ([i915#2079]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl3/igt@gem_exec_balancer@bonded-early.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl1/igt@gem_exec_balancer@bonded-early.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][31] ([i915#402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb2/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [DMESG-WARN][33] ([i915#42]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-snb6/igt@i915_suspend@forcewake.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-snb6/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - shard-kbl:          [DMESG-WARN][37] ([i915#165]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl2/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl2/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@prime_busy@hang-wait@bcs0:
    - shard-hsw:          [INCOMPLETE][45] ([i915#409]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-hsw6/igt@prime_busy@hang-wait@bcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-hsw4/igt@prime_busy@hang-wait@bcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [FAIL][47] ([i915#1930]) -> [FAIL][48] ([i915#1635] / [i915#1930])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          [SKIP][49] ([fdo#109271] / [i915#1699]) -> [SKIP][50] ([fdo#109271] / [i915#1635] / [i915#1699]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@gem_userptr_blits@process-exit-mmap@wb.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl1/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          [SKIP][51] ([fdo#109271] / [i915#658]) -> [SKIP][52] ([fdo#109271] / [i915#1635] / [i915#658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          [SKIP][53] ([fdo#109271] / [fdo#111827]) -> [SKIP][54] ([fdo#109271] / [fdo#111827] / [i915#1635]) +85 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][55] ([fdo#110321] / [fdo#110336]) -> [FAIL][56] ([fdo#110321] / [fdo#110336] / [i915#1635]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][57] ([fdo#110321]) -> [FAIL][58] ([fdo#110321] / [i915#1635]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@kms_content_protection@lic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          [FAIL][59] ([i915#2105]) -> [FAIL][60] ([i915#1635] / [i915#2105])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl1/igt@kms_content_protection@uevent.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [DMESG-WARN][62] ([i915#180] / [i915#93] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][63] ([i915#1525]) -> [FAIL][64] ([i915#1525] / [i915#1635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][65] ([i915#1602] / [i915#1887] / [i915#456]) -> [DMESG-WARN][66] ([i915#1602] / [i915#1887])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [FAIL][68] ([fdo#108145] / [i915#1635] / [i915#265]) +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          [FAIL][69] ([i915#265]) -> [FAIL][70] ([i915#1635] / [i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [FAIL][72] ([i915#1635] / [i915#31])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl6/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          [FAIL][73] ([IGT#2]) -> [FAIL][74] ([IGT#2] / [i915#1635])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@kms_sysfs_edid_timing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          [SKIP][75] ([fdo#109271]) -> [SKIP][76] ([fdo#109271] / [i915#1635]) +852 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@kms_vblank@pipe-d-ts-continuation-idle.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl4/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@perf@blocking-parameterized:
    - shard-apl:          [FAIL][77] ([i915#1542]) -> [FAIL][78] ([i915#1542] / [i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl6/igt@perf@blocking-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl6/igt@perf@blocking-parameterized.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][79], [FAIL][80]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][81] ([i915#1635] / [i915#2110])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86]) ([i915#2110] / [i915#2150]) -> ([FAIL][87], [FAIL][88]) ([i915#1764] / [i915#2110] / [i915#2150])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb8/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb2/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb3/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/shard-tglb1/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2150]: https://gitlab.freedesktop.org/drm/intel/issues/2150
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8726 -> Patchwork_18132

  CI-20190529: 20190529
  CI_DRM_8726: 723780498c9dd2f58b80e6b9daeaa5cd08ec8e7a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18132: 3e4336b168680f261d8bcc7f38beebffeb5c22c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18132/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
