Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7AD195900
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 15:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403B689DB8;
	Fri, 27 Mar 2020 14:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D03A89D2E;
 Fri, 27 Mar 2020 14:31:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85CC0A0099;
 Fri, 27 Mar 2020 14:31:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Fri, 27 Mar 2020 14:31:37 -0000
Message-ID: <158531949751.17235.2430389917918370598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326234955.16155-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200326234955.16155-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Make_Wa=5F14010229206_permanent?=
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

Series: drm/i915/tgl: Make Wa_14010229206 permanent
URL   : https://patchwork.freedesktop.org/series/75139/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8197_full -> Patchwork_17107_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17107_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17107_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17107_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          [PASS][2] -> [CRASH][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-glk1/igt@gem_eio@in-flight-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-glk4/igt@gem_eio@in-flight-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_17107_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][4] -> [INCOMPLETE][5] ([i915#1492])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [i915#677]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#677]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#54] / [i915#93] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#52] / [i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#112080]) +9 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276]) +20 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][32] ([fdo#112080]) -> [PASS][33] +9 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][34] ([fdo#109276] / [i915#677]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][36] ([fdo#109276]) -> [PASS][37] +17 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][38] ([i915#677]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41] +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +5 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][44] ([i915#1531]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-tglb7/igt@i915_selftest@live@requests.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][46] ([IGT#5]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][48] ([i915#1188]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][52] ([fdo#108145]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][54] ([fdo#108145] / [i915#265]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][56] ([fdo#109441]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][58] ([i915#31]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-hsw2/igt@kms_setmode@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-hsw5/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][60] ([i915#468]) -> [FAIL][61] ([i915#454])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-snb:          [SKIP][62] ([fdo#109271]) -> [INCOMPLETE][63] ([i915#82])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/shard-snb5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/shard-snb5/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1492]: https://gitlab.freedesktop.org/drm/intel/issues/1492
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8197 -> Patchwork_17107

  CI-20190529: 20190529
  CI_DRM_8197: 198bab1da198b9d6d5c36d52704dd4abab6e81a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17107: 1ecd505ffa0483c39d25bd333b360ecea7eda96e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17107/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
