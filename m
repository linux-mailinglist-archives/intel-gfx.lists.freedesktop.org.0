Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6164D4630
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 12:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7130810E26C;
	Thu, 10 Mar 2022 11:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6944B10E26C;
 Thu, 10 Mar 2022 11:45:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62255AA01E;
 Thu, 10 Mar 2022 11:45:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8603697520666295039=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Thu, 10 Mar 2022 11:45:45 -0000
Message-ID: <164691274538.17006.10354872893284763478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220310051853.30440-1-matthew.s.atwood@intel.com>
In-Reply-To: <20220310051853.30440-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uapi=3A_Add_DRM=5FI915=5FQUERY=5FGEOMETRY=5FSUBSLICES_=28?=
 =?utf-8?q?rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8603697520666295039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES (rev2)
URL   : https://patchwork.freedesktop.org/series/101219/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11347_full -> Patchwork_22529_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22529_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@mock@vma:
    - {shard-rkl}:        NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@i915_selftest@mock@vma.html

  * {igt@kms_setmode@basic@pipe-b-vga-1}:
    - shard-snb:          [FAIL][2] ([i915#31]) -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-snb7/igt@kms_setmode@basic@pipe-b-vga-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-snb4/igt@kms_setmode@basic@pipe-b-vga-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_22529_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-apl:          NOTRUN -> [SKIP][4] ([fdo#109271]) +157 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_shared@q-smoketest@bcs0:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@gem_ctx_shared@q-smoketest@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk5/igt@gem_ctx_shared@q-smoketest@bcs0.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([i915#4525])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@gem_lmem_swapping@random.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#4171])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#3297])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#3318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#2527] / [i915#2856])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#5286])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#5286])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3743])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111615] / [i915#3689]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278] / [fdo#109279])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109279] / [i915#3359])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2346])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#5287])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109274])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#2122])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +189 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109280]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1188])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl1/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#2530])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf@mi-rpc:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109289]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@perf@mi-rpc.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109291])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@prime_nv_pcopy@test1_macro.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109291])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][58] ([i915#5098])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][59] ([i915#5098])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#2994])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2994])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][63] ([i915#2582]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@fbdev@unaligned-read.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][65] ([i915#658]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb7/igt@feature_discovery@psr2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][67] ([i915#2481] / [i915#3070]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@bcs0:
    - {shard-rkl}:        [INCOMPLETE][69] ([i915#3371]) -> ([PASS][70], [PASS][71])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-4/igt@gem_exec_capture@pi@bcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@gem_exec_capture@pi@bcs0.html
    - shard-iclb:         [INCOMPLETE][72] ([i915#3371]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb5/igt@gem_exec_capture@pi@bcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][74] ([i915#2846]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@gem_exec_fair@basic-pace@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_mmap_offset@open-flood:
    - {shard-rkl}:        [INCOMPLETE][86] ([i915#5080]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@gem_mmap_offset@open-flood.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-2/igt@gem_mmap_offset@open-flood.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][88] ([i915#1373] / [i915#4939] / [i915#5230]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-snb:          [TIMEOUT][90] ([i915#4995]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-snb5/igt@gem_workarounds@suspend-resume-context.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-snb2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        [SKIP][92] ([i915#3012]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@i915_pm_backlight@fade.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][94] ([i915#454]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
    - {shard-tglu}:       [FAIL][96] ([i915#454]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-dg1}:        [SKIP][98] ([i915#1397]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][100] -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl10/igt@i915_selftest@live@hangcheck.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl8/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][102] ([i915#402]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-4/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][104] ([i915#1845] / [i915#4098]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][106] ([i915#1149] / [i915#1849]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_color@pipe-a-ctm-max.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - {shard-rkl}:        [SKIP][108] ([fdo#112022] / [i915#4070]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - {shard-rkl}:        [SKIP][110] ([fdo#112022]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#4070]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-skl:          [INCOMPLETE][116] ([i915#1373]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - {shard-rkl}:        [SKIP][118] ([fdo#111825] / [i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - {shard-rkl}:        [SKIP][120] ([i915#4070]) -> ([PASS][121], [PASS][122])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - {shard-rkl}:        [SKIP][123] ([fdo#111314] / [i915#4369]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][125] ([i915#79]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][127] ([i915#2122]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][129] ([i915#79]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][131] ([i915#3701]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][133] ([i915#1849]) -> [PASS][134] +10 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [FAIL][135] ([i915#1188]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl4/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_invalid_mode@zero-clock:
    - {shard-rkl}:        [SKIP][137] ([i915#4278]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#3558]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][141] ([fdo#108145] / [i915#265]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - {shard-rkl}:        ([SKIP][143], [SKIP][144]) ([i915#1845]) -> [PASS][145]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [144]: https://intel-gfx-ci.01.org/tree/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/index.html

--===============8603697520666295039==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101219/">https://patchwork.freedesktop.org/series/101219/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11347_full -&gt; Patchwork_22529_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22529_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@i915_selftest@mock@vma.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_setmode@basic@pipe-b-vga-1}:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-snb7/igt@kms_setmode@basic@pipe-b-vga-1.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-snb4/igt@kms_setmode@basic@pipe-b-vga-1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22529_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@feature_discovery@display-4x.html">SKIP</a> ([fdo#109271]) +157 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@gem_ctx_shared@q-smoketest@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk5/igt@gem_ctx_shared@q-smoketest@bcs0.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +189 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl1/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@perf@mi-rpc.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@syncobj_timeline@transfer-timeline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl4/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@sysfs_clients@fair-7.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-4/igt@gem_exec_capture@pi@bcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@gem_exec_capture@pi@bcs0.html">PASS</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb5/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb7/igt@gem_exec_capture@pi@bcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@open-flood:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@gem_mmap_offset@open-flood.html">INCOMPLETE</a> ([i915#5080]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-2/igt@gem_mmap_offset@open-flood.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl6/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> ([i915#1373] / [i915#4939] / [i915#5230]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl4/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-snb5/igt@gem_workarounds@suspend-resume-context.html">TIMEOUT</a> ([i915#4995]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-snb2/igt@gem_workarounds@suspend-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@i915_pm_backlight@fade.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl10/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-tglu-4/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-torture-bo:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-bo.html">INCOMPLETE</a> ([i915#1373]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl9/igt@kms_cursor_legacy@all-pipes-torture-bo.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html">SKIP</a> ([i915#4070]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">SKIP</a> ([fdo#111314] / [i915#4369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl4/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22529/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-128:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11347/shard-rkl-2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/">SKIP</a>) ([i915#1845]) -&gt; [PASS][145]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8603697520666295039==--
