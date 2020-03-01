Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34027175114
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 00:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E6789870;
	Sun,  1 Mar 2020 23:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43EC589870;
 Sun,  1 Mar 2020 23:54:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BDDDA73C8;
 Sun,  1 Mar 2020 23:54:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Sun, 01 Mar 2020 23:54:38 -0000
Message-ID: <158310687821.22451.17582875112938931623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Use_phy_to_get_the_hpd=5Fpin_instead_of_the_po?=
 =?utf-8?b?cnQgKHJldjUp?=
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

Series: drm/i915/hotplug: Use phy to get the hpd_pin instead of the port (rev5)
URL   : https://patchwork.freedesktop.org/series/72747/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8035_full -> Patchwork_16770_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16770_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16770_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16770_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl1/igt@perf@enable-disable.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl9/igt@perf@enable-disable.html

  
Known issues
------------

  Here are the changes found in Patchwork_16770_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([fdo#103665] / [fdo#112259])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl7/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-kbl7/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk6/igt@kms_frontbuffer_tracking@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-glk9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#198])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-skl:          [INCOMPLETE][41] ([i915#1239]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1239]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#110841]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][47] ([fdo#110854]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_capture@capture-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_capture@capture-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb8/igt@gem_exec_capture@capture-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [INCOMPLETE][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [DMESG-WARN][61] ([i915#118] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-glk5/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][63] ([i915#413]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][65] ([i915#221]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][69] ([i915#34]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [SKIP][71] ([i915#668]) -> [PASS][72] +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [FAIL][78] ([IGT#28])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][79] ([i915#1226]) -> [SKIP][80] ([fdo#109349])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8035 -> Patchwork_16770

  CI-20190529: 20190529
  CI_DRM_8035: cacad502dcd40516c6a9be38ca3ef0c1288f4cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16770: 7516430abf77fec39ca51e1d466e98a6b20c14a9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16770/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
