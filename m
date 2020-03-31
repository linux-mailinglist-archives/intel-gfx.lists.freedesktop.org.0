Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F6E198C81
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 08:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5B66E54C;
	Tue, 31 Mar 2020 06:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB0A56E264;
 Tue, 31 Mar 2020 06:47:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2C57A47E1;
 Tue, 31 Mar 2020 06:47:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 06:47:20 -0000
Message-ID: <158563724083.5564.16339008753275917120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330133710.14385-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330133710.14385-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Split_eb=5Fvma_into_its_own_allocation?=
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

Series: drm/i915/gem: Split eb_vma into its own allocation
URL   : https://patchwork.freedesktop.org/series/75241/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8216_full -> Patchwork_17133_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17133_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17133_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17133_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - shard-snb:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-snb4/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-snb6/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17133_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +20 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb4/igt@i915_hangman@error-state-capture-vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb7/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#34])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-glk3/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-glk4/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-apl1/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-apl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][29] ([fdo#110854]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +12 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][41] ([i915#454]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb8/igt@i915_selftest@live@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb7/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][45] ([i915#72]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-WARN][47] ([i915#180] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][49] ([i915#46]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl2/igt@kms_hdr@bpc-switch.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +13 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [FAIL][61] ([i915#1459]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [FAIL][63] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][64] ([i915#1319])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8216/shard-kbl1/igt@kms_content_protection@atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/shard-kbl4/igt@kms_content_protection@atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8216 -> Patchwork_17133

  CI-20190529: 20190529
  CI_DRM_8216: 4ccea545b3b32da9999542abd56251e4e13bdf04 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17133: 0a256bee623e135ab7ab1188ca52c07dc5357df3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
