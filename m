Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB7715FA3D
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 00:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1946F6FBD6;
	Fri, 14 Feb 2020 23:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 108896E88C;
 Fri, 14 Feb 2020 23:16:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0947BA00C7;
 Fri, 14 Feb 2020 23:16:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Feb 2020 23:16:40 -0000
Message-ID: <158172220000.9930.2009192819435238050@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Expand_bad_CS_completion_event_debug?=
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

Series: drm/i915/gt: Expand bad CS completion event debug
URL   : https://patchwork.freedesktop.org/series/73335/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7924_full -> Patchwork_16532_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16532_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16532_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16532_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_timelines:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb3/igt@i915_selftest@mock_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb8/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl7/igt@i915_selftest@mock_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl10/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@i915_selftest@mock_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-tglb8/igt@i915_selftest@mock_timelines.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-tglb8/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  
Known issues
------------

  Here are the changes found in Patchwork_16532_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb6/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110841])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][16] -> [TIMEOUT][17] ([fdo#112271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb1/igt@gem_exec_balancer@hang.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_capture@capture-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@gem_exec_capture@capture-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@gem_exec_capture@capture-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-hsw:          [PASS][22] -> [INCOMPLETE][23] ([CI#80] / [i915#151] / [i915#61])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw2/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw2/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#413])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@i915_pm_rps@reset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [PASS][26] -> [INCOMPLETE][27] ([i915#58] / [k.org#198133])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk3/igt@i915_selftest@mock_timelines.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-glk3/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [PASS][28] -> [INCOMPLETE][29] ([i915#61])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw1/igt@i915_selftest@mock_timelines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw2/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [PASS][30] -> [INCOMPLETE][31] ([fdo#103665])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl7/igt@i915_selftest@mock_timelines.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl4/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [PASS][32] -> [INCOMPLETE][33] ([i915#82])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb6/igt@i915_selftest@mock_timelines.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb5/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [PASS][34] -> [INCOMPLETE][35] ([fdo#103927])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl8/igt@i915_selftest@mock_timelines.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl3/igt@i915_selftest@mock_timelines.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#93] / [i915#95])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][40] -> [FAIL][41] ([i915#96])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][42] -> [SKIP][43] ([i915#668]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#84])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk3/igt@perf@oa-exponents.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-glk5/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][48] ([fdo#112080]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [FAIL][50] ([i915#679]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-apl:          [INCOMPLETE][52] ([fdo#103927]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_exec_schedule@fifo-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb6/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-kbl:          [INCOMPLETE][58] ([fdo#103665]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl3/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl2/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][60] ([fdo#109276]) -> [PASS][61] +10 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-hsw:          [FAIL][62] ([i915#694]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw6/igt@gem_partial_pwrite_pread@reads-uncached.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][64] ([i915#644]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][66] -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][68] ([i915#69]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl10/igt@i915_suspend@forcewake.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][70] ([i915#221]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][74] ([i915#1188]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl1/igt@kms_hdr@bpc-switch.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][76] ([fdo#108145]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145] / [i915#265]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][80] ([fdo#109642] / [fdo#111068]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@kms_psr@psr2_primary_blt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][84] ([i915#31]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl6/igt@kms_setmode@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-apl4/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][86] ([i915#831]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][88] ([IGT#28]) -> [SKIP][89] ([fdo#112080])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][90] ([i915#818]) -> [FAIL][91] ([i915#694])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][92] ([i915#468]) -> [FAIL][93] ([i915#454])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][94] ([i915#1226]) -> [SKIP][95] ([fdo#109349])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][96] -> [FAIL][97] ([i915#974])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-kbl4/igt@runner@aborted.html
    - shard-snb:          ([FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105]) ([fdo#111870] / [i915#1077]) -> ([FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114]) ([fdo#111870] / [i915#1077] / [i915#974])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb2/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb4/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb2/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb6/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb6/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-snb6/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb5/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb5/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/shard-snb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7924 -> Patchwork_16532

  CI-20190529: 20190529
  CI_DRM_7924: d4ea682de87f4e4378f34f0a196e8fa8983bd306 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5436: 00a64098aaae2ac3154841d76c7b034165380282 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16532: 9c4c9a0806edc1aa9e49cb27935a2fbe11aa58d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
