Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 765774A70A0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 13:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A65510EB46;
	Wed,  2 Feb 2022 12:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BE6510EB0E;
 Wed,  2 Feb 2022 12:22:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17E21A00E8;
 Wed,  2 Feb 2022 12:22:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0187040190040047524=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal Suraj" <suraj.kandpal@intel.com>
Date: Wed, 02 Feb 2022 12:22:15 -0000
Message-ID: <164380453506.12659.11632175935470346389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
In-Reply-To: <20220202085429.22261-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?_writeback_connector_changes?=
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

--===============0187040190040047524==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm writeback connector changes
URL   : https://patchwork.freedesktop.org/series/99610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11177_full -> Patchwork_22152_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22152_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22152_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22152_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb8/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb4/igt@i915_selftest@live@evict.html

  
Known issues
------------

  Here are the changes found in Patchwork_22152_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_lmem_swapping@parallel-random-engines.html
    - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#3323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#3323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl4/igt@gem_userptr_blits@sync-unmap-cycles.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1436] / [i915#716])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@i915_pm_dc@dc3co-vpb-simulation.html
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3777]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3777]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +5 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][30] ([i915#1319])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +134 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([i915#180] / [i915#636])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#4911])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +26 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][41] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][42] ([fdo#108145] / [i915#265]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk6/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2437])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen12-mi-rpc:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +55 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@perf@gen12-mi-rpc.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2994])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@sysfs_clients@busy.html
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2994])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@sysfs_clients@busy.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][55] ([i915#2582]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@fbdev@nullptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][57] ([i915#4525]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][59] ([i915#2842]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][61] ([i915#2842]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][63] ([i915#2842]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-dg1}:        [SKIP][65] ([i915#1397]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp-stress.html
    - {shard-rkl}:        [SKIP][67] ([i915#1397]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        ([SKIP][69], [SKIP][70]) ([fdo#109308]) -> [PASS][71]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl8/igt@i915_suspend@forcewake.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-rkl}:        ([SKIP][74], [SKIP][75]) ([i915#1845]) -> [PASS][76] +5 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][77] ([i915#1845]) -> [PASS][78] +16 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][79] ([i915#1845] / [i915#4098]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][81] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-25.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - {shard-rkl}:        [SKIP][83] ([fdo#112022]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - {shard-rkl}:        ([SKIP][85], [SKIP][86]) ([fdo#112022] / [i915#4070]) -> [PASS][87]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - {shard-rkl}:        [SKIP][88] ([fdo#112022] / [i915#4070]) -> [PASS][89] +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - {shard-rkl}:        [SKIP][90] ([i915#1849] / [i915#4070]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][92] ([i915#2346] / [i915#533]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - {shard-rkl}:        [SKIP][94] ([fdo#111825] / [i915#4070]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - {shard-rkl}:        ([SKIP][96], [SKIP][97]) ([fdo#111825] / [i915#4070]) -> [PASS][98]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - {shard-rkl}:        [SKIP][99] ([fdo#111314]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][101] ([i915#79]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +7 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][105] ([i915#2122]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][107] ([i915#3701]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][109] ([i915#4911]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - {shard-rkl}:        [INCOMPLETE][111] ([i915#3701]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][113] ([i915#1849]) -> [PASS][114] +20 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        ([SKIP][115], [SKIP][116]) ([i915#1849] / [i915#4098]) -> [PASS][117] +4 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-hsync-start:
    - {shard-rkl}:        [SKIP][118] ([i915#4278]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-start.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html

  * igt@kms_lease@lease_unleased_connector:
    - shard-snb:          [SKIP][120] ([fdo#109271]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-snb5/igt@kms_lease@lease_unleased_connector.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-snb7/igt@kms_lease@lease_unleased_connector.html

  * igt@kms_lease@lease_unleased_crtc:
    - {shard-rkl}:        ([SKIP][122], [SKIP][123]) ([i915#1845] / [i915#4098]) -> [PASS][124]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_lease@lease_unleased_crtc.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_lease@lease_unleased_crtc.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_lease@lease_unleased_crtc.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - {shard-rkl}:        [SKIP][125] ([i915#3558]) -> [PASS][126] +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - {shard-rkl}:        ([SKIP][127], [SKIP][128]) ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][129] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - {shard-rkl}:        [SKIP][130] ([i915#3558] / [i915#4070]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@sprite_mmap_cpu:
    - {shard-rkl}:        [SKIP][134] ([i915#1072]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - {shard-rkl}:        [SKIP][136] ([i915#1845] / [i915#4070]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][138] ([i915#180] / [i915#295]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][140] ([i915#4525]) -> [FAIL][141] ([i915#4916])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][142] ([i915#2684]) -> [WARN][143] ([i915#1804] / [i915#2684])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][144] ([i915#1804] / [i915#2684]) -> [FAIL][145] ([i915#2680])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@k

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/index.html

--===============0187040190040047524==
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
<tr><td><b>Series:</b></td><td>drm writeback connector changes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99610/">https://patchwork.freedesktop.org/series/99610/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11177_full -&gt; Patchwork_22152_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22152_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22152_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22152_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@evict:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb8/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb4/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22152_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl4/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +134 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl9/igt@perf@gen12-mi-rpc.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html">SKIP</a>) ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-apl8/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-apl8/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a>) ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-start.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_unleased_connector:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-snb5/igt@kms_lease@lease_unleased_connector.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-snb7/igt@kms_lease@lease_unleased_connector.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_unleased_crtc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_lease@lease_unleased_crtc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_lease@lease_unleased_crtc.html">SKIP</a>) ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_lease@lease_unleased_crtc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.html">SKIP</a> ([i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">SKIP</a>) ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">SKIP</a> ([i915#3558] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> ([i915#4916])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11177/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22152/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@k</p>
</li>
</ul>

</body>
</html>

--===============0187040190040047524==--
