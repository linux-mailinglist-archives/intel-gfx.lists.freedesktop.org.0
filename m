Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0992647C9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 16:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FC76E934;
	Thu, 10 Sep 2020 14:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 158AB6E0CB;
 Thu, 10 Sep 2020 14:12:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E5A0AA0EA;
 Thu, 10 Sep 2020 14:12:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 10 Sep 2020 14:12:57 -0000
Message-ID: <159974717702.26637.7926822132181351319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910111225.2184193-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200910111225.2184193-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_slightly_botched_merge_in_=5F=5Freloc=5Fentry=5Fgp?=
 =?utf-8?q?u?=
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
Content-Type: multipart/mixed; boundary="===============1594962950=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1594962950==
Content-Type: multipart/alternative;
 boundary="===============2543242672327601178=="

--===============2543242672327601178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix slightly botched merge in __reloc_entry_gpu
URL   : https://patchwork.freedesktop.org/series/81549/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8994_full -> Patchwork_18468_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18468_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18468_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18468_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl8/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_18468_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][2] -> [TIMEOUT][3] ([i915#1958])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][4] -> [INCOMPLETE][5] ([i915#1635] / [i915#2278])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl3/igt@i915_selftest@mock@contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl6/igt@i915_selftest@mock@contexts.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-glk5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#79])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#79])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#79])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#198])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2122])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-glk3/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-glk6/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([fdo#108145] / [i915#265])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-c-query-busy:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1635] / [i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl1/igt@kms_vblank@pipe-c-query-busy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl7/igt@kms_vblank@pipe-c-query-busy.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#1731])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * {igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines}:
    - shard-iclb:         [DMESG-WARN][28] ([i915#2439]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb3/igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb7/igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines.html

  * igt@gem_exec_gttfill@all:
    - shard-iclb:         [INCOMPLETE][30] ([i915#2439] / [i915#926]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb2/igt@gem_exec_gttfill@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb5/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-iclb:         [INCOMPLETE][32] ([i915#1958] / [i915#2439]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb2/igt@gem_exec_reloc@basic-concurrent16.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][34] ([i915#1958] / [i915#2439]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl7/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][36] ([i915#1958] / [i915#2439]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][38] ([i915#1635] / [i915#1958] / [i915#2439]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][40] ([i915#1958] / [i915#2439]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-tglb6/igt@gem_exec_reloc@basic-concurrent16.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-tglb1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-apl:          [INCOMPLETE][42] ([i915#1635] / [i915#2439]) -> [PASS][43] +17 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl3/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-spin@vcs0:
    - shard-kbl:          [INCOMPLETE][44] ([i915#2439]) -> [PASS][45] +18 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-kbl7/igt@gem_exec_reloc@basic-spin@vcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl7/igt@gem_exec_reloc@basic-spin@vcs0.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-iclb:         [DMESG-FAIL][46] ([i915#2439]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb3/igt@gem_exec_reloc@basic-wc-active.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb8/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-snb:          [INCOMPLETE][48] ([i915#2439] / [i915#82]) -> [PASS][49] +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-snb2/igt@gem_exec_reloc@basic-write-cpu-active.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-snb7/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-kbl:          [INCOMPLETE][50] ([i915#2439] / [i915#794]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-kbl4/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl2/igt@gem_exec_whisper@basic-contexts-forked-all.html
    - shard-iclb:         [INCOMPLETE][52] ([i915#1895] / [i915#2439]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb3/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [INCOMPLETE][54] ([i915#1394] / [i915#2439]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb1/igt@gem_exec_whisper@basic-fds-priority.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-iclb:         [INCOMPLETE][56] ([i915#2439]) -> [PASS][57] +17 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb4/igt@gem_exec_whisper@basic-forked.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-skl:          [INCOMPLETE][58] ([i915#2439]) -> [PASS][59] +11 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl9/igt@gem_exec_whisper@basic-forked-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl7/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-tglb:         [INCOMPLETE][60] ([i915#2439]) -> [PASS][61] +21 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-tglb3/igt@gem_exec_whisper@basic-queues-forked.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-tglb8/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-glk:          [DMESG-WARN][62] ([i915#118] / [i915#95]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [INCOMPLETE][64] ([i915#2439]) -> [PASS][65] +20 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_softpin@invalid:
    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl1/igt@gem_softpin@invalid.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl10/igt@gem_softpin@invalid.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][68] ([i915#1635] / [i915#1982]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl8/igt@i915_module_load@reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][70] ([i915#151]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][72] ([i915#198] / [i915#2278]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl4/igt@i915_selftest@mock@requests.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl6/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][74] ([i915#54]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-kbl:          [DMESG-WARN][76] ([i915#1982]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-kbl6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl3/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [DMESG-WARN][78] ([i915#1982]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][80] ([i915#1188]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl5/igt@kms_hdr@bpc-switch.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][82] ([fdo#108145] / [i915#1982]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][84] ([fdo#108145] / [i915#265]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [FAIL][88] ([i915#1732]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-skl8/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-skl4/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-snb:          [INCOMPLETE][90] ([i915#2439] / [i915#82]) -> [FAIL][91] ([i915#2389])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-snb7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-snb4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([i915#1610] / [i915#1611] / [i915#1635] / [i915#2263] / [i915#2268] / [i915#2439] / [i915#337] / [i915#637]) -> [FAIL][112] ([i915#1635] / [i915#2439])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl1/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl3/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl6/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl6/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl3/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl8/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1394]: https://gitlab.freedesktop.org/drm/intel/issues/1394
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8994 -> Patchwork_18468

  CI-20190529: 20190529
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18468: 3920ee5ddfb91758d2360266f5e095f7d292f303 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html

--===============2543242672327601178==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix slightly botched merge in __re=
loc_entry_gpu</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/81549/">https://patchwork.freedesktop.org/series/81549/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18468/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18468/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8994_full -&gt; Patchwork_18468_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18468_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18468_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18468_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18468/shard-skl8/igt@i915_selftest@live@perf.html">=
INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18468_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8468/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#195=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-apl3/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard=
-apl6/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-glk5/igt@kms_cursor_legacy@short-flip-before-cursor-atom=
ic-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18468/shard-glk8/igt@kms_cursor_legacy@short-flip-be=
fore-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18468/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interrupt=
ible@b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18468/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18468/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18468/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-glk3/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18468/shard-glk6/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18468/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-b=
lt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18468/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/=
shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-busy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-apl1/igt@kms_vblank@pipe-c-query-busy.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shar=
d-apl7/igt@kms_vblank@pipe-c-query-busy.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
468/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb3/igt@gem_exec_fence@syncobj-stationary-timeline-cha=
in-engines.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18468/shard-iclb7/igt@gem_exec_fence@syncobj=
-stationary-timeline-chain-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb2/igt@gem_exec_gttfill@all.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8468/shard-iclb5/igt@gem_exec_gttfill@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-iclb2/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i=
915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18468/shard-iclb5/igt@gem_exec_reloc@basic-concurrent16.html">=
PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i9=
15#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
39">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18468/shard-skl7/igt@gem_exec_reloc@basic-concurrent16.html">PA=
SS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i9=
15#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
39">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18468/shard-kbl6/igt@gem_exec_reloc@basic-concurrent16.html">PA=
SS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i9=
15#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
58">i915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18468/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.ht=
ml">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-tglb6/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i=
915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18468/shard-tglb1/igt@gem_exec_reloc@basic-concurrent16.html">=
PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-apl2/igt@gem_exec_reloc@basic-gtt-cpu-active.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635"=
>i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18468/shard-apl3/igt@gem_exec_reloc@basic-gtt-cpu-active.htm=
l">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-kbl7/igt@gem_exec_reloc@basic-spin@vcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915=
#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18468/shard-kbl7/igt@gem_exec_reloc@basic-spin@vcs0.html">PASS</a> +18 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb3/igt@gem_exec_reloc@basic-wc-active.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i91=
5#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18468/shard-iclb8/igt@gem_exec_reloc@basic-wc-active.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-snb2/igt@gem_exec_reloc@basic-write-cpu-active.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/243=
9">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/82">i915#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18468/shard-snb7/igt@gem_exec_reloc@basic-write-cpu-active.htm=
l">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-kbl4/igt@gem_exec_whisper@basic-contexts-forked-all.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2439">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/794">i915#794</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18468/shard-kbl2/igt@gem_exec_whisper@basic-contexts-for=
ked-all.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1895">i915#1895</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18468/shard-iclb3/igt@gem_exec_whisper@basic-contexts=
-forked-all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb1/igt@gem_exec_whisper@basic-fds-priority.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1394=
">i915#1394</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18468/shard-iclb2/igt@gem_exec_whisper@basic-fds-priority.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb4/igt@gem_exec_whisper@basic-forked.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915=
#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18468/shard-iclb3/igt@gem_exec_whisper@basic-forked.html">PASS</a> +17 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl9/igt@gem_exec_whisper@basic-forked-all.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i=
915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18468/shard-skl7/igt@gem_exec_whisper@basic-forked-all.html">PASS</a=
> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-tglb3/igt@gem_exec_whisper@basic-queues-forked.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439=
">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18468/shard-tglb8/igt@gem_exec_whisper@basic-queues-forked.html">=
PASS</a> +21 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8994/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18468/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18468/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all=
.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@invalid:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl1/igt@gem_softpin@invalid.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/s=
hard-skl10/igt@gem_softpin@invalid.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-apl8/igt@i915_module_load@reload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18468/shard-apl2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18468/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl4/igt@i915_selftest@mock@requests.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2278">i91=
5#2278</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18468/shard-skl6/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18468/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-kbl6/igt@kms_cursor_legacy@short-flip-before-cursor-atom=
ic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18468/shard-kbl3/igt@kms_cursor_legacy@s=
hort-flip-before-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb=
-plflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18468/shard-iclb4/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/shard-sk=
l5/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18468/shard-skl4/igt@kms_plane_alpha_blend@pipe-a=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18468/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_184=
68/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-skl8/igt@sysfs_timeslice_duration@timeout@vecs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1732">i9=
15#1732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18468/shard-skl4/igt@sysfs_timeslice_duration@timeout@vecs0.html">PAS=
S</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8994/shard-snb7/igt@gem_exec_reloc@basic-many-active@rcs0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/243=
9">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/82">i915#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18468/shard-snb4/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/238=
9">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_8994/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_8994/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8=
994/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/s=
hard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_8994/shard-apl6/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-=
apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_8994/shard-apl2/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl3/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_8994/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl4/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_8994/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_8994/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/shard-apl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8=
994/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2263">i915#2263</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915=
#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/337"=
>i915#337</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
637">i915#637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18468/shard-apl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)<=
/li>
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
<li>Linux: CI_DRM_8994 -&gt; Patchwork_18468</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18468: 3920ee5ddfb91758d2360266f5e095f7d292f303 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2543242672327601178==--

--===============1594962950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1594962950==--
