Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 994192F8000
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 16:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5206E40B;
	Fri, 15 Jan 2021 15:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7396A6E416;
 Fri, 15 Jan 2021 15:51:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65743A0BCB;
 Fri, 15 Jan 2021 15:51:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Jan 2021 15:51:45 -0000
Message-ID: <161072590540.28530.11898867079602799852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115092034.8804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210115092034.8804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Set_error_value_before_returning_in_intel=5Fhd?=
 =?utf-8?q?cp*=5Fdisable=28=29?=
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
Content-Type: multipart/mixed; boundary="===============1624800974=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1624800974==
Content-Type: multipart/alternative;
 boundary="===============3599438635925647809=="

--===============3599438635925647809==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Set error value before returning in intel_hdcp*_disable()
URL   : https://patchwork.freedesktop.org/series/85895/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9620_full -> Patchwork_19365_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19365_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19365_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19365_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@wait-wedge-immediate:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl4/igt@gem_eio@wait-wedge-immediate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl8/igt@gem_eio@wait-wedge-immediate.html

  * igt@gem_exec_schedule@manyslice@vcs1:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb7/igt@gem_exec_schedule@manyslice@vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb5/igt@gem_exec_schedule@manyslice@vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_19365_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-snb4/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-hsw:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw7/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2389])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_pread@exhaustion:
    - shard-hsw:          NOTRUN -> [WARN][8] ([i915#2658])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw7/igt@gem_pread@exhaustion.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          NOTRUN -> [DMESG-WARN][9] ([i915#1436] / [i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@cursor:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#2411])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb8/igt@i915_pm_rpm@cursor.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb5/igt@i915_pm_rpm@cursor.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-hsw:          NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54]) +10 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-hsw:          NOTRUN -> [DMESG-WARN][18] ([i915#2637])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#2295])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl3/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2346])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2598])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#2055])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#2672])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-glk:          NOTRUN -> [SKIP][28] ([fdo#109271]) +19 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +38 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1188])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb6/igt@kms_psr@psr2_suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2437])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_writeback@writeback-check-output.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][39] ([i915#2295] / [i915#2505])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@runner@aborted.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][40] ([fdo#109271]) +201 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@sysfs_heartbeat_interval@precise@vcs0.html

  * igt@sysfs_timeslice_duration@invalid@bcs0:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-snb4/igt@sysfs_timeslice_duration@invalid@bcs0.html

  * igt@testdisplay:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#165] / [i915#180] / [i915#78])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl6/igt@testdisplay.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl2/igt@testdisplay.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][44] ([i915#658]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-iclb3/igt@feature_discovery@psr2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb2/igt@feature_discovery@psr2.html

  * {igt@gem_exec_fair@basic-none-rrul@rcs0}:
    - shard-glk:          [FAIL][46] ([i915#2842]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-tglb:         [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_schedule@u-semaphore-codependency}:
    - shard-skl:          [DMESG-WARN][50] ([i915#1610]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl7/igt@gem_exec_schedule@u-semaphore-codependency.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl7/igt@gem_exec_schedule@u-semaphore-codependency.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-snb:          [INCOMPLETE][52] ([i915#2055]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * {igt@gem_vm_create@destroy-race}:
    - shard-tglb:         [TIMEOUT][54] ([i915#2795]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb5/igt@gem_vm_create@destroy-race.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb2/igt@gem_vm_create@destroy-race.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-hsw:          [INCOMPLETE][56] ([i915#2880]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-hsw2/igt@i915_module_load@reload-with-fault-injection.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-hsw4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][58] ([i915#2574]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-snb:          [SKIP][60] ([fdo#109271]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][62] ([i915#54]) -> [PASS][63] +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][64] ([i915#2346]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][68] ([i915#2122]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][70] ([i915#1188]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl3/igt@kms_hdr@bpc-switch.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][72] ([fdo#108145] / [i915#265]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - shard-kbl:          [DMESG-WARN][74] ([i915#62]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl2/igt@kms_plane_cursor@pipe-c-overlay-size-256.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl1/igt@kms_plane_cursor@pipe-c-overlay-size-256.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][76] ([fdo#109441]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][78] ([i915#2681] / [i915#2684]) -> [WARN][79] ([i915#1804] / [i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][80] ([i915#1804] / [i915#2684]) -> [WARN][81] ([i915#2684])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295] / [i915#2505]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#1814] / [i915#2295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl4/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl2/igt@runner@aborted.html
    - shard-glk:          ([FAIL][87], [FAIL][88], [FAIL][89]) ([i915#1814] / [i915#2295] / [i915#2426] / [k.org#202321]) -> ([FAIL][90], [FAIL][91]) ([i915#1814] / [i915#2295] / [k.org#202321])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-glk7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-glk1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-glk4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk9/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk4/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][92], [FAIL][93]) ([i915#1602] / [i915#2295] / [i915#2667]) -> [FAIL][94] ([i915#2295] / [i915#2667])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb7/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb8/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][95], [FAIL][96]) ([i915#2295] / [i915#2426]) -> ([FAIL][97], [FAIL][98]) ([i915#1436] / [i915#2295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2637]: https://gitlab.freedesktop.org/drm/intel/issues/2637
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2880]: https://gitlab.freedesktop.org/drm/intel/issues/2880
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9620 -> Patchwork_19365

  CI-20190529: 20190529
  CI_DRM_9620: 350ab015d8abeeacee58e0a680b784fccf39b6a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19365: fc7c78267766b04408e3141941352ba395e3b606 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/index.html

--===============3599438635925647809==
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
urning in intel_hdcp*_disable()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85895/">https://patchwork.freedesktop.org/series/85895/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19365/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19365/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9620_full -&gt; Patchwork_19365_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19365_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19365_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19365_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl4/igt@gem_eio@wait-wedge-immediate.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shar=
d-skl8/igt@gem_eio@wait-wedge-immediate.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@manyslice@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb7/igt@gem_exec_schedule@manyslice@vcs1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365=
/shard-tglb5/igt@gem_exec_schedule@manyslice@vcs1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19365_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-snb4/igt@gem_ctx_persistence@clone.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw7/igt@gem_ctx_persistence@idempotent=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw7/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-skl7/igt@gen9_exec_parse@allowed-all.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#=
454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb8/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-tglb5/i=
gt@i915_pm_rpm@cursor.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@kms_chamelium@common-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19365/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2637">i915#2637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-kbl3/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19365/shard-kbl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-t=
ransitions.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19365/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#23=
46</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19365/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1936=
5/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_frontbuffer_tracking@fbcps=
r-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-skl10/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-=
skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19365/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-iclb6=
/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-glk6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@runner@aborted.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2505">i91=
5#2505</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-hsw5/igt@sysfs_heartbeat_interval@preci=
se@vcs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +201 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@bcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19365/shard-snb4/igt@sysfs_timeslice_duration@inval=
id@bcs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-kbl6/igt@testdisplay.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl2/igt@testdi=
splay.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/165">i915#165</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/78">i915#78</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard=
-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-rrul@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19365/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19365/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-semaphore-codependency}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl7/igt@gem_exec_schedule@u-semaphore-codependency.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1610">i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19365/shard-skl7/igt@gem_exec_schedule@u-semaphore-codepend=
ency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/20=
55">i915#2055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19365/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_vm_create@destroy-race}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb5/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2795">i915#2795<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
365/shard-tglb2/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-hsw2/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2880">i915#2880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19365/shard-hsw4/igt@i915_module_load@reload-with-fault-i=
njection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#257=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19365/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19365/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-on=
screen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19365/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.=
html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19365/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19365/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19365/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-sk=
l4/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19365/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-cons=
tant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-256:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-kbl2/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19365/shard-kbl1/igt@kms_plane_cursor@pipe-c-overlay-size-256.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/s=
hard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19365/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19365/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2505">i915#2505</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19365/shard-kbl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365=
/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19365/shard-kbl2/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814=
">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-glk1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9620/shard-glk4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <=
a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#20232=
1</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19365/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard-glk4/igt@runner@aborted=
.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a> / <a href=3D"https://bugzilla.kernel.org/show_b=
ug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2667">i915#2667</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19365/shard-tglb7/igt@runner@aborted.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">=
i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2667">i915#2667</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9620/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9620/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19365/shard-skl2/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19365/shard=
-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
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
<li>Linux: CI_DRM_9620 -&gt; Patchwork_19365</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9620: 350ab015d8abeeacee58e0a680b784fccf39b6a7 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19365: fc7c78267766b04408e3141941352ba395e3b606 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3599438635925647809==--

--===============1624800974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1624800974==--
