Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0CE519D51
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 12:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F38610F299;
	Wed,  4 May 2022 10:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11C5B10F299;
 Wed,  4 May 2022 10:49:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FBA1A66C8;
 Wed,  4 May 2022 10:49:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3251042296421482947=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 04 May 2022 10:49:44 -0000
Message-ID: <165166138402.677.901966189778769260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651569697.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_CEA_data_block_iterators=2C_and_more_=28rev3=29?=
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

--===============3251042296421482947==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: CEA data block iterators, and more (rev3)
URL   : https://patchwork.freedesktop.org/series/102703/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11595_full -> Patchwork_102703v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102703v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102703v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102703v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl1/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_flink_race@flink_close:
    - {shard-tglu}:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-tglu-3/igt@gem_flink_race@flink_close.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-tglu-3/igt@gem_flink_race@flink_close.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][5] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-dg1-17/igt@i915_pm_rpm@system-suspend-devices.html

  
Known issues
------------

  Here are the changes found in Patchwork_102703v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#658])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@feature_discovery@psr2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@feature_discovery@psr2.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#3063])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][14] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-snb:          [PASS][17] -> [SKIP][18] ([fdo#109271]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#112283])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#5286])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-snb5/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl7/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271]) +20 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278] / [fdo#109279])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#5691])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109274] / [fdo#109278])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#2122])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#2122]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +125 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +16 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109280]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-apl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl3/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
    - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#4939])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +64 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_psr@psr2_primary_mmap_cpu.html
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#2437])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_writeback@writeback-check-output.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109291])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2994])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@drm_buddy@all@buddy_alloc_smoke:
    - shard-skl:          [INCOMPLETE][64] ([i915#5800]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl4/igt@drm_buddy@all@buddy_alloc_smoke.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl9/igt@drm_buddy@all@buddy_alloc_smoke.html

  * igt@gem_ctx_persistence@engines-hostile@vecs0:
    - shard-apl:          [FAIL][66] -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-apl1/igt@gem_ctx_persistence@engines-hostile@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@gem_ctx_persistence@engines-hostile@vecs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][68] ([i915#2410]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][70] ([i915#4547] / [i915#5871]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][72] ([i915#4525]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][74] ([i915#2842]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-snb:          [SKIP][80] ([fdo#109271]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-snb2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][82] ([i915#2190]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_offset@close-race:
    - {shard-rkl}:        [INCOMPLETE][84] ([i915#5080]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-5/igt@gem_mmap_offset@close-race.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@gem_mmap_offset@close-race.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][86] ([i915#5566] / [i915#716]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][88] ([i915#454]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][90] ([i915#3921]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][92] ([i915#2521]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - {shard-rkl}:        [SKIP][94] ([i915#1845] / [i915#4098]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        [SKIP][98] ([fdo#112022] / [i915#4070]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][100] ([i915#5713]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-skl:          [FAIL][102] ([i915#2346]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        [SKIP][104] ([fdo#111825] / [i915#4070]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - {shard-rkl}:        [SKIP][106] ([i915#4098] / [i915#4369]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_draw_crc@fill-fb:
    - {shard-rkl}:        [SKIP][108] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-2/igt@kms_draw_crc@fill-fb.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][110] ([i915#79]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][114] ([i915#3701]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][116] ([i915#1849] / [i915#4098]) -> [PASS][117] +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - {shard-rkl}:        [SKIP][118] ([i915#4278]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-4/igt@kms_invalid_mode@zero-vdisplay.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][120] ([i915#4939]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][122] ([fdo#108145] / [i915#265]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [SKIP][124] ([i915#5176]) -> [PASS][125] +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][126] ([i915#5235]) -> [PASS][127] +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][130] ([i915#5519]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - {shard-rkl}:        [SKIP][132] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-rkl-5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][134] ([i915#5639]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-skl9/igt@perf@polling-parameterized.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-skl9/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [DMESG-WARN][136] ([i915#5614]) -> [SKIP][137] ([i915#4525])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][138] ([i915#4525]) -> [DMESG-WARN][139] ([i915#5614])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:
    - shard-iclb:         [SKIP][140] ([fdo#109278] / [fdo#109279] / [i915#1888]) -> [SKIP][141] ([fdo#109278] / [fdo#109279])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][142] ([i915#180] / [i915#1982]) -> [FAIL][143] ([i915#4767])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [INCOMPLETE][144] ([i915#180]) -> [FAIL][145] ([i915#4767])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-2-downscale-with-rotation:
    - shard-glk:          [SKIP][146] ([fdo#109271] / [i915#1888]) -> [SKIP][147] ([fdo#109271])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-glk2/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-2-downscale-with-rotation.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-glk1/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-2-downscale-with-rotation.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][148] ([i915#2920]) -> [SKIP][149] ([fdo#111068] / [i915#658])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][150] ([fdo#111068] / [i915#658]) -> [SKIP][151] ([i915#2920])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl4/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl4/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl7/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl7/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5713]: https://gitlab.freedesktop.org/drm/intel/issues/5713
  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
  [i915#5871]: https://gitlab.freedesktop.org/drm/intel/issues/5871
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11595 -> Patchwork_102703v3

  CI-20190529: 20190529
  CI_DRM_11595: 39f10ae27121125b412db10366fdb066c00d17e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102703v3: 39f10ae27121125b412db10366fdb066c00d17e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/index.html

--===============3251042296421482947==
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
<tr><td><b>Series:</b></td><td>drm/edid: CEA data block iterators, and more=
 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102703/">https://patchwork.freedesktop.org/series/102703/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102703v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102703v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11595_full -&gt; Patchwork_102703v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102703v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_102703v3_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102703v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703=
v3/shard-skl1/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-tglu-3/igt@gem_flink_race@flink_close.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/=
shard-tglu-3/igt@gem_flink_race@flink_close.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-dg1-17/igt@i915_pm_rpm@system-suspen=
d-devices.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102703v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard=
-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703=
v3/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02703v3/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3=
/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703=
v3/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102703v3/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@gen9_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_ccs@pipe-b-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-snb5/igt@kms_chamelium@dp-audio-edid=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_chamelium@vga-hpd-for-e=
ach-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@kms_color_chamelium@pipe-d-=
ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-apl7/igt@kms_color_chamelium@pipe-d-=
degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-snb5/igt@kms_cursor_crc@pipe-a-curso=
r-256x85-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_crc@pipe-a-curs=
or-512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_cursor_crc@pipe-c-curso=
r-512x170-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5691">i915#5691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_crc@pipe-d-curs=
or-dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109278">fdo#109278</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_flip@flip-vs-expired-vb=
lank@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102703v3/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl10/igt@kms_flip@plain-flip-ts-che=
ck-interruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@b-h=
dmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102703v3/shard-glk5/igt@kms_flip@plain-flip-ts-check-interru=
ptible@b-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +125 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +16 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-apl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
dp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102703v3/shard-apl3/igt@kms_hdr@bpc-switch-suspend@bpc-=
switch-suspend-dp-1-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
edp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102703v3/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc=
-switch-suspend-edp-1-pipe-a.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@kms_pipe_crc_basic@nonblocki=
ng-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/533">i915#533</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_pipe_crc_basic@nonblocki=
ng-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
a-coverage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@kms_psr@psr2_primary_mmap_cp=
u.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +64 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11595/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3=
/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 si=
milar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-iclb5/igt@prime_nv_test@nv_i915_shar=
ing.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102703v3/shard-skl6/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_buddy@all@buddy_alloc_smoke:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl4/igt@drm_buddy@all@buddy_alloc_smoke.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5800">i9=
15#5800</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102703v3/shard-skl9/igt@drm_buddy@all@buddy_alloc_smoke.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-apl1/igt@gem_ctx_persistence@engines-hostile@vecs0.html=
">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102703v3/shard-apl6/igt@gem_ctx_persistence@engines-hostile@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102703v3/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl9/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#454=
7</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5871">i9=
15#5871</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102703v3/shard-skl10/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102703v3/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102703v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02703v3/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102703v3/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102703v3/shard-snb2/igt@gem_exec_flush@basic-wb-rw-default.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/=
shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-5/igt@gem_mmap_offset@close-race.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5080">i915#5=
080</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102703v3/shard-rkl-6/igt@gem_mmap_offset@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i9=
15#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/71=
6">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102703v3/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/sh=
ard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102703v3/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102703v3/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_big_fb@x-tiled-=
max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102703v3/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor=
-128x128-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/571=
3">i915#5713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102703v3/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl1/igt@kms_cursor_legacy@short-flip-after-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_102703v3/shard-skl7/igt@kms_cursor_legacy@shor=
t-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varyin=
g-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-1/igt@kms_cursor_legacy@short-flip-before-cursor-at=
omic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/ig=
t@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-siz=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-y=
tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_draw_crc@draw-method=
-xrgb2101010-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@fill-fb:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-2/igt@kms_draw_crc@fill-fb.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111314">fdo#111314</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4369">i91=
5#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102703v3/shard-rkl-6/igt@kms_draw_crc@fill-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102703v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102703v3/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb3/igt@kms_flip_scale=
d_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a> +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-4/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102703v3/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102703v3/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-c=
rc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102703v3/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-cover=
age-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3=
/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@p=
ipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3=
/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102703v3/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102703v3/shard-iclb8/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-rkl-5/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-rkl-6/igt@kms_universa=
l_plane@universal-plane-gen9-features-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10270=
3v3/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102703v3/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in=
-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102703v3/shard-iclb4/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-mo=
vement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-iclb6/igt@kms_cursor_cr=
c@pipe-a-cursor-512x512-rapid-movement.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11595/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102703v3/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</=
p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11595/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
703v3/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-=
2-downscale-with-rotation:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-glk2/igt@kms_plane_scaling@downscale-with-rotation-fact=
or-0-75@pipe-b-hdmi-a-2-downscale-with-rotation.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10270=
3v3/shard-glk1/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pi=
pe-b-hdmi-a-2-downscale-with-rotation.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102703v3/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11595/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102703v3/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11595/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11595/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11595/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11595/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_115=
95/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/=
shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11595/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11595/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11595/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#1=
80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i=
915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/92">i915#92</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2703v3/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102703v3/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102703v3/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kb=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102703v3/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v3/shard-kbl1/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11595 -&gt; Patchwork_102703v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11595: 39f10ae27121125b412db10366fdb066c00d17e1 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102703v3: 39f10ae27121125b412db10366fdb066c00d17e1 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3251042296421482947==--
