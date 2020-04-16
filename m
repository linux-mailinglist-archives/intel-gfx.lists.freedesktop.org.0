Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1C1AB598
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 03:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A036E21C;
	Thu, 16 Apr 2020 01:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 210116E216;
 Thu, 16 Apr 2020 01:40:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09583A363D;
 Thu, 16 Apr 2020 01:40:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Apr 2020 01:40:02 -0000
Message-ID: <158700120200.20887.3576066386040649216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415075018.7636-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415075018.7636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Update_PMINTRMSK_holding_fw?=
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

Series: drm/i915/gt: Update PMINTRMSK holding fw
URL   : https://patchwork.freedesktop.org/series/75958/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17305_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17305_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17305_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17305_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-tglb1/igt@perf_pmu@cpu-hotplug.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8298_full and Patchwork_17305_full:

### New IGT tests (27) ###

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - Statuses : 7 pass(s)
    - Exec time: [1.65, 3.64] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.66] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.67] s

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.44] s

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.45] s

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.43] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.70] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - Statuses : 7 pass(s)
    - Exec time: [2.19, 3.69] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.61] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.87] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.85] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.83] s

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.67] s

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.20, 4.70] s

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.61] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.88] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.92] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.92] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.91] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.91] s

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.56] s

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.68] s

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.77] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.87] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.83] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.84] s

  

Known issues
------------

  Here are the changes found in Patchwork_17305_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@semaphore:
    - shard-glk:          [PASS][2] -> [INCOMPLETE][3] ([i915#58] / [k.org#198133])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@gem_exec_balancer@semaphore.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-glk1/igt@gem_exec_balancer@semaphore.html

  * igt@gem_exec_create@madvise:
    - shard-hsw:          [PASS][4] -> [INCOMPLETE][5] ([i915#61])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw1/igt@gem_exec_create@madvise.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-hsw4/igt@gem_exec_create@madvise.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#198])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl9/igt@i915_pm_dc@dc5-psr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl4/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][12] -> [INCOMPLETE][13] ([i915#151] / [i915#69])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-snb:          [PASS][16] -> [DMESG-WARN][17] ([i915#128])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-snb1/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-hsw:          [PASS][18] -> [SKIP][19] ([fdo#109271]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-hsw2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#34])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145] / [i915#265]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][28] ([fdo#109276]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][30] ([i915#1676]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl9/igt@gem_wait@write-wait@all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][32] ([i915#716]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][34] ([i915#72]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][36] ([i915#79]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][38] ([i915#1188]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41] +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][46] ([i915#198]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][48] ([i915#454]) -> [SKIP][49] ([i915#468])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][50] ([i915#180] / [i915#95]) -> [FAIL][51] ([i915#93] / [i915#95])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][53] ([fdo#108145] / [i915#265]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][54] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][55] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][56], [FAIL][57]) ([i915#1423] / [i915#716]) -> [FAIL][58] ([i915#1423])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17305

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17305: 3f39dd53bc11120951a053fe97f7db5abed3a3c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17305/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
