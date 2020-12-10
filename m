Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4372D64CB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 19:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9856EAB6;
	Thu, 10 Dec 2020 18:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C95516EAAA;
 Thu, 10 Dec 2020 18:23:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1E06A363B;
 Thu, 10 Dec 2020 18:23:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Saichandana S" <saichandana.s@intel.com>
Date: Thu, 10 Dec 2020 18:23:31 -0000
Message-ID: <160762461175.19119.13135575019634461598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210132853.1521-1-saichandana.s@intel.com>
In-Reply-To: <20201210132853.1521-1-saichandana.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs_=3A_PM=5FREQ_and_PM=5FRES_register_debugfs?=
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
Content-Type: multipart/mixed; boundary="===============2124664729=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2124664729==
Content-Type: multipart/alternative;
 boundary="===============7070065300845392127=="

--===============7070065300845392127==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/debugfs : PM_REQ and PM_RES register debugfs
URL   : https://patchwork.freedesktop.org/series/84782/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9471_full -> Patchwork_19110_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19110_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19110_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19110_full:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries_display_off:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl9/igt@debugfs_test@read_all_entries_display_off.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl5/igt@debugfs_test@read_all_entries_display_off.html
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb1/igt@debugfs_test@read_all_entries_display_off.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb1/igt@debugfs_test@read_all_entries_display_off.html
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk3/igt@debugfs_test@read_all_entries_display_off.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk7/igt@debugfs_test@read_all_entries_display_off.html
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb2/igt@debugfs_test@read_all_entries_display_off.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb1/igt@debugfs_test@read_all_entries_display_off.html
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-apl8/igt@debugfs_test@read_all_entries_display_off.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-apl2/igt@debugfs_test@read_all_entries_display_off.html

  
Known issues
------------

  Here are the changes found in Patchwork_19110_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries_display_off:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#262])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-kbl1/igt@debugfs_test@read_all_entries_display_off.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-kbl6/igt@debugfs_test@read_all_entries_display_off.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-hsw:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][14] ([i915#2389]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-hsw:          NOTRUN -> [SKIP][19] ([fdo#109271]) +48 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#1037] / [i915#2268])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb1/igt@i915_selftest@live@execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb5/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-glk:          [PASS][22] -> [DMESG-FAIL][23] ([i915#118] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-iclb:         [PASS][24] -> [DMESG-FAIL][25] ([i915#1226])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb4/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb8/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111304])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl2/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-hsw:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][33] ([i915#2295])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [PASS][34] -> [FAIL][35] ([i915#2370])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][38] ([i915#2055])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check@c-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2122]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl1/igt@kms_flip@wf_vblank-ts-check@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_flip@wf_vblank-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +15 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#53])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#198])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][48] ([i915#54]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][50] ([i915#2370]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][52] ([i915#198]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][54] ([fdo#109441]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][56] ([i915#1542]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl6/igt@perf@blocking.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl8/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][58] ([i915#1542]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb7/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb7/igt@perf@polling-parameterized.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [FAIL][60] ([i915#1731]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][62] ([i915#588]) -> [SKIP][63] ([i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][64] ([fdo#109349]) -> [DMESG-WARN][65] ([i915#1226])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][66] ([i915#2295] / [i915#2722]) -> ([FAIL][67], [FAIL][68]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-kbl7/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-kbl6/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-kbl4/igt@runner@aborted.html
    - shard-glk:          ([FAIL][69], [FAIL][70]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321]) -> ([FAIL][71], [FAIL][72], [FAIL][73]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk6/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk8/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk7/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk3/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][74], [FAIL][75]) ([i915#1602] / [i915#2295] / [i915#2722]) -> ([FAIL][76], [FAIL][77], [FAIL][78]) ([i915#1602] / [i915#1814] / [i915#1887] / [i915#2295] / [i915#2722])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb1/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb1/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][79], [FAIL][80], [FAIL][81]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2722]) -> ([FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl1/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl2/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl5/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9471 -> Patchwork_19110

  CI-20190529: 20190529
  CI_DRM_9471: 1e384ea457bc2af47dc7653f8ebbcae21fbac5fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19110: b23f408141a839da6922765c664107c6863be9af @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/index.html

--===============7070065300845392127==
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
<tr><td><b>Series:</b></td><td>drm/i915/debugfs : PM_REQ and PM_RES registe=
r debugfs</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84782/">https://patchwork.freedesktop.org/series/84782/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19110/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19110/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9471_full -&gt; Patchwork_19110_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19110_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19110_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19110_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-skl9/igt@debugfs_test@read_all_entries_display_off.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19110/shard-skl5/igt@debugfs_test@read_all_entries_display_off.html">DMES=
G-WARN</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-iclb1/igt@debugfs_test@read_all_entries_display_off.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19110/shard-iclb1/igt@debugfs_test@read_all_entries_display_off.html">DM=
ESG-WARN</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-glk3/igt@debugfs_test@read_all_entries_display_off.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19110/shard-glk7/igt@debugfs_test@read_all_entries_display_off.html">DMES=
G-WARN</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-tglb2/igt@debugfs_test@read_all_entries_display_off.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19110/shard-tglb1/igt@debugfs_test@read_all_entries_display_off.html">DM=
ESG-WARN</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-apl8/igt@debugfs_test@read_all_entries_display_off.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19110/shard-apl2/igt@debugfs_test@read_all_entries_display_off.html">DMES=
G-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19110_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-kbl1/igt@debugfs_test@read_all_entries_display_off.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19110/shard-kbl6/igt@debugfs_test@read_all_entries_display_off.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262=
">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-iclb1/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19110/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@i915_pm_rpm@gem-execbuf-stress=
-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-tglb1/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/sha=
rd-tglb5/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/s=
hard-glk8/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</=
p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-iclb4/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/=
shard-iclb8/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-skl2/igt@kms_chamelium@hdmi-audio.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/=
shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19110/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-fl=
ip-atomic-transitions.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19110/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
370">i915#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19110/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdm=
i-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl1/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1911=
0/shard-skl3/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-c-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19110/shard-skl10/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19110/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/sha=
rd-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19110/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i=
915#2370</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19110/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19110/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19110/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl6/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl8/ig=
t@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-tglb7/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110=
/shard-tglb7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#=
1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19110/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS</a>=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
110/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19110/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#12=
26</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9471/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-=
kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19110/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#=
1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295"=
>i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-glk8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kernel.or=
g/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19110/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-glk1/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kern=
el.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
110/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-tglb7/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1887">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9471/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9471/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9471/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
110/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19110/shard-skl5/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9471 -&gt; Patchwork_19110</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9471: 1e384ea457bc2af47dc7653f8ebbcae21fbac5fc @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19110: b23f408141a839da6922765c664107c6863be9af @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7070065300845392127==--

--===============2124664729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2124664729==--
