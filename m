Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEC9149E0B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 01:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CBB6E28E;
	Mon, 27 Jan 2020 00:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 533A26E28E;
 Mon, 27 Jan 2020 00:43:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DD33A0119;
 Mon, 27 Jan 2020 00:43:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 27 Jan 2020 00:43:02 -0000
Message-ID: <158008578202.9684.5105195913767562554@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1579871655.git.jani.nikula@intel.com>
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29_regist?=
 =?utf-8?q?er_accessors?=
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

Series: drm/i915/display: mass conversion to intel_de_*() register accessors
URL   : https://patchwork.freedesktop.org/series/72533/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7809_full -> Patchwork_16255_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16255_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-apl8/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-apl1/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +22 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb2/igt@gem_exec_schedule@in-order-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_selftest@mock_requests:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#61])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-hsw2/igt@i915_selftest@mock_requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-hsw1/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl10/igt@kms_color@pipe-a-ctm-negative.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl3/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#49]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl6/igt@gem_ctx_isolation@bcs0-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl9/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][27] ([fdo#109276] / [fdo#112080]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [FAIL][29] ([i915#679]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-glk4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-glk3/igt@gem_ctx_persistence@vecs0-mixed-process.html
    - shard-skl:          [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl10/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl5/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#110841]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-glk:          [INCOMPLETE][35] ([i915#58] / [k.org#198133]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-glk9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-glk3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb2/igt@gem_exec_schedule@promotion-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb8/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][43] ([i915#694]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-hsw1/igt@gen7_exec_parse@basic-offset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-hsw7/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][45] ([i915#413]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl9/igt@i915_selftest@mock_requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl2/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [DMESG-WARN][49] ([i915#109]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl8/igt@kms_color@pipe-b-ctm-0-5.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl1/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [FAIL][59] ([i915#49]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][65] ([i915#84]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-glk8/igt@perf@oa-exponents.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-glk3/igt@perf@oa-exponents.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][69] ([IGT#28]) -> [SKIP][70] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][71] ([i915#82]) -> [DMESG-FAIL][72] ([i915#436])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-snb2/igt@gem_eio@kms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][73] ([fdo#107724]) -> [SKIP][74] ([fdo#109349])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7809 -> Patchwork_16255

  CI-20190529: 20190529
  CI_DRM_7809: 861f608ce6e3c1a1ad320a5d18055601cff36e45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16255: 913f16a2e7ae351c8ff99c4d782a9bfa4847b862 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
