Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFC2F88F2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 23:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378356E4E6;
	Fri, 15 Jan 2021 22:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 828E86E4DD;
 Fri, 15 Jan 2021 22:56:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B1B8A0BCB;
 Fri, 15 Jan 2021 22:56:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Jan 2021 22:56:15 -0000
Message-ID: <161075137546.28528.18168090116832095828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115092034.8804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210115092034.8804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Set_error_value_before_returning_in_intel=5Fhd?=
 =?utf-8?b?Y3AqX2Rpc2FibGUoKSAocmV2Mik=?=
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
Content-Type: multipart/mixed; boundary="===============0822535495=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0822535495==
Content-Type: multipart/alternative;
 boundary="===============3452026553063181917=="

--===============3452026553063181917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Set error value before returning in intel_hdcp*_disable() (rev2)
URL   : https://patchwork.freedesktop.org/series/85895/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9623_full -> Patchwork_19370_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19370_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-tglb:         NOTRUN -> [SKIP][1] ([i915#1839])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-hsw:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-hsw:          NOTRUN -> [FAIL][3] ([i915#2389]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-tglb:         NOTRUN -> [TIMEOUT][4] ([i915#1729])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#644])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pread@exhaustion:
    - shard-hsw:          NOTRUN -> [WARN][7] ([i915#2658])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([fdo#109312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gen3_render_mixed_blits:
    - shard-hsw:          NOTRUN -> [SKIP][9] ([fdo#109271]) +215 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gen3_render_mixed_blits.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([fdo#109289]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][11] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([fdo#109506] / [i915#2411])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@i915_pm_rpm@pc8-residency.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#109303])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#198])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl1/igt@i915_suspend@debugfs-reader.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl9/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#111614])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-hsw:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#111828])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#2295] / [i915#300])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109279])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#2598])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111825]) +18 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +18 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#1187])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_hdr@static-toggle.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-glk2/igt@kms_psr@sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#198] / [i915#2295])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109291])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@sync@vcs1:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#409])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb6/igt@prime_vgem@sync@vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb1/igt@prime_vgem@sync@vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@waits:
    - shard-tglb:         [INCOMPLETE][44] ([i915#2931]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb7/igt@gem_exec_balancer@waits.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@gem_exec_balancer@waits.html

  * {igt@gem_exec_fair@basic-pace-solo@rcs0}:
    - shard-tglb:         [FAIL][46] ([i915#2842]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-kbl:          [SKIP][48] ([fdo#109271]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy@wb:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-busy@wb.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-glk2/igt@gem_userptr_blits@map-fixed-invalidate-busy@wb.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][52] ([i915#1436] / [i915#716]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][54] ([i915#2574]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][58] ([i915#2346]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][60] ([i915#2346]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][62] ([i915#2598]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-tglb:         [INCOMPLETE][64] ([i915#2411]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][66] ([i915#2122]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][74] ([i915#588]) -> [SKIP][75] ([i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][76] ([i915#2684]) -> [WARN][77] ([i915#1804] / [i915#2684])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][78] ([i915#2681] / [i915#2684]) -> [WARN][79] ([i915#1804] / [i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][80] ([i915#1226]) -> [SKIP][81] ([fdo#109349])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295]) -> ([FAIL][84], [FAIL][85]) ([i915#1814] / [i915#2295] / [i915#2505])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-kbl4/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-kbl1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-kbl6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-kbl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][86], [FAIL][87]) ([i915#1602] / [i915#2295] / [i915#2667]) -> ([FAIL][88], [FAIL][89], [FAIL][90]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#409])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb5/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb8/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          [FAIL][91] ([i915#2295]) -> ([FAIL][92], [FAIL][93]) ([i915#2295] / [i915#2426])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-skl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#111828]: https://bugs.freedesktop.org/show_bug.cgi?id=111828
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1729]: https://gitlab.freedesktop.org/drm/intel/issues/1729
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2931]: https://gitlab.freedesktop.org/drm/intel/issues/2931
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9623 -> Patchwork_19370

  CI-20190529: 20190529
  CI_DRM_9623: efc7d4def21073ad87a4bad7122d5f4109d29781 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19370: c4a29f6811da64cc5fb693936616d4f43621814e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html

--===============3452026553063181917==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Set error value before ret=
urning in intel_hdcp*_disable() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85895/">https://patchwork.freedesktop.org/series/85895/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19370/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19370/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9623_full -&gt; Patchwork_19370_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19370_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@feature_discovery@display-3x.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_ctx_persistence@smoketest.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@gem_exec_reloc@basic-parallel=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1729">i915#1729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1937=
0/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/644">i915#644</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@gem_softpin@evict-snoop-inter=
ruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@gen3_render_mixed_blits.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a>) +215 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-skl3/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#4=
54</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@i915_pm_rpm@pc8-residency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1095=
06">fdo#109506</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl1/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard=
-skl9/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-hsw4/igt@kms_color_chamelium@pipe-a-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_color_chamelium@pipe-d-ct=
m-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-skl3/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_content_protection@atomic=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111828">fdo#111828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
370/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#22=
95</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300">i9=
15#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19370/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19370/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19370/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-to-yf-tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_flip_tiling@flip-to-yf-ti=
led.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +18 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-skl10/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl=
4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_hdr@static-toggle.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1187">i=
915#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/s=
hard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-glk2/igt@kms_psr@sprite_blt.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19370/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19370/shard-tglb3/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291"=
>fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb6/igt@prime_vgem@sync@vcs1.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb1=
/igt@prime_vgem@sync@vcs1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb7/igt@gem_exec_balancer@waits.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2931">i915#2931<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
370/shard-tglb3/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-solo@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19370/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19370/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy@wb:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-busy@wb.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19370/shard-glk2/igt@gem_userptr_blits@map-fixed-invali=
date-busy@wb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#14=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i9=
15#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19370/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#257=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19370/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19370/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.h=
tml">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19370/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19370/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varyin=
g-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19370/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19370/shard-tglb6/igt@kms_flip@flip-vs-suspend-interrup=
tible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19370/shard-skl10/igt@kms_flip@plain-flip-ts-check-interru=
ptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/=
shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19370/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
70/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
370/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19370/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19370/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19370/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19370/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9623/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2667">i915#2667</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
370/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-tglb2/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9623/shard-skl4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/shard-skl6/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19370/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#=
2426</a>)</p>
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
<li>Linux: CI_DRM_9623 -&gt; Patchwork_19370</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9623: efc7d4def21073ad87a4bad7122d5f4109d29781 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19370: c4a29f6811da64cc5fb693936616d4f43621814e @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3452026553063181917==--

--===============0822535495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0822535495==--
