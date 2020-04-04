Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA0019E249
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 03:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE0B6ECD2;
	Sat,  4 Apr 2020 01:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 253496ECD1;
 Sat,  4 Apr 2020 01:46:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15C83A00C7;
 Sat,  4 Apr 2020 01:46:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 04 Apr 2020 01:46:32 -0000
Message-ID: <158596479208.1394.9782013670566894990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403160951.8271-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403160951.8271-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revoke_mmap_before_fence?=
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

Series: drm/i915: Revoke mmap before fence
URL   : https://patchwork.freedesktop.org/series/75470/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8247_full -> Patchwork_17202_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17202_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17202_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17202_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ringfill@basic-default-hang:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl1/igt@gem_ringfill@basic-default-hang.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@write-busy@all}:
    - shard-glk:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-glk3/igt@gem_wait@write-busy@all.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-glk8/igt@gem_wait@write-busy@all.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8247_full and Patchwork_17202_full:

### New IGT tests (7) ###

  * igt@perf_pmu@faulting-read:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@after:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@after-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@before:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@hang:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@hang-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_vgem@busy:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17202_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#716])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#454])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
    - shard-snb:          [PASS][8] -> [SKIP][9] ([fdo#109271]) +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109349])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#46])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#34])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl5/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl7/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl4/igt@kms_hdr@bpc-switch.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#648] / [i915#69])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([fdo#108145] / [i915#265]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@hang:
    - shard-tglb:         [FAIL][32] ([i915#1621]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb6/igt@gem_mmap_gtt@hang.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-tglb8/igt@gem_mmap_gtt@hang.html
    - shard-snb:          [FAIL][34] ([i915#1621]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb5/igt@gem_mmap_gtt@hang.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-snb1/igt@gem_mmap_gtt@hang.html
    - shard-iclb:         [FAIL][36] ([i915#1621]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb3/igt@gem_mmap_gtt@hang.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-iclb6/igt@gem_mmap_gtt@hang.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [FAIL][38] ([i915#1618]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl7/igt@gem_tiled_swapping@non-threaded.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-apl4/igt@gem_tiled_swapping@non-threaded.html
    - shard-kbl:          [FAIL][40] ([i915#1618]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl2/igt@gem_tiled_swapping@non-threaded.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-kbl6/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglb:         [FAIL][42] ([i915#1618]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb8/igt@gem_tiled_swapping@non-threaded.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-tglb5/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][46] ([i915#647]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb6/igt@i915_selftest@live@execlists.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-tglb8/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][50] ([i915#155]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl2/igt@i915_suspend@forcewake.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-apl:          [FAIL][52] ([i915#54] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][56] ([i915#221]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [INCOMPLETE][58] ([i915#82]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][60] ([fdo#108145] / [i915#265]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][62] ([fdo#109441]) -> [PASS][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][64] ([i915#31]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl4/igt@kms_setmode@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-skl9/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [FAIL][66] ([i915#64]) -> [INCOMPLETE][67] ([i915#456] / [i915#460])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1618]: https://gitlab.freedesktop.org/drm/intel/issues/1618
  [i915#1621]: https://gitlab.freedesktop.org/drm/intel/issues/1621
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_8247 -> Patchwork_17202

  CI-20190529: 20190529
  CI_DRM_8247: 4ceaa00bfb032d9f29a485596fbc02fdeab06bc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5562: 4770480c8c1f105ff9225e8eb07b652ca954e06a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17202: fc8f69a629a3d787065ea17a3ad8cd91ae53429f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
