Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9821547164A
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 21:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EEA10E753;
	Sat, 11 Dec 2021 20:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9C8910E60E;
 Sat, 11 Dec 2021 20:58:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0F0DAADD4;
 Sat, 11 Dec 2021 20:58:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6899323674636934515=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Date: Sat, 11 Dec 2021 20:58:14 -0000
Message-ID: <163925629489.10521.7323662697712892319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118165914.pckik75emivsilek@linutronix.de>
In-Reply-To: <20211118165914.pckik75emivsilek@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_disable_interrupts_and_pretend_a_lock_as_been_?=
 =?utf-8?b?YWNxdWlyZWQgaW4gX190aW1lbGluZV9tYXJrX2xvY2soKS4gKHJldjIp?=
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

--===============6899323674636934515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock(). (rev2)
URL   : https://patchwork.freedesktop.org/series/97082/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10988_full -> Patchwork_21828_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21828_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#280])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb7/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][5] ([i915#198] / [i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl7/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][6] -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][15] -> [SKIP][16] ([i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@gem_lmem_swapping@verify.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3777])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3777])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +116 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][27] ([i915#2105])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2346])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][30] -> [INCOMPLETE][31] ([i915#180] / [i915#1982])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([i915#180] / [i915#636])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][34] -> [INCOMPLETE][35] ([i915#636])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#198])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([i915#3701])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
    - shard-apl:          NOTRUN -> [DMESG-WARN][42] ([i915#1226])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl6/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271]) +42 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +88 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][51] ([i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][52] ([i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2437])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#1542])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/igt@perf@polling-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk3/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          [INCOMPLETE][62] ([i915#4547]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl7/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][64] ([i915#2842]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][66] ([fdo#109271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [FAIL][68] ([i915#2842]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-rkl}:        [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][72] ([i915#2849]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][74] ([i915#118]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][76] ([i915#3012]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][78] ([i915#1397]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][80] ([i915#3921]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - {shard-rkl}:        [SKIP][82] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-75.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][84] ([fdo#112022] / [i915#4070]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - {shard-rkl}:        ([SKIP][86], [SKIP][87]) ([fdo#112022] / [i915#4070]) -> [PASS][88]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - {shard-rkl}:        [SKIP][89] ([fdo#111825] / [i915#4070]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][91] ([i915#2346] / [i915#533]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - {shard-rkl}:        ([SKIP][93], [SKIP][94]) ([fdo#111825] / [i915#4070]) -> [PASS][95]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - {shard-rkl}:        ([SKIP][96], [SKIP][97]) ([fdo#111314] / [i915#4098]) -> [PASS][98]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - {shard-rkl}:        [SKIP][99] ([fdo#111314]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][105] ([i915#2122]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][107] ([i915#1849]) -> [PASS][108] +20 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - {shard-rkl}:        ([SKIP][109], [SKIP][110]) ([i915#1849] / [i915#4098]) -> [PASS][111] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][112] ([i915#4098]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - {shard-rkl}:        ([SKIP][114], [SKIP][115]) ([i915#4278]) -> [PASS][116]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-end.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-end.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - {shard-rkl}:        [SKIP][117] ([i915#4278]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_invalid_mode@zero-vdisplay.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_lease@lease_unleased_crtc:
    - {shard-rkl}:        ([SKIP][119], [SKIP][120]) ([i915#1845] / [i915#4098]) -> [PASS][121]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_lease@lease_unleased_crtc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_lease@lease_unleased_crtc.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_lease@lease_unleased_crtc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][122] ([i915#1849] / [i915#4070]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - {shard-rkl}:        [SKIP][124] ([i915#1845]) -> [PASS][125] +22 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - {shard-rkl}:        ([SKIP][126], [SKIP][127]) ([i915#3558] / [i915#4070]) -> [PASS][128]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr@primary_blt:
    - {shard-rkl}:        [SKIP][129] ([i915#1072]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_psr@primary_blt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][133] ([i915#31]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_setmode@basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][135] ([i915#31]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/igt@kms_setmode@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset:
    - {shard-rkl}:        ([SKIP][137], [SKIP][138]) ([i915#1845]) -> [PASS][139] +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][140] ([i915#180] / [i915#295]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][142] ([i915#1982] / [i915#262]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@perf_pmu@module-unload.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][144] ([i915#1804] / [i915#2684]) -> [WARN][145] ([i915#2684])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [DMESG-WARN][146] ([i915#180]) -> [INCOMPLETE][147] ([i915#3614])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][148] ([i915#2920]) -> [SKIP][149] ([i915#658]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/index.html

--===============6899323674636934515==
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
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t disable interrupts and pretend a lock as been acquired in __timeline_mark_lock(). (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97082/">https://patchwork.freedesktop.org/series/97082/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10988_full -&gt; Patchwork_21828_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21828_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@gem_ctx_persistence@engines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb7/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl7/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#198] / [i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@gem_lmem_swapping@verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_chamelium@hdmi-audio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_color_chamelium@pipe-b-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#1982])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl6/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl7/igt@gem_exec_capture@pi@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-75.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a>) ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +4 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>) ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_unleased_crtc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_lease@lease_unleased_crtc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_lease@lease_unleased_crtc.html">SKIP</a>) ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_lease@lease_unleased_crtc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-x:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html">SKIP</a>) ([i915#3558] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_psr@primary_blt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_psr@primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl7/igt@kms_setmode@basic.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-glk1/igt@kms_setmode@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_vblank@pipe-a-ts-continuation-modeset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-modeset.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-skl10/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">INCOMPLETE</a> ([i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21828/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/">FAIL</a>, [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312]) -&gt; ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6899323674636934515==--
