Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D659113789B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 22:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D256EAA1;
	Fri, 10 Jan 2020 21:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C27E16EAA1;
 Fri, 10 Jan 2020 21:42:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8663A47E0;
 Fri, 10 Jan 2020 21:42:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 10 Jan 2020 21:42:06 -0000
Message-ID: <157869252674.30837.1051413726279218529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Bump_up_CDCLK_to_eliminate_underruns_on_TGL_=28rev3=29?=
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

Series: drm/i915: Bump up CDCLK to eliminate underruns on TGL (rev3)
URL   : https://patchwork.freedesktop.org/series/71760/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7714_full -> Patchwork_16045_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16045_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16045_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16045_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-hsw:          NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-hsw5/igt@gem_busy@close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16045_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([fdo#103665])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#110841])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#461])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][10] -> [FAIL][11] ([i915#490])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb1/igt@gem_eio@in-flight-1us.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][12] -> [INCOMPLETE][13] ([i915#82]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb2/igt@gem_eio@kms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#110854])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111593] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb7/igt@gem_exec_parallel@vcs1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([i915#677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][22] -> [TIMEOUT][23] ([i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#716])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#455])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb7/igt@i915_selftest@live_gt_timelines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#109])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#69])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +7 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +14 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][46] ([fdo#109276] / [fdo#112080]) -> [PASS][47] +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][48] ([i915#461]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [INCOMPLETE][50] ([i915#534]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@wait-10ms:
    - shard-skl:          [FAIL][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl5/igt@gem_eio@wait-10ms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl7/igt@gem_eio@wait-10ms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][54] ([fdo#111736] / [i915#472]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb3/igt@gem_exec_await@wide-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][56] ([fdo#111593] / [i915#472]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][58] ([CI#80] / [i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb4/igt@gem_exec_reuse@single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb1/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][60] ([fdo#109276]) -> [PASS][61] +12 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][62] ([i915#677]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65] +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][66] ([i915#667]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@gem_linear_blits@interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-glk3/igt@gem_linear_blits@interruptible.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [DMESG-FAIL][68] ([i915#666]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl3/igt@i915_selftest@live_active.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl4/igt@i915_selftest@live_active.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl3/igt@i915_suspend@debugfs-reader.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-apl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][72] ([i915#109]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][74] ([i915#54]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-tglb:         [DMESG-WARN][76] ([i915#402]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][78] ([i915#79]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][82] ([i915#49]) -> [PASS][83] +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][84] ([fdo#108145] / [i915#265]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][88] ([fdo#112080]) -> [PASS][89] +10 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-snb:          [SKIP][90] ([fdo#109271]) -> [INCOMPLETE][91] ([i915#82])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb6/igt@i915_pm_rpm@drm-resources-equal.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb6/igt@i915_pm_rpm@drm-resources-equal.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16045

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16045: 10698a758829aa1b207fbb9fa8682b2639b486e4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
