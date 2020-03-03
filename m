Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC47176A38
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 02:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C8E6E90A;
	Tue,  3 Mar 2020 01:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B947D6E914;
 Tue,  3 Mar 2020 01:51:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2401A0019;
 Tue,  3 Mar 2020 01:51:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 01:51:47 -0000
Message-ID: <158320030769.15379.14737147582888786701@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Nuke_pointless_div_by_6?=
 =?utf-8?q?4bit?=
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

Series: series starting with [1/6] drm/i915: Nuke pointless div by 64bit
URL   : https://patchwork.freedesktop.org/series/74145/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8043_full -> Patchwork_16780_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16780_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16780_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16780_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-tglb:         [SKIP][1] ([fdo#111827]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-tglb8/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-tglb6/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  
Known issues
------------

  Here are the changes found in Patchwork_16780_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([fdo#103665] / [i915#1291])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@default:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk9/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk6/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#1239] / [i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk9/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([fdo#111870] / [i915#836])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl10/igt@gem_userptr_blits@sync-unmap-after-close.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl7/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#221])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-apl4/igt@kms_setmode@basic.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +17 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@prime_busy@after-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb3/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@i915_suspend@forcewake.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][63] ([i915#899]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][65] ([i915#173]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb1/igt@kms_psr@no_drrs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +15 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +17 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * igt@prime_vgem@sync-bsd:
    - shard-skl:          [INCOMPLETE][73] ([i915#409]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl9/igt@prime_vgem@sync-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl10/igt@prime_vgem@sync-bsd.html

  
#### Warnings ####

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-snb:          [INCOMPLETE][75] ([i915#82]) -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-snb2/igt@i915_pm_rpm@cursor-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-snb6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         [FAIL][77] -> [SKIP][78] ([fdo#110725] / [fdo#111614])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-iclb8/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][79] ([k.org#202321]) -> [FAIL][80] ([i915#1356] / [k.org#202321])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk2/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-glk5/igt@runner@aborted.html
    - shard-skl:          [FAIL][81] ([i915#69]) -> ([FAIL][82], [FAIL][83]) ([fdo#111870] / [i915#1356] / [i915#69])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl9/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/shard-skl5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16780

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16780: a49c4e236c8f13c67eca85aa1e03b4e6adc9f1d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
