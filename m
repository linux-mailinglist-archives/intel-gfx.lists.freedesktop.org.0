Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D1464434
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 01:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234F16E1D7;
	Wed,  1 Dec 2021 00:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBDC96E1D2;
 Wed,  1 Dec 2021 00:50:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEA9BA0118;
 Wed,  1 Dec 2021 00:50:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5366485086970885433=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 01 Dec 2021 00:50:44 -0000
Message-ID: <163831984480.14896.10997447703932150828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211129233354.101347-1-lyude@redhat.com>
In-Reply-To: <20211129233354.101347-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Perform_30ms_delay_after_source_OUI_write_=28rev3?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5366485086970885433==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Perform 30ms delay after source OUI write (rev3)
URL   : https://patchwork.freedesktop.org/series/96871/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10945_full -> Patchwork_21708_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_21708_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#4525])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#2846])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [PASS][6] -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([i915#768])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1436] / [i915#716])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2521])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3777])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#110723])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3886]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3886])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +26 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_cdclk@mode-transition.html
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#3742])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109278] / [i915#1149])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109274] / [fdo#109278])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109274])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#198])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2122])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109280]) +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +35 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +19 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109289])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#2530])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2994]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@split-10:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][58] ([i915#2846]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][60] ([i915#2842]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][62] ([i915#2842]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl6/igt@i915_module_load@reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl9/igt@i915_module_load@reload.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][66] ([i915#180]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl8/igt@i915_suspend@fence-restore-untiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][68] ([i915#2521]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][70] ([i915#2346]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][72] ([i915#2122]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][74] ([i915#79]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][76] ([i915#2122]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][80] ([fdo#108145] / [i915#265]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb6/igt@kms_psr@psr2_dpms.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180] / [i915#295]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][86] ([i915#1542]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-glk6/igt@perf@polling-parameterized.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk5/igt@perf@polling-parameterized.html
    - shard-skl:          [FAIL][88] ([i915#1542]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl9/igt@perf@polling-parameterized.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl8/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][90] ([i915#51]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl6/igt@perf@short-reads.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl10/igt@perf@short-reads.html

  * igt@sysfs_preempt_timeout@timeout@bcs0:
    - shard-skl:          [FAIL][92] -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl6/igt@sysfs_preempt_timeout@timeout@bcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][94] ([i915#2842]) -> [FAIL][95] ([i915#2852])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][96] ([i915#588]) -> [SKIP][97] ([i915#658])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][98] ([i915#2920]) -> [SKIP][99] ([i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][100] ([i915#658]) -> [SKIP][101] ([i915#2920]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][102] ([i915#4148]) -> [SKIP][103] ([fdo#109642] / [fdo#111068] / [i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602]) -> ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3363] / [i915#4312] / [i915#602])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl4/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl1/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl4/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl6/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl7/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([i915#180] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl6/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl8/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl8/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl5/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl9/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_10945 -> Patchwork_21708

  CI-20190529: 20190529
  CI_DRM_10945: ac459a8e27b90b5010d6e35302c429c1721016a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21708: e7be49d50a574b25f622f5e5066eee5223083333 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c798

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/index.html

--===============5366485086970885433==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Perform 30ms delay after source=
 OUI write (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96871/">https://patchwork.freedesktop.org/series/96871/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21708/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21708/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10945_full -&gt; Patchwork_21708_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21708_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@gem_exec_balancer@parallel-ou=
t-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/sha=
rd-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/sh=
ard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/sh=
ard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21708/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i91=
5#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@gem_render_copy@y-tiled-to-ve=
box-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/s=
hard-skl5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i9=
15#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_cdclk@mode-transition.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_cdclk@mode-transition.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3742=
">i915#3742</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_color@pipe-d-ctm-max.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
8">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-kbl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1708/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#18=
0</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-v=
s-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
4">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/=
shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21708/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible=
@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +35 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-kbl4/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +19 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb7/igt@kms_pipe_b_c_ivb@disable-pipe=
-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21708/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/sh=
ard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@nouveau_crc@pipe-b-ctx-flip-s=
kip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-iclb5/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-skl8/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21708/shard-apl2/igt@sysfs_clients@split-10.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
08/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
708/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21708/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl6/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
708/shard-skl9/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-apl8/igt@i915_suspend@fence-restore-untiled.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21708/shard-apl2/igt@i915_suspend@fence-restore-untiled.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21708/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21708/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-glk9/igt@kms_flip@2x-plain-=
flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21708/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21708/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21708/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptibl=
e@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21708/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage=
-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb6/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard=
-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/295">i915#295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21708/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-su=
spend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10945/shard-glk6/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/=
shard-glk5/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10945/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/=
shard-skl8/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl6/igt@perf@short-reads.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl10/i=
gt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html">FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
08/shard-skl6/igt@sysfs_preempt_timeout@timeout@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#285=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1708/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21708/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg=
-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-iclb2/igt@kms_psr2_su@page_flip.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4148">i915#4148</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/sha=
rd-iclb1/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10945/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10945/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0945/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1094=
5/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#336=
3</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i9=
15#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/60=
2">i915#602</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21708/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl6/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21708/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl4/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21708/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21708/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-kb=
l1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/602">i915#602</a>=
)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10945/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10945/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#431=
2</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21708/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl2/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21708/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21708/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21708/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-apl3/igt@runne=
r@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10945/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10945/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10945/shard-skl9/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3363">i915#3363</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21708/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl5/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21708/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21708/shard-skl9/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3363">i915#3363</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10945 -&gt; Patchwork_21708</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10945: ac459a8e27b90b5010d6e35302c429c1721016a2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21708: e7be49d50a574b25f622f5e5066eee5223083333 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c798</p>

</body>
</html>

--===============5366485086970885433==--
