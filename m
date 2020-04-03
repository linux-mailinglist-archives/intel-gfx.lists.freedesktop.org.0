Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCDC19DC4D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532436EC27;
	Fri,  3 Apr 2020 17:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 883CE6EC27;
 Fri,  3 Apr 2020 17:02:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B728A41FB;
 Fri,  3 Apr 2020 17:02:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 03 Apr 2020 17:02:39 -0000
Message-ID: <158593335950.13350.15239572709314388187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
In-Reply-To: <20200331113735.5452-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8228_full -> Patchwork_17155_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17155_full need to be verified
  manually.
  
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

  
#### Warnings ####

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][3] ([fdo#109271]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb2/igt@i915_pm_lpsp@screens-disabled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-snb4/igt@i915_pm_lpsp@screens-disabled.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8228_full and Patchwork_17155_full:

### New IGT tests (1) ###

  * igt@i915_pm_lpsp@non-edp-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.77] s

  

Known issues
------------

  Here are the changes found in Patchwork_17155_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@gem_exec_schedule@in-order-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#1526])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#1527])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-glk:          [PASS][21] -> [SKIP][22] ([fdo#109271]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk2/igt@i915_pm_rpm@fences-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk9/igt@i915_pm_rpm@fences-dpms.html
    - shard-skl:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl1/igt@i915_pm_rpm@fences-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@i915_pm_rpm@fences-dpms.html
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#579]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb6/igt@i915_pm_rpm@fences-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#579]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([i915#1430] / [i915#58] / [i915#656] / [k.org#198133])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk4/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@i915_suspend@forcewake.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#129])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#129])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#129])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl4/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-legacy-gamma:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#71])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_color@pipe-c-legacy-gamma.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@kms_color@pipe-c-legacy-gamma.html
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#71])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_color@pipe-c-legacy-gamma.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@kms_color@pipe-c-legacy-gamma.html
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#71])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@kms_color@pipe-c-legacy-gamma.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl10/igt@kms_color@pipe-c-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#54] / [i915#93] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#300])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#54])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#72])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109349])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#52] / [i915#54]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][59] -> [FAIL][60] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
    - shard-apl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#52] / [i915#54] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [PASS][63] -> [FAIL][64] ([i915#64] / [i915#93] / [i915#95])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl1/igt@kms_fbcon_fbt@fbc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [PASS][65] -> [FAIL][66] ([i915#1525])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl7/igt@kms_fbcon_fbt@fbc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#79])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#79])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][71] -> [FAIL][72] ([i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][73] -> [FAIL][74] ([i915#699] / [i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - shard-kbl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#93] / [i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
    - shard-apl:          [PASS][77] -> [FAIL][78] ([fdo#108145] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([fdo#108145]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][81] -> [FAIL][82] ([i915#1559] / [i915#93] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#1559] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb4/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][87] -> [INCOMPLETE][88] ([i915#460])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf@invalid-open-flags:
    - shard-tglb:         [PASS][89] -> [SKIP][90] ([i915#405])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb3/igt@perf@invalid-open-flags.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@perf@invalid-open-flags.html
    - shard-apl:          [PASS][91] -> [SKIP][92] ([fdo#109271])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@perf@invalid-open-flags.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl2/igt@perf@invalid-open-flags.html
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#405])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb5/igt@perf@invalid-open-flags.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@perf@invalid-open-flags.html
    - shard-kbl:          [PASS][95] -> [SKIP][96] ([fdo#109271])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@perf@invalid-open-flags.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl4/igt@perf@invalid-open-flags.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][97] ([i915#1528]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][99] ([fdo#110854]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][101] ([fdo#109276] / [i915#677]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][103] ([i915#677]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][105] ([fdo#112146]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb5/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][107] ([fdo#109276]) -> [PASS][108] +11 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][111] ([i915#716]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_lpsp@edp-native:
    - shard-iclb:         [SKIP][113] ([fdo#109301]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@i915_pm_lpsp@edp-native.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb6/igt@i915_pm_lpsp@edp-native.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          [SKIP][115] ([fdo#109271]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl4/igt@i915_pm_lpsp@screens-disabled.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl2/igt@i915_pm_lpsp@screens-disabled.html
    - shard-tglb:         [SKIP][117] ([fdo#109301]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-kbl:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@i915_pm_lpsp@screens-disabled.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl3/igt@i915_pm_lpsp@screens-disabled.html
    - shard-apl:          [SKIP][121] ([fdo#109271]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@i915_pm_lpsp@screens-disabled.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@i915_pm_lpsp@screens-disabled.html
    - shard-glk:          [SKIP][123] ([fdo#109271]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@i915_pm_lpsp@screens-disabled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][125] ([i915#656]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@i915_selftest@live@execlists.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][127] ([i915#1531]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb8/igt@i915_selftest@live@requests.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-tglb1/igt@i915_selftest@live@requests.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-kbl:          [FAIL][129] ([i915#1119] / [i915#93] / [i915#95]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-kbl:          [FAIL][131] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][132] +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-glk:          [FAIL][135] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][137] ([i915#52] / [i915#54]) -> [PASS][138] +5 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][139] ([i915#34]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_flip@plain-flip-ts-check.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-glk2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [FAIL][141] ([i915#49]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][143] ([i915#1188]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-apl:          [FAIL][145] ([i915#53] / [i915#95]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
    - shard-kbl:          [FAIL][147] ([i915#53] / [i915#93] / [i915#95]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][149] ([i915#155]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-kbl:          [FAIL][151] ([fdo#108145] / [i915#93] / [i915#95]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-apl:          [FAIL][153] ([fdo#108145] / [i915#95]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
    - shard-skl:          [FAIL][155] ([fdo#108145]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][157] ([fdo#109441]) -> [PASS][158] +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][159] ([fdo#112080]) -> [PASS][160] +9 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][161] ([i915#658]) -> [SKIP][162] ([i915#588])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][163] ([i915#165] / [i915#180]) -> [DMESG-WARN][164] ([i915#180])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/shard-kbl2/igt@kms_flip@flip-vs-suspend-i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
