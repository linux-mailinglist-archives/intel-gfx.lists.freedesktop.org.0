Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFF619AD9B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 16:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F016E94B;
	Wed,  1 Apr 2020 14:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A89E6E94A;
 Wed,  1 Apr 2020 14:17:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53911A00C7;
 Wed,  1 Apr 2020 14:17:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 01 Apr 2020 14:17:33 -0000
Message-ID: <158575065333.25625.14709776325783740131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
In-Reply-To: <20200331113735.5452-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev6=29?=
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

Series: i915 lpsp support for lpsp igt (rev6)
URL   : https://patchwork.freedesktop.org/series/74648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8228_full -> Patchwork_17155_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17155_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17155_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17155_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_pm_lpsp@non-edp-lpsp} (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@i915_pm_lpsp@non-edp-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@i915_pm_lpsp@non-edp-lpsp.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-tglb:         [PASS][3] -> [SKIP][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb6/igt@i915_pm_rpm@fences-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-iclb:         [PASS][5] -> [SKIP][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][8] ([fdo#109271]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb2/igt@i915_pm_lpsp@screens-disabled.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-snb4/igt@i915_pm_lpsp@screens-disabled.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb}:
    - shard-glk:          NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8228_full and Patchwork_17155_full:

### New IGT tests (2) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_lpsp@non-edp-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.77] s

  

Known issues
------------

  Here are the changes found in Patchwork_17155_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112080]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +10 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@gem_exec_schedule@in-order-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#677]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +5 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180] / [i915#93] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][24] -> [TIMEOUT][25] ([i915#1526])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#1527])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-glk:          [PASS][28] -> [SKIP][29] ([fdo#109271]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk2/igt@i915_pm_rpm@fences-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk9/igt@i915_pm_rpm@fences-dpms.html
    - shard-skl:          [PASS][30] -> [SKIP][31] ([fdo#109271]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl1/igt@i915_pm_rpm@fences-dpms.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][32] -> [INCOMPLETE][33] ([i915#1430] / [i915#58] / [i915#656] / [k.org#198133])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk4/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@i915_suspend@forcewake.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#129])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
    - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#129])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#129])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl4/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-legacy-gamma:
    - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#71])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_color@pipe-c-legacy-gamma.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@kms_color@pipe-c-legacy-gamma.html
    - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#71])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_color@pipe-c-legacy-gamma.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@kms_color@pipe-c-legacy-gamma.html
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#71])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@kms_color@pipe-c-legacy-gamma.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl10/igt@kms_color@pipe-c-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-kbl:          [PASS][48] -> [FAIL][49] ([i915#54] / [i915#93] / [i915#95])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#300])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#54])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#72])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109349])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#52] / [i915#54]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][62] -> [FAIL][63] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
    - shard-apl:          [PASS][64] -> [FAIL][65] ([fdo#108145] / [i915#52] / [i915#54] / [i915#95])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#64] / [i915#93] / [i915#95])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl1/igt@kms_fbcon_fbt@fbc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [PASS][68] -> [FAIL][69] ([i915#1525])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl7/igt@kms_fbcon_fbt@fbc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][70] -> [FAIL][71] ([i915#79])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#79])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][74] -> [FAIL][75] ([i915#95])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][76] -> [FAIL][77] ([i915#699] / [i915#93] / [i915#95])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - shard-kbl:          [PASS][78] -> [FAIL][79] ([fdo#108145] / [i915#93] / [i915#95])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
    - shard-apl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#95])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([fdo#108145]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][84] -> [FAIL][85] ([i915#1559] / [i915#93] / [i915#95])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][86] -> [FAIL][87] ([i915#1559] / [i915#95])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb4/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][90] -> [INCOMPLETE][91] ([i915#460])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf@invalid-open-flags:
    - shard-tglb:         [PASS][92] -> [SKIP][93] ([i915#405])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb3/igt@perf@invalid-open-flags.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@perf@invalid-open-flags.html
    - shard-apl:          [PASS][94] -> [SKIP][95] ([fdo#109271])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@perf@invalid-open-flags.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@perf@invalid-open-flags.html
    - shard-iclb:         [PASS][96] -> [SKIP][97] ([i915#405])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb5/igt@perf@invalid-open-flags.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@perf@invalid-open-flags.html
    - shard-kbl:          [PASS][98] -> [SKIP][99] ([fdo#109271])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@perf@invalid-open-flags.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@perf@invalid-open-flags.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][100] ([i915#1528]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][102] ([fdo#110854]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][104] ([fdo#109276] / [i915#677]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][106] ([i915#677]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][108] ([fdo#112146]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb5/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][110] ([fdo#109276]) -> [PASS][111] +11 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][114] -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_lpsp@edp-native:
    - shard-iclb:         [SKIP][116] ([fdo#109301]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@i915_pm_lpsp@edp-native.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@i915_pm_lpsp@edp-native.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          [SKIP][118] ([fdo#109271]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl4/igt@i915_pm_lpsp@screens-disabled.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@i915_pm_lpsp@screens-disabled.html
    - shard-tglb:         [SKIP][120] ([fdo#109301]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-kbl:          [SKIP][122] ([fdo#109271]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@i915_pm_lpsp@screens-disabled.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl3/igt@i915_pm_lpsp@screens-disabled.html
    - shard-apl:          [SKIP][124] ([fdo#109271]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@i915_pm_lpsp@screens-disabled.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@i915_pm_lpsp@screens-disabled.html
    - shard-glk:          [SKIP][126] ([fdo#109271]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@i915_pm_lpsp@screens-disabled.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][128] ([i915#656]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@i915_selftest@live@execlists.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][130] ([i915#1531]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb8/igt@i915_selftest@live@requests.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@i915_selftest@live@requests.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-kbl:          [FAIL][132] ([i915#1119] / [i915#93] / [i915#95]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-kbl:          [FAIL][134] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137] +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-glk:          [FAIL][138] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][140] ([i915#52] / [i915#54]) -> [PASS][141] +5 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][142] ([i915#34]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_flip@plain-flip-ts-check.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [FAIL][144] ([i915#49]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][146] ([i915#1188]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-apl:          [FAIL][148] ([i915#53] / [i915#95]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
    - shard-kbl:          [FAIL][150] ([i915#53] / [i915#93] / [i915#95]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][152] ([i915#155]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-kbl:          [FAIL][154] ([fdo#108145] / [i915#93] / [i915#95]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-apl:          [FAIL][156] ([fdo#108145] / [i915#95]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
    - shard-skl:          [FAIL][158] ([fdo#108145]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][160] ([fdo#109441]) -> [PASS][161] +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][162] ([fdo#112080]) -> [PASS][163] +9 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html
   [163]: https://intel-gfx-ci.01.org/tree/dr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
