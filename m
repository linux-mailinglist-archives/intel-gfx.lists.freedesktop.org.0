Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC3E138D95
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 10:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A1589341;
	Mon, 13 Jan 2020 09:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DC2789341;
 Mon, 13 Jan 2020 09:20:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 151DEA0075;
 Mon, 13 Jan 2020 09:20:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 13 Jan 2020 09:20:17 -0000
Message-ID: <157890721708.16927.6524484078840631294@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7714_full -> Patchwork_16045_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16045_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([fdo#103665])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#490])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb1/igt@gem_eio@in-flight-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb2/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#110854])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111593] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb7/igt@gem_exec_parallel@vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#455])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb7/igt@i915_selftest@live_gt_timelines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +14 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][47] ([i915#461]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [INCOMPLETE][49] ([i915#534]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@wait-10ms:
    - shard-skl:          [FAIL][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl5/igt@gem_eio@wait-10ms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl7/igt@gem_eio@wait-10ms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb3/igt@gem_exec_await@wide-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111593] / [i915#472]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][57] ([CI#80] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb4/igt@gem_exec_reuse@single.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb1/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +12 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][61] ([i915#677]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][65] ([i915#667]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@gem_linear_blits@interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-glk3/igt@gem_linear_blits@interruptible.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [DMESG-FAIL][67] ([i915#666]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl3/igt@i915_selftest@live_active.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl4/igt@i915_selftest@live_active.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl3/igt@i915_suspend@debugfs-reader.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-apl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-tglb:         [DMESG-WARN][75] ([i915#402]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-kbl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82] +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][87] ([fdo#112080]) -> [PASS][88] +10 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][89] ([fdo#111732]) -> [TIMEOUT][90] ([fdo#111732] / [fdo#112271])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-skl6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [INCOMPLETE][92] ([i915#82])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb6/igt@i915_pm_rpm@drm-resources-equal.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16045/shard-snb6/igt@i915_pm_rpm@drm-resources-equal.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
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
