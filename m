Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2BE216369
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 03:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CEC089DFE;
	Tue,  7 Jul 2020 01:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C61889DFE;
 Tue,  7 Jul 2020 01:37:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E149A0099;
 Tue,  7 Jul 2020 01:37:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 07 Jul 2020 01:37:57 -0000
Message-ID: <159408587748.7661.5819079803796945517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706234337.124814-1-jose.souza@intel.com>
In-Reply-To: <20200706234337.124814-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915=3A_Initial_implementa?=
 =?utf-8?q?tion_of_PSR2_selective_fetch?=
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

Series: series starting with [v3,1/2] drm/i915: Initial implementation of PSR2 selective fetch
URL   : https://patchwork.freedesktop.org/series/79172/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18090_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18090_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1930])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk6/igt@gem_exec_whisper@basic-queues-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl2/igt@gem_unfence_active_buffers.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-hsw:          [PASS][11] -> [INCOMPLETE][12] ([i915#151])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw6/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-hsw2/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-gamma:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#71])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_color@pipe-a-gamma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([IGT#6])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_lease@lease-uevent:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1635] / [i915#95]) +19 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@kms_lease@lease-uevent.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl1/igt@kms_lease@lease-uevent.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#1542])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@perf@blocking-parameterized.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-iclb8/igt@perf@blocking-parameterized.html

  * igt@template@b:
    - shard-snb:          [PASS][29] -> [TIMEOUT][30] ([i915#1958] / [i915#2119]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@template@b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-snb5/igt@template@b.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][33] ([i915#1528]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-tglb6/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2110]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][45] ([i915#750]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +16 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][49] ([i915#1185]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-iclb6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][53] ([i915#46]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][55] ([i915#456]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb5/igt@kms_psr@psr2_basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_vblank@pipe-b-query-idle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-skl5/igt@kms_vblank@pipe-b-query-idle.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][69] ([i915#1930]) -> [TIMEOUT][70] ([i915#1958] / [i915#2119])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][71] ([i915#93] / [i915#95]) -> [DMESG-WARN][72] ([i915#180] / [i915#93] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][73] ([i915#588]) -> [SKIP][74] ([i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [fdo#111827]) -> [SKIP][76] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl7/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][78] ([fdo#109271] / [fdo#111827])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@kms_color_chamelium@pipe-d-degamma.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl2/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][79] ([fdo#110321] / [i915#95]) -> [TIMEOUT][80] ([i915#1319] / [i915#1958] / [i915#2119])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_content_protection@atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +10 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [TIMEOUT][84] ([i915#1958] / [i915#2119]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@prime_nv_pcopy@test2:
    - shard-apl:          [SKIP][85] ([fdo#109271] / [i915#1635]) -> [SKIP][86] ([fdo#109271]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@prime_nv_pcopy@test2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl2/igt@prime_nv_pcopy@test2.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][87], [FAIL][88]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> ([FAIL][89], [FAIL][90]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl8/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/shard-apl1/igt@runner@aborted.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8708 -> Patchwork_18090

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18090: 8e71f149e88ee209335866f0af865f4566debc30 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18090/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
