Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035062DC9DD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 01:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF8C89ED3;
	Thu, 17 Dec 2020 00:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84DEB89BFB;
 Thu, 17 Dec 2020 00:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D04AA7DFF;
 Thu, 17 Dec 2020 00:17:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Dec 2020 00:17:08 -0000
Message-ID: <160816422847.2008.9444697800776419520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201216165850.25030-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201216165850.25030-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Encode_fence_specific_waitqueue_behaviour_into_the_wai?=
 =?utf-8?q?t=2Eflags?=
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
Content-Type: multipart/mixed; boundary="===============0093491869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0093491869==
Content-Type: multipart/alternative;
 boundary="===============8353305868934189127=="

--===============8353305868934189127==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
URL   : https://patchwork.freedesktop.org/series/85012/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9494_full -> Patchwork_19162_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19162_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19162_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19162_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-hsw4/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_19162_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@color_evict:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3] ([i915#2485])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl5/igt@drm_mm@all@color_evict.html

  * igt@gem_exec_gttfill@engines@rcs0:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-glk9/igt@gem_exec_gttfill@engines@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2389]) +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#109292])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][8] ([i915#2658])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1699]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl10/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([fdo#109293] / [fdo#109506])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@i915_pm_rpm@pc8-residency.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +33 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl9/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#96])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][18] -> [FAIL][19] ([i915#2370])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109274] / [fdo#109278])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#2346])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109278]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109274]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2122])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109280]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109289]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#198])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-snb:          [PASS][32] -> [SKIP][33] ([fdo#109271]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-snb6/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-snb6/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2437])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109291])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_vgem@fence-read-hang:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109295])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@prime_vgem@fence-read-hang.html

  
#### Possible fixes ####

  * igt@drm_mm@all@insert_range:
    - shard-skl:          [INCOMPLETE][41] ([CI#80] / [i915#2485]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl7/igt@drm_mm@all@insert_range.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl5/igt@drm_mm@all@insert_range.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-iclb:         [INCOMPLETE][43] ([i915#1185]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * {igt@gem_exec_balancer@fairslice}:
    - shard-tglb:         [FAIL][45] ([i915#2802]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-tglb6/igt@gem_exec_balancer@fairslice.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb7/igt@gem_exec_balancer@fairslice.html

  * {igt@gem_exec_schedule@u-fairslice@vcs0}:
    - shard-skl:          [DMESG-WARN][47] ([i915#1610]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl6/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][49] ([i915#198] / [i915#2405]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-apl:          [FAIL][53] ([i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][55] ([i915#2346]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][57] ([i915#2122]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#198]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][63] ([i915#2684]) -> [WARN][64] ([i915#1804] / [i915#2684])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][65] ([i915#2681] / [i915#2684]) -> [WARN][66] ([i915#2684])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][67] ([i915#2295] / [i915#483]) -> [FAIL][68] ([i915#2295])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-hsw2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][69], [FAIL][70]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724]) -> ([FAIL][71], [FAIL][72]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724] / [i915#483])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb4/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb5/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][73], [FAIL][74]) ([i915#1602] / [i915#2295] / [i915#2722]) -> ([FAIL][75], [FAIL][76], [FAIL][77]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2722])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-tglb3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-tglb2/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb2/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2485]: https://gitlab.freedesktop.org/drm/intel/issues/2485
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9494 -> Patchwork_19162

  CI-20190529: 20190529
  CI_DRM_9494: 0daa598dbcfd00141cb7e287d6e1369916097161 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19162: 34feaeddc57f385045e4d85f870ff38c30b45c2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/index.html

--===============8353305868934189127==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Encode fence specific waitqueue be=
haviour into the wait.flags</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85012/">https://patchwork.freedesktop.org/series/85012/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19162/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19162/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9494_full -&gt; Patchwork_19162_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19162_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19162_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19162_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-b-query-forked-busy-hang:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-hsw7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19162/shard-hsw4/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">INCOM=
PLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19162_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@color_evict:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-skl5/igt@drm_mm@all@color_evict.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
485">i915#2485</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/sha=
rd-glk9/igt@gem_exec_gttfill@engines@rcs0.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_exec_reloc@basic-many-act=
ive@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109292"=
>fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@gem_pwrite@basic-exhaustion.h=
tml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-skl10/igt@gem_userptr_blits@process-exi=
t-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@i915_pm_rpm@pc8-residency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
93">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_color_chamelium@pipe-a-ct=
m-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19162/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-skl9/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19162/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atom=
ic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19162/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#23=
70</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-=
flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-skl10/igt@kms_cursor_legacy@flip-vs-cur=
sor-legacy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_cursor_legacy@pipe-d-sing=
le-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19162/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-=
skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_pipe_b_c_ivb@pipe-b-doubl=
e-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19162/shard-skl7/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-a-planes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-snb6/igt@kms_plane@plane-position-covered-pipe-a-planes.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19162/shard-snb6/igt@kms_plane@plane-position-covered-pipe-a-planes=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19162/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/s=
hard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@kms_writeback@writeback-pixel=
-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291"=
>fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19162/shard-iclb2/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
295">fdo#109295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert_range:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl7/igt@drm_mm@all@insert_range.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2485">i91=
5#2485</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19162/shard-skl5/igt@drm_mm@all@insert_range.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1185">i915#1185</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19162/shard-iclb2/igt@gem_ctx_isolation@preservation-s3@vecs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_balancer@fairslice}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-tglb6/igt@gem_exec_balancer@fairslice.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2802">i915#2802</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1916=
2/shard-tglb7/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19162/shard-skl6/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i9=
15#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/240=
5">i915#2405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19162/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19162/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.h=
tml">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19162/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19162/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19162/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19162/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19162/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-d=
pms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19162/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19162/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9494/shard-hsw1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-hsw=
2/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2724">i915#2724</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-iclb4/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19162/shard-iclb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915=
#483</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-tglb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
162/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19162/shard-tglb8/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9494 -&gt; Patchwork_19162</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9494: 0daa598dbcfd00141cb7e287d6e1369916097161 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19162: 34feaeddc57f385045e4d85f870ff38c30b45c2e @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8353305868934189127==--

--===============0093491869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0093491869==--
