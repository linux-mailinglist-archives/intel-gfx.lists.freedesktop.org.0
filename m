Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D481FC215
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD416E9B3;
	Tue, 16 Jun 2020 23:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80E606E227;
 Tue, 16 Jun 2020 23:02:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79306A47E8;
 Tue, 16 Jun 2020 23:02:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Tue, 16 Jun 2020 23:02:55 -0000
Message-ID: <159234857546.4597.17946911787141602333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616145452.GA25291@embeddedor>
In-Reply-To: <20200616145452.GA25291@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_fix_inconsistent_IS=5FERR_and_PTR=5FERR_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/selftests: fix inconsistent IS_ERR and PTR_ERR (rev2)
URL   : https://patchwork.freedesktop.org/series/38366/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8635_full -> Patchwork_17965_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17965_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17965_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17965_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-mixed@vecs0:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@gem_ctx_persistence@engines-mixed@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl3/igt@gem_ctx_persistence@engines-mixed@vecs0.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@gem_exec_balancer@bonded-early.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb2/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw2/igt@gem_exec_whisper@basic-normal.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-hsw4/igt@gem_exec_whisper@basic-normal.html

  
Known issues
------------

  Here are the changes found in Patchwork_17965_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#1528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_persistence@process:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl4/igt@gem_ctx_persistence@process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl7/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#95]) +19 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl8/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl7/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-glk4/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [PASS][15] -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw5/igt@gem_shrink@reclaim.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-hsw2/igt@gem_shrink@reclaim.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-hsw6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1928])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982]) +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl2/igt@kms_psr@suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl6/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#1820])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs:
    - shard-apl:          [DMESG-WARN][43] ([i915#95]) -> [PASS][44] +20 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@gem_ctx_freq@sysfs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl3/igt@gem_ctx_freq@sysfs.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk5/igt@gem_exec_schedule@smoketest-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-glk6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest@bcs0:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1829]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb1/igt@gem_exec_schedule@smoketest@bcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb8/igt@gem_exec_schedule@smoketest@bcs0.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl9/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl2/igt@i915_module_load@reload.html
    - shard-tglb:         [DMESG-WARN][51] ([i915#402]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb8/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb6/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][53] ([IGT#5]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [FAIL][67] ([i915#1930]) -> [INCOMPLETE][68] ([i915#1926])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl3/igt@gem_exec_reloc@basic-concurrent0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl3/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-tglb:         [DMESG-FAIL][71] ([i915#1149] / [i915#1982]) -> [FAIL][72] ([i915#1149] / [i915#315])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@kms_color@pipe-c-ctm-0-25.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-tglb2/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-FAIL][74] ([i915#54] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [DMESG-FAIL][75] ([i915#95]) -> [FAIL][76] ([i915#1525])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl4/igt@kms_fbcon_fbt@fbc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][77] ([i915#1525]) -> [DMESG-FAIL][78] ([i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][80] ([fdo#108145] / [i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1829]: https://gitlab.freedesktop.org/drm/intel/issues/1829
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17965

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17965: c02b027d9362eea5bc00596c8d3ba31dc4a9aac5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17965/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
