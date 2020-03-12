Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39061830CA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93266E21D;
	Thu, 12 Mar 2020 13:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AEFC6E1C4;
 Thu, 12 Mar 2020 13:05:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46C60A0091;
 Thu, 12 Mar 2020 13:05:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Thu, 12 Mar 2020 13:05:03 -0000
Message-ID: <158401830325.4949.5969683365238219177@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Limit_audio_CDCLK=3E=3D2*BCLK_constraint_back_to_GLK_o?=
 =?utf-8?q?nly_=28rev3=29?=
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

Series: drm/i915: Limit audio CDCLK>=2*BCLK constraint back to GLK only (rev3)
URL   : https://patchwork.freedesktop.org/series/71525/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8121_full -> Patchwork_16933_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16933_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16933_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16933_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-tglb3/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-tglb6/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@perf}:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-tglb5/igt@i915_selftest@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_16933_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +10 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#1340])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110841])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [i915#677]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +16 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([i915#189])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][22] -> [FAIL][23] ([i915#413])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-tglb8/igt@i915_pm_rps@waitboost.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][24] -> [INCOMPLETE][25] ([i915#58] / [i915#656] / [k.org#198133])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-glk6/igt@i915_selftest@live@execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-glk4/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][26] -> [INCOMPLETE][27] ([i915#155])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#300])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#79])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#1188]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109642] / [fdo#111068])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl8/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl9/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][44] ([fdo#112080]) -> [PASS][45] +16 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [INCOMPLETE][46] ([i915#1402]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl6/igt@gem_ctx_persistence@close-replace-race.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][48] ([fdo#110854]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][54] ([fdo#109276]) -> [PASS][55] +26 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][58] ([i915#454]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][60] ([i915#413]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][62] ([i915#54]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][66] ([i915#52] / [i915#54]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][68] ([i915#61]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][70] ([i915#34]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [FAIL][72] ([i915#49]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][74] ([i915#123] / [i915#69]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][76] ([i915#1188]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][78] ([fdo#108145]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][82] ([i915#31]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-apl2/igt@kms_setmode@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][86] ([i915#1402]) -> [TIMEOUT][87] ([i915#1340])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][88] ([i915#1322]) -> [TIMEOUT][89] ([fdo#111732] / [i915#1322])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-apl3/igt@gem_linear_blits@normal.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-apl3/igt@gem_linear_blits@normal.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][90] ([i915#588]) -> [SKIP][91] ([i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][92], [FAIL][93]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][94] ([i915#92])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-kbl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/shard-kbl4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8121 -> Patchwork_16933

  CI-20190529: 20190529
  CI_DRM_8121: c2e15accdf0c2b6e8b766659acc8159dc19c8869 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16933: 76d4a408c88bce5a8974c49df75fc8cca6879421 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16933/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
