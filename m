Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3932C34A00C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 04:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FC16E138;
	Fri, 26 Mar 2021 03:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 750D96E12A;
 Fri, 26 Mar 2021 03:05:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B398A8169;
 Fri, 26 Mar 2021 03:05:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Fri, 26 Mar 2021 03:05:22 -0000
Message-ID: <161672792239.10686.7919982639633911119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325114823.44922-1-hdegoede@redhat.com>
In-Reply-To: <20210325114823.44922-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/vlv=5Fdsi=3A_Do_no?=
 =?utf-8?q?t_skip_panel=5Fpwr=5Fcycle=5Fdelay_when_disabling_the_panel?=
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
Content-Type: multipart/mixed; boundary="===============1257157737=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1257157737==
Content-Type: multipart/alternative;
 boundary="===============8557576587872290940=="

--===============8557576587872290940==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display/vlv_dsi: Do not skip panel_pwr_cycle_delay when disabling the panel
URL   : https://patchwork.freedesktop.org/series/88440/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9895_full -> Patchwork_19855_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19855_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19855_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19855_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@userptr:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@gem_exec_parallel@engines@userptr.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13]) ([i915#142] / [i915#2029] / [i915#2292] / [i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl2/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl3/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl3/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl10/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19855_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1099]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][15] -> [TIMEOUT][16] ([i915#2369] / [i915#3063])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb6/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [PASS][17] -> [TIMEOUT][18] ([i915#2369] / [i915#2481] / [i915#3070])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][19] ([i915#2846])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][21] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2842]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][24] -> [FAIL][25] ([i915#2842]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#2842])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109283])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][29] ([i915#3183])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][30] ([i915#2389]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         NOTRUN -> [FAIL][31] ([i915#307])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#3160])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl6/igt@gem_mmap_offset@clear.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@gem_mmap_offset@clear.html
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#3160])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb3/igt@gem_mmap_offset@clear.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb6/igt@gem_mmap_offset@clear.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][36] ([i915#2658])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@gem_pwrite@basic-exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][37] ([i915#2658])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271]) +305 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][39] ([i915#3296])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl6/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#112306])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#198] / [i915#1982] / [i915#2502])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl10/igt@i915_module_load@reload-with-fault-injection.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][44] ([i915#180]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#3168])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl1/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111304])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][53] ([i915#1319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +93 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274] / [fdo#109278])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-skl:          NOTRUN -> [FAIL][59] ([i915#52] / [i915#54])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#79])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#2122]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1:
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2122])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2587])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#2641])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#111825]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +87 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#1187])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][80] ([fdo#108145] / [i915#265])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][81] ([i915#265])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([fdo#108145] / [i915#265])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#1836])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +229 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2437])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2437])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2530])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [i915#2530])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109291])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][96] ([i915#409])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][98] ([i915#198]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-10ms:
    - shard-skl:          [TIMEOUT][100] ([i915#2502]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl8/igt@gem_eio@in-flight-10ms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][102] ([i915#3063]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [TIMEOUT][104] ([i915#3063]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl2/igt@gem_eio@in-flight-contexts-immediate.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][106] ([i915#2842]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][110] ([i915#118] / [i915#95]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-glk4/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [INCOMPLETE][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][114] ([i915#2428]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [FAIL][116] ([i915#307]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][118] ([i915#1436] / [i915#716]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-skl:          [DMESG-WARN][120] ([i915#1982]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][124] ([i915#79]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +6 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][130] ([fdo#108145] / [i915#265]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][132] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][134] ([fdo#109441]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][136] ([i915#1542]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl2/igt@perf@polling-parameterized.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl8/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [INCOMPLETE][138] ([i915#409]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb2/igt@prime_vgem@sync@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][140] ([i915#2684]) -> [FAIL][141] ([i915#2680] / [i915#2681])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][142] ([i915#1226]) -> [SKIP][143] ([fdo#109349])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][144] ([i915#2920]) -> [SKIP][145] ([i915#658]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/index.html

--===============8557576587872290940==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display/=
vlv_dsi: Do not skip panel_pwr_cycle_delay when disabling the panel</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88440/">https://patchwork.freedesktop.org/series/88440/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19855/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9895_full -&gt; Patchwork_19855_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19855_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19855_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19855_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@engines@userptr:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl4/igt@gem_exec_parallel@engines@userptr.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855=
/shard-skl3/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9895/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9895/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
895/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814=
] / [i915#2029] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19855/shard-skl3/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard=
-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19855/shard-skl3/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/sh=
ard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19855/shard-skl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1985=
5/shard-skl4/igt@runner@aborted.html">FAIL</a>) ([i915#142] / [i915#2029] /=
 [i915#2292] / [i915#3002])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19855_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9895/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-tglb=
6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])<=
/p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9895/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb=
4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] /=
 [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_exec_fair@basic-none-rrul=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/sha=
rd-glk7/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/sha=
rd-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_exec_params@no-bsd.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl3/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a> ([i915#3183])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.=
html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9895/shard-skl6/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl3/i=
gt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9895/shard-iclb3/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-iclb6=
/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-skl1/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-kbl1/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-snb6/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> ([fdo#109271]) +305 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl6/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl10/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19855/shard-skl2/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> ([i915#198] / [i915#1982] / [i915#2502])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl4/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@i915_suspend@debugfs-reader.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:<=
/p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl1/igt@kms_atomic_transition@plane-all-transition-nonb=
locking@dp-1-pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_atomic_transition@plan=
e-all-transition-nonblocking@dp-1-pipe-b.html">FAIL</a> ([i915#3168])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_chamelium@dp-hpd-storm.ht=
ml">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-snb7/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
855/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-onscreen.html">SKIP</a> ([fdo#109271]) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-rapid-movement.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8=
888-render-untiled.html">FAIL</a> ([i915#52] / [i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19855/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19855/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.htm=
l">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19855/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> =
([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-dp=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19855/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@b=
-dp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825]) +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +87 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19855/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-kbl1/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar iss=
ues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-skl1/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19855/sh=
ard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +229 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-skl4/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-apl6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@nouveau_crc@pipe-b-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@nouveau_crc@pipe-d-source-out=
p-inactive.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-tglb8/igt@prime_nv_api@i915_nv_import_v=
s_close.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@prime_vgem@sync@rcs0.html">IN=
COMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19855/shard-iclb4/igt@sysfs_clients@split-10.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl9/igt@gem_ctx_isolation@preservation-s3@bcs0.html">IN=
COMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19855/shard-skl4/igt@gem_ctx_isolation@preservation-s3@b=
cs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl8/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> ([i915=
#2502]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19855/shard-skl1/igt@gem_eio@in-flight-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT<=
/a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19855/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl2/igt@gem_eio@in-flight-contexts-immediate.html">TIME=
OUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19855/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19855/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19855/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html">D=
MESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19855/shard-glk4/igt@gem_exec_whisper@basic=
-fds-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19855/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19855/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL=
</a> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19855/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19855/shard-skl1/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor=
-atomic.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl10/igt@kms_cursor_legacy=
@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-h=
dmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19855/shard-glk8/igt@kms_flip@2x-flip-vs-expired=
-vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19855/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19855/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19855/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-a.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19855/shard-skl9/igt@kms_plane_alpha_b=
lend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#1=
09642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19855/shard-iclb2/igt@kms_psr2_su@frontbuffer.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([=
fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19855/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl2/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19855/shard-skl8/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb2/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i9=
15#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19855/shard-tglb8/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19855/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
([i915#2680] / [i915#2681])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> ([i915#1226]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19855/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html">S=
KIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19855/shard-iclb7/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_</p>
</li>
</ul>

</body>
</html>

--===============8557576587872290940==--

--===============1257157737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1257157737==--
