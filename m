Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABC020F712
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 16:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F2F6E10F;
	Tue, 30 Jun 2020 14:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3C6F6E10F;
 Tue, 30 Jun 2020 14:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD70AA0019;
 Tue, 30 Jun 2020 14:25:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 30 Jun 2020 14:25:30 -0000
Message-ID: <159352713080.22703.4576033759680340358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200629185848.20550-1-imre.deak@intel.com>
In-Reply-To: <20200629185848.20550-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/tgl+=3A_Fix_TBT_DPLL_fract?=
 =?utf-8?q?ional_divider_for_38=2E4MHz_ref_clock?=
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

Series: series starting with [1/2] drm/i915/tgl+: Fix TBT DPLL fractional divider for 38.4MHz ref clock
URL   : https://patchwork.freedesktop.org/series/78909/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8676_full -> Patchwork_18037_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18037_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18037_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18037_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-iclb:         [SKIP][1] ([i915#404]) -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  
Known issues
------------

  Here are the changes found in Patchwork_18037_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@sliced:
    - shard-iclb:         [PASS][3] -> [TIMEOUT][4] ([i915#1958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@gem_exec_balancer@sliced.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@gem_exec_balancer@sliced.html

  * igt@gem_mmap_gtt@ptrace:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +15 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@gem_mmap_gtt@ptrace.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@gem_mmap_gtt@ptrace.html

  * igt@i915_selftest@mock@requests:
    - shard-glk:          [PASS][7] -> [INCOMPLETE][8] ([i915#2110] / [i915#58] / [k.org#198133])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk7/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk3/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl4/igt@kms_flip@basic-plain-flip@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl9/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#2055]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][31] -> [DMESG-FAIL][32] ([i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl6/igt@kms_prime@basic-crc@second-to-first.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl4/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-wait-forked:
    - shard-iclb:         [PASS][35] -> [TIMEOUT][36] ([i915#1936])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@kms_vblank@pipe-a-wait-forked.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@kms_vblank@pipe-a-wait-forked.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl2/igt@kms_vblank@pipe-c-wait-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#1820])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-tglb:         [PASS][41] -> [DMESG-WARN][42] ([i915#402])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb7/igt@prime_mmap_kms@buffer-sharing.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb2/igt@prime_mmap_kms@buffer-sharing.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#95]) -> [PASS][46] +22 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl2/igt@gem_exec_nop@basic-parallel.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc:
    - shard-iclb:         [INCOMPLETE][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb4/igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][51] ([i915#1436] / [i915#716]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][53] ([i915#1436] / [i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][55] ([i915#402]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb2/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb7/igt@i915_module_load@reload.html

  * igt@kms_atomic_interruptible@legacy-dpms:
    - shard-kbl:          [DMESG-WARN][57] ([i915#93] / [i915#95]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_atomic_interruptible@legacy-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl3/igt@kms_atomic_interruptible@legacy-dpms.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][63] ([fdo#108145] / [i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][73] ([i915#1542]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb1/igt@perf@polling-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb3/igt@perf@polling-parameterized.html
    - shard-tglb:         [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb6/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][77] ([i915#588]) -> [SKIP][78] ([i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
    - shard-apl:          [SKIP][83] ([fdo#109271] / [i915#1635]) -> [SKIP][84] ([fdo#109271]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl7/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][85] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][86] ([fdo#108145] / [i915#1635] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][87], [FAIL][88], [FAIL][89]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> [FAIL][90] ([i915#1635])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl8/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8676 -> Patchwork_18037

  CI-20190529: 20190529
  CI_DRM_8676: 90573bcfde94b770410e07294c914b2c630d3999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18037: 06139c9eefa6a6cebf31d6c8a560fe29aeee0a05 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
