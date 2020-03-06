Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2AC17B3BC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34736EC49;
	Fri,  6 Mar 2020 01:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C05806EC49;
 Fri,  6 Mar 2020 01:27:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8A7FA41FB;
 Fri,  6 Mar 2020 01:27:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 06 Mar 2020 01:27:08 -0000
Message-ID: <158345802873.3081.12532702776362933631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304205143.106693-1-matthew.auld@intel.com>
In-Reply-To: <20200304205143.106693-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_properly_sanity_check_batch=5Fstart=5Foffset?=
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

Series: drm/i915: properly sanity check batch_start_offset
URL   : https://patchwork.freedesktop.org/series/74287/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8068_full -> Patchwork_16826_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16826_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16826_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16826_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-tglb3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16826_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9] ([i915#58] / [k.org#198133])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#454])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-iclb:         [PASS][14] -> [INCOMPLETE][15] ([i915#189])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb4/igt@i915_pm_rpm@gem-pread.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb2/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#1185])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb6/igt@i915_suspend@fence-restore-untiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#182])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#72])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#198])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112080]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@perf_pmu@busy-start-vcs1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb6/igt@perf_pmu@busy-start-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-shared-gtt-bsd:
    - shard-tglb:         [FAIL][28] ([i915#616]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-bsd.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][30] ([fdo#110841]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [SKIP][32] ([fdo#109276]) -> [PASS][33] +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][34] ([fdo#110854]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][36] ([fdo#109276] / [i915#677]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][38] ([i915#677]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-glk:          [INCOMPLETE][42] ([i915#58] / [k.org#198133]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk4/igt@gem_exec_schedule@wide-bsd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-glk2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [INCOMPLETE][44] ([i915#69]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@gem_exec_suspend@basic-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl8/igt@gem_exec_suspend@basic-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][46] ([i915#716]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][50] ([i915#413]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb6/igt@i915_pm_rps@reset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-snb:          [SKIP][54] ([fdo#109271]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-snb5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-snb6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][56] ([IGT#5]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][58] ([i915#79]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [INCOMPLETE][62] ([fdo#103665]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][64] ([i915#899]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb1/igt@kms_psr@psr2_primary_render.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][68] ([i915#31]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl1/igt@kms_setmode@basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][70] ([i915#146] / [i915#69]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [PASS][73] +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [INCOMPLETE][74] ([i915#82]) -> [SKIP][75] ([fdo#109271]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-snb5/igt@i915_pm_rpm@system-suspend-execbuf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/shard-snb6/igt@i915_pm_rpm@system-suspend-execbuf.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8068 -> Patchwork_16826

  CI-20190529: 20190529
  CI_DRM_8068: f8e69af5cca45947ebce78f677b75b0ecc4ba744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5492: 2be153507cdd652843f6ab44cc2a52a7f30206d9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16826: 608e630c00a9f72450e7255dbaa2f5227c81d133 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16826/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
