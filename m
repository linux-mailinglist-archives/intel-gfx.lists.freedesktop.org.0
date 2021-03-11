Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3202B337CBB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 19:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15046E05D;
	Thu, 11 Mar 2021 18:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C1836E04E;
 Thu, 11 Mar 2021 18:36:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65219A41FB;
 Thu, 11 Mar 2021 18:36:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Mar 2021 18:36:37 -0000
Message-ID: <161548779738.28799.1482060997873678050@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU2Vw?=
 =?utf-8?q?arate_display_version_numbering_and_add_XE=5FLPD_=28version_13?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0585589738=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0585589738==
Content-Type: multipart/alternative;
 boundary="===============1413151199739041066=="

--===============1413151199739041066==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Separate display version numbering and add XE_LPD (version 13)
URL   : https://patchwork.freedesktop.org/series/87886/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9849_full -> Patchwork_19782_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_19782_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19782_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19782_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          [TIMEOUT][1] ([i915#1729]) -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [TIMEOUT][3] ([i915#1729]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [TIMEOUT][5] ([i915#1729]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@gem_exec_reloc@basic-parallel.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl4/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [TIMEOUT][7] ([i915#1729]) -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl2/igt@gem_exec_reloc@basic-parallel.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [TIMEOUT][9] ([i915#1729]) -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb1/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_19782_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1888] / [i915#3160])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl1/igt@gem_create@create-clear.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl9/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][14] ([i915#1895] / [i915#3031])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][15] ([i915#2846])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#2842]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2389])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][24] ([i915#2389]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][25] ([i915#2389]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1610] / [i915#2803])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl1/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1610])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [PASS][30] -> [INCOMPLETE][31] ([i915#1895])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][32] -> [SKIP][33] ([i915#2190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#307])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][36] ([i915#2658])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][37] ([i915#2658])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#768])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +329 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-idle@uc:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#1317]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_userptr_blits@mmap-offset-invalidate-idle@uc.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#112306])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#454])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#103375])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@i915_suspend@forcewake.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl3/igt@i915_suspend@forcewake.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#2705])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111304])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb7/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#1982]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@kms_color@pipe-c-ctm-max.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +99 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109300] / [fdo#111066])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274] / [fdo#109278])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2346])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][62] -> [INCOMPLETE][63] ([i915#155] / [i915#180] / [i915#636])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][65] ([i915#180]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#198])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2642])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109280]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-skl:          NOTRUN -> [FAIL][70] ([i915#49])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +68 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109289])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@plane-scaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][77] ([i915#3182])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl5/igt@kms_plane_scaling@plane-scaling.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping:
    - shard-snb:          NOTRUN -> [INCOMPLETE][78] ([i915#3182])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb6/igt@kms_plane_scaling@scaler-with-clipping-clamping.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#1836])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2920])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][83] -> [SKIP][84] ([fdo#109441])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][85] ([i915#31])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-snb6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#533])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1722])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@perf@polling-small-buf.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1/igt@perf@polling-small-buf.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109291])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@prime_nv_test@i915_nv_sharing.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [PASS][90] -> [FAIL][91] ([i915#3028])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@sysfs_clients@recycle-many.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@vcs0:
    - shard-skl:          [PASS][92] -> [SKIP][93] ([fdo#109271] / [i915#3026])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@sysfs_clients@split-10@vcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl7/igt@sysfs_clients@split-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][94] ([i915#2842]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][96] ([i915#2842]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][98] ([i915#307]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][104] ([i915#2122]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][106] ([fdo#108145] / [i915#265]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][108] ([fdo#109441]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          [FAIL][110] ([i915#3028]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl3/igt@sysfs_clients@recycle-many.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@rcs0:
    - shard-skl:          [SKIP][112] ([fdo#109271] / [i915#3026]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@sysfs_clients@split-10@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl7/igt@sysfs_clients@split-10@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][114] ([i915#2842]) -> [FAIL][115] ([i915#2849])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][116] ([i915#2680] / [i915#2681]) -> [WARN][117] ([i915#1804] / [i915#2684])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         [FAIL][118] ([i915#3144]) -> [SKIP][119] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@content_type_change.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb7/igt@kms_content_protection@content_type_change.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         [FAIL][120] ([i915#3137]) -> [SKIP][121] ([i915#3116])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][122] ([i915#2920]) -> [SKIP][123] ([i915#658]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][124] ([i915#658]) -> [SKIP][125] ([i915#2920]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#180] / [i915#2426] / [i915#2505] / [i915#2724] / [i915#3002] / [i915#92])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1814] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][138], [FAIL][139], [FAIL][140]) ([i915#2426] / [i915#2724] / [i915#3002])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb5/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][141], [FAIL][142], [FAIL][143]) ([fdo#109271] / [i915#180] / [i915#3002]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2426])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl7/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl8/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl3/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][151], [FAIL][152], [FAIL][153]) ([i915#2724] / [i915#3002] / [k.org#202321]) -> ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178]) ([i915#1814] / [k.org#202321])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk6/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk2/igt@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html

--===============1413151199739041066==
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
<tr><td><b>Series:</b></td><td>Separate display version numbering and add X=
E_LPD (version 13)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87886/">https://patchwork.freedesktop.org/series/87886/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19782/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19782/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9849_full -&gt; Patchwork_19782_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_19782_full need to be verifi=
ed<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19782_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19782_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9849/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> =
([i915#1729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19782/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a>=
</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9849/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a>=
 ([i915#1729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19782/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</=
a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9849/shard-skl4/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> =
([i915#1729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19782/shard-skl4/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a>=
</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9849/shard-apl2/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> =
([i915#1729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19782/shard-apl3/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a>=
</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9849/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a>=
 ([i915#1729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19782/shard-iclb1/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</=
a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19782_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl1/igt@gem_create@create-clear.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl=
9/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_exec_balancer@hang.html">=
INCOMPLETE</a> ([i915#1895] / [i915#3031])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/sh=
ard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
782/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782=
/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#284=
2]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb4/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl6/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl1/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1978=
2/shard-kbl6/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([=
i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1978=
2/shard-apl6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#1610])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19782/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPL=
ETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/=
shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307])=
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19782/shard-apl6/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_render_copy@linear-to-veb=
ox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb7/igt@gem_userptr_blits@mmap-offset-=
invalidate-active@wb.html">SKIP</a> ([fdo#109271]) +329 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-idle@uc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gem_userptr_blits@mmap-offset=
-invalidate-idle@uc.html">SKIP</a> ([i915#1317]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl10/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl=
3/igt@i915_suspend@forcewake.html">FAIL</a> ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_big_joiner@invalid-modese=
t.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl5/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb7/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-max:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl4/igt@kms_color@pipe-c-ctm-max.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-sk=
l1/igt@kms_color@pipe-c-ctm-max.html">DMESG-WARN</a> ([i915#1982]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_color@pipe-d-ctm-max.html"=
>SKIP</a> ([fdo#109271]) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_color_chamelium@pipe-a-ct=
m-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_color_chamelium@pipe-d-de=
gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_content_protection@uevent=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
782/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-sliding.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-=
flipb-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19782/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</=
a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-k=
bl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_flip@2x-flip-vs-rmfb-inte=
rruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1=
.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/s=
hard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915#1=
98])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#109280]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl1/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-shrfb-pgflip-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +68 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_pipe_b_c_ivb@pipe-b-dpms-=
off-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19782/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl5/igt@kms_plane_scaling@plane-scalin=
g.html">INCOMPLETE</a> ([i915#3182])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb6/igt@kms_plane_scaling@scaler-with-=
clipping-clamping.html">INCOMPLETE</a> ([i915#3182])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-5.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-skl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/s=
hard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441])=
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-snb6/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-skl1=
/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19782/shard-iclb2/igt@prime_nv_test@i915_nv_sharing=
.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb1/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard=
-iclb7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl10/igt@sysfs_clients@split-10@vcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shar=
d-skl7/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915=
#3026])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19782/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19782/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19782/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-apl3/igt@gem_workarounds@suspend-resume.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19782/shard-apl1/igt@gem_workarounds@suspend-resume.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19782/shard-kbl4/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19782/shard-skl10/igt@kms_flip@plain-flip-fb-re=
create-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19782/shard-skl4/igt@kms_plane_alpha_blend@=
pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19782/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19782/shard-kbl3/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-skl10/igt@sysfs_clients@split-10@rcs0.html">SKIP</a> ([f=
do#109271] / [i915#3026]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19782/shard-skl7/igt@sysfs_clients@split-10@rcs0.html">P=
ASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19782/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAI=
L</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
([i915#2680] / [i915#2681]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19782/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.h=
tml">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@content_type_change.htm=
l">FAIL</a> ([i915#3144]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19782/shard-iclb7/igt@kms_content_protection@content_typ=
e_change.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html">FAI=
L</a> ([i915#3137]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19782/shard-iclb7/igt@kms_content_protection@dp-mst-type-1.htm=
l">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-3.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19782/shard-iclb3/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19782/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9849/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>) ([i915#180] / [i915#2505] / [i915#2724] / [i915#3002]) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-=
kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19782/shard-kbl6/igt@runner@aborted.html">FAI=
L</a>) ([i915#180] / [i915#2426] / [i915#2505] / [i915#2724] / [i915#3002] =
/ [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9849/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb5/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1814] / [i915#2426] / [i915#2724] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/s=
hard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19782/shard-iclb3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
782/shard-iclb8/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i915#272=
4] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9849/shard-apl3/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915=
#180] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19782/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19782/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-apl8/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19782/shard-apl3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/shard-ap=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19782/shard-apl6/igt@runner@aborted.html">FAIL</a>=
) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#2292] / [i=
915#2426])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9849/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk2/igt@">FAIL</a>, =
[FAIL][153]) ([i915#2724] / [i915#3002] / [k.org#202321]) -&gt; ([FAIL][154=
], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][=
160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAI=
L][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [=
FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177]=
, [FAIL][178]) ([i915#1814] / [k.org#202321])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1413151199739041066==--

--===============0585589738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0585589738==--
