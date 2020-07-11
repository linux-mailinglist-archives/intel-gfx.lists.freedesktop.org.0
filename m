Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD5A21C6A2
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jul 2020 00:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4C96E141;
	Sat, 11 Jul 2020 22:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 991656E135;
 Sat, 11 Jul 2020 22:55:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BB8AA41FB;
 Sat, 11 Jul 2020 22:55:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 11 Jul 2020 22:55:21 -0000
Message-ID: <159450812154.9234.10523049849223514928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200711203236.12330-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200711203236.12330-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ignore_irq_enabling_on_the_virtual_engines?=
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

Series: drm/i915/gt: Ignore irq enabling on the virtual engines
URL   : https://patchwork.freedesktop.org/series/79383/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8732_full -> Patchwork_18141_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18141_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18141_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18141_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@unwedge-stress:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-hsw1/igt@gem_eio@unwedge-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-hsw6/igt@gem_eio@unwedge-stress.html

  * igt@perf_pmu@busy-idle:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-hsw7/igt@perf_pmu@busy-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_18141_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#198])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl5/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#1528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2079])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl4/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - shard-tglb:         [PASS][10] -> [DMESG-WARN][11] ([i915#402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb7/igt@gem_exec_fence@nb-await@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb2/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][12] -> [TIMEOUT][13] ([i915#1958] / [i915#2119]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-snb5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1436] / [i915#716])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#750])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb8/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([fdo#103375])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk7/igt@i915_suspend@forcewake.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][20] -> [DMESG-FAIL][21] ([i915#118] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_flip@2x-flip-vs-panning@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-hsw7/igt@kms_flip@2x-flip-vs-panning@ab-vga1-hdmi-a1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-hsw6/igt@kms_flip@2x-flip-vs-panning@ab-vga1-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2122])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1188])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl1/igt@kms_hdr@bpc-switch.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109642] / [fdo#111068])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109441])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#93] / [i915#95])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@kms_vblank@pipe-b-wait-busy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl6/igt@kms_vblank@pipe-b-wait-busy.html

  * igt@perf@blocking-parameterized:
    - shard-tglb:         [PASS][42] -> [FAIL][43] ([i915#1542])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb6/igt@perf@blocking-parameterized.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb8/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1635] / [i915#1982]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl1/igt@perf_pmu@module-unload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl4/igt@perf_pmu@module-unload.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#1755])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk4/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk8/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-apl:          [PASS][48] -> [FAIL][49] ([i915#1635] / [i915#1755])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#1755])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl1/igt@sysfs_timeslice_duration@timeout@vecs0.html

  * igt@tools_test@tools_test:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#1635] / [i915#95]) +22 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@tools_test@tools_test.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl7/igt@tools_test@tools_test.html

  
#### Possible fixes ####

  * igt@gem_cs_tlb@engines@rcs0:
    - shard-kbl:          [DMESG-WARN][54] ([i915#93] / [i915#95]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@gem_cs_tlb@engines@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl6/igt@gem_cs_tlb@engines@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][56] ([i915#1930]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-tglb:         [DMESG-WARN][58] ([i915#402]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb7/igt@gem_fence_thrash@bo-copy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb1/igt@gem_fence_thrash@bo-copy.html

  * igt@i915_selftest@mock@requests:
    - shard-iclb:         [INCOMPLETE][60] ([i915#2110]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb1/igt@i915_selftest@mock@requests.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb2/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][62] ([i915#118] / [i915#95]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65] +12 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-glk:          [DMESG-WARN][66] ([i915#1982]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@pipe-b-single-move:
    - shard-snb:          [INCOMPLETE][68] ([i915#82]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb1/igt@kms_cursor_legacy@pipe-b-single-move.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-snb5/igt@kms_cursor_legacy@pipe-b-single-move.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [DMESG-WARN][74] ([i915#1635] / [i915#95]) -> [PASS][75] +14 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][76] ([i915#1982]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][78] ([i915#1188]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][80] ([i915#1982]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb2/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][84] ([fdo#109441]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][86] ([i915#1542]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb7/igt@perf@blocking-parameterized.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb5/igt@perf@blocking-parameterized.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [FAIL][88] ([i915#1755]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@file:
    - shard-snb:          [SKIP][90] ([fdo#109271] / [i915#1099]) -> [TIMEOUT][91] ([i915#1958] / [i915#2119])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_ctx_persistence@file.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-snb5/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][92] ([i915#1930]) -> [TIMEOUT][93] ([i915#1958] / [i915#2119])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-snb:          [SKIP][94] ([fdo#109271]) -> [TIMEOUT][95] ([i915#1958] / [i915#2119])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-snb5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [DMESG-FAIL][96] ([i915#1982]) -> [FAIL][97] ([i915#454])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][98] ([i915#1319] / [i915#2119]) -> [TIMEOUT][99] ([i915#1319] / [i915#1958] / [i915#2119])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl6/igt@kms_content_protection@atomic.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-apl:          [DMESG-FAIL][100] ([i915#1635] / [i915#54] / [i915#95]) -> [DMESG-WARN][101] ([i915#1635] / [i915#95])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][102] ([i915#1226]) -> [SKIP][103] ([fdo#109349])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][104] ([fdo#108145] / [i915#1635] / [i915#265]) -> [DMESG-FAIL][105] ([fdo#108145] / [i915#1635] / [i915#95])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][106] ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][107], [FAIL][108]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-kbl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][109], [FAIL][110]) ([i915#2110]) -> ([FAIL][111], [FAIL][112]) ([i915#1233] / [i915#2110] / [i915#529])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-tglb8/igt@runner@aborted.html
    - shard-skl:          [FAIL][113] ([i915#2110] / [i915#69]) -> ([FAIL][114], [FAIL][115]) ([i915#1611] / [i915#69])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl8/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/shard-skl3/igt@runner@aborted.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8732 -> Patchwork_18141

  CI-20190529: 20190529
  CI_DRM_8732: 4c05e94181f1a8ea4c91a5bd90e81f3275b51332 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5732: 8a50ca9985d2dbb0293186c3286af46468fb4b84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18141: 0151190c031a08478089ffda706dbf4e230860dd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18141/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
