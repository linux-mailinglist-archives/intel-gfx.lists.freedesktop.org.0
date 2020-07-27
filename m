Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C32122EA42
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 12:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6386789854;
	Mon, 27 Jul 2020 10:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B66C389824;
 Mon, 27 Jul 2020 10:45:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6D6DA73C7;
 Mon, 27 Jul 2020 10:45:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Jul 2020 10:45:22 -0000
Message-ID: <159584672264.26747.9528709663215701516@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200727084058.7204-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200727084058.7204-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_register_reads_around_GT_interrupts?=
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
Content-Type: multipart/mixed; boundary="===============0758403858=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0758403858==
Content-Type: multipart/alternative;
 boundary="===============4008912430245232258=="

--===============4008912430245232258==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reduce register reads around GT interrupts
URL   : https://patchwork.freedesktop.org/series/79919/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8793_full -> Patchwork_18244_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18244_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18244_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18244_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@fence:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-tglb2/igt@i915_selftest@mock@fence.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl6/igt@i915_selftest@mock@fence.html
    - shard-iclb:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb1/igt@i915_selftest@mock@fence.html
    - shard-hsw:          NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-hsw2/igt@i915_selftest@mock@fence.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-glk9/igt@i915_selftest@mock@fence.html

  
Known issues
------------

  Here are the changes found in Patchwork_18244_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2079])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-tglb3/igt@gem_exec_balancer@bonded-early.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-tglb3/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][10] -> [DMESG-WARN][11] ([i915#402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-tglb1/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-tglb8/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#454])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][14] -> [DMESG-FAIL][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#57])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +16 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-skl4/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-iclb:         [PASS][20] -> [DMESG-WARN][21] ([i915#128])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb6/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#173])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb7/igt@kms_psr@no_drrs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed@vecs0:
    - shard-skl:          [FAIL][30] ([i915#2158]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl7/igt@gem_ctx_persistence@engines-mixed@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-skl6/igt@gem_ctx_persistence@engines-mixed@vecs0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][32] ([i915#118] / [i915#95]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_readwrite@beyond-eob:
    - shard-skl:          [DMESG-WARN][34] ([i915#1982]) -> [PASS][35] +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl7/igt@gem_readwrite@beyond-eob.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-skl8/igt@gem_readwrite@beyond-eob.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][36] ([i915#1982]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-glk7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
    - shard-kbl:          [DMESG-WARN][38] ([i915#1982]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [FAIL][40] ([i915#57]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-apl:          [DMESG-WARN][42] ([i915#1635] / [i915#1982]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-snb:          [DMESG-WARN][44] ([i915#42]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-snb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-snb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][46] ([fdo#108145] / [i915#265]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][50] ([i915#155]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][52] ([i915#1982]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-tglb5/igt@perf_pmu@module-unload.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-tglb1/igt@perf_pmu@module-unload.html
    - shard-iclb:         [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-iclb7/igt@perf_pmu@module-unload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb2/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61], [FAIL][62], [FAIL][63], [FAIL][64]) ([i915#2110]) -> [FAIL][65] ([i915#1436] / [i915#2110])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw8/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw1/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw2/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw1/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw8/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw6/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw8/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw4/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw6/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-hsw2/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][66], [FAIL][67], [FAIL][68], [FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77], [FAIL][78]) ([i915#2110]) -> [FAIL][79] ([i915#1436] / [i915#2110])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl7/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl7/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl6/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl6/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl2/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][94] ([i915#1635] / [i915#2110])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl3/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl7/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl6/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107]) ([i915#2110]) -> [FAIL][108] ([i915#1436] / [i915#2110])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl9/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl5/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl9/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl3/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl10/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-skl7/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2158]: https://gitlab.freedesktop.org/drm/intel/issues/2158
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8793 -> Patchwork_18244

  CI-20190529: 20190529
  CI_DRM_8793: 07fb4f86d0183473b5acc5751ac3dc2ff19ca4ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5748: 27b0205155bebf74c1f97d1617dbec426d2f719e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18244: 84189faf3bc4f32a7e5150c5bf4d4b430698d523 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/index.html

--===============4008912430245232258==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reduce register reads around GT in=
terrupts</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79919/">https://patchwork.freedesktop.org/series/79919/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18244/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8793_full -&gt; Patchwork_18244_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18244_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18244_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18244_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@fence:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/shard-tglb2/igt@i915_selftest@mock@fence.html"=
>INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/shard-kbl6/igt@i915_selftest@mock@fence.html">=
INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/shard-iclb1/igt@i915_selftest@mock@fence.html"=
>INCOMPLETE</a></p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/shard-hsw2/igt@i915_selftest@mock@fence.html">=
INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18244/shard-glk9/igt@i915_selftest@mock@fence.html">=
INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18244_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-tglb3/igt@gem_exec_balancer@bonded-early.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/s=
hard-tglb3/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18244/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-tglb1/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-tg=
lb8/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb4/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_182=
44/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18244/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/57">i915#57</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18244/shard-skl4/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-b-torture-bo:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-iclb6/igt@kms_cursor_legacy@pipe-b-torture-bo.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
244/shard-iclb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-=
kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-iclb7/igt@kms_psr@no_drrs.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-iclb1/ig=
t@kms_psr@no_drrs.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/173">i915#173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-ic=
lb4/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18244/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-skl7/igt@gem_ctx_persistence@engines-mixed@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2158">i=
915#2158</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18244/shard-skl6/igt@gem_ctx_persistence@engines-mixed@vecs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18244/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-skl7/igt@gem_readwrite@beyond-eob.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
244/shard-skl8/igt@gem_readwrite@beyond-eob.html">PASS</a> +8 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8793/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18244/shard-glk7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a></=
p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8793/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18244/shard-kbl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a> +=
2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/57">i915#57</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18244/shard-hsw4/igt@kms_cursor_legacy@cursor-v=
s-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18244/shard-apl8/igt@kms_draw_crc@draw-method-rg=
b565-mmap-cpu-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-snb4/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/42">i915#42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18244/shard-snb4/igt@kms_plane@plane-panning-bo=
ttom-right-suspend-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18244/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18244/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/155">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18244/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8793/shard-tglb5/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1824=
4/shard-tglb1/igt@perf_pmu@module-unload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8793/shard-iclb7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1824=
4/shard-iclb2/igt@perf_pmu@module-unload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-hsw8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8793/shard-hsw2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_87=
93/shard-hsw8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/sh=
ard-hsw8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8793/shard-hsw4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-h=
sw6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18244/shard-hsw2/igt@runner@aborted.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8793/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_87=
93/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/sh=
ard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl2/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-k=
bl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8793/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl4/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8793/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-kbl3/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2110">i915#2110</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18244/shard-kbl6/igt@runner@aborted.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#=
1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110"=
>i915#2110</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8793/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_87=
93/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8793/shard-apl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-a=
pl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8793/shard-apl2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl2/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8793/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-apl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_8793/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#211=
0</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/637">i91=
5#637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18244/shard-apl2/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8793/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8793/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl9/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_87=
93/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl5/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/sh=
ard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8793/shard-skl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-s=
kl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8793/shard-skl9/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl3/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8793/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8793/shard-skl1/igt@r=
unner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2110">i915#2110</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18244/shard-skl7/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110=
">i915#2110</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8793 -&gt; Patchwork_18244</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8793: 07fb4f86d0183473b5acc5751ac3dc2ff19ca4ff @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5748: 27b0205155bebf74c1f97d1617dbec426d2f719e @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18244: 84189faf3bc4f32a7e5150c5bf4d4b430698d523 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4008912430245232258==--

--===============0758403858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0758403858==--
