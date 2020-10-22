Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4EF295C41
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 11:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C576F59E;
	Thu, 22 Oct 2020 09:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 378166E08E;
 Thu, 22 Oct 2020 09:50:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DC7FA8831;
 Thu, 22 Oct 2020 09:50:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 22 Oct 2020 09:50:35 -0000
Message-ID: <160336023518.7803.3641442741038776730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201021220411.5777-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201021220411.5777-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/gt=3A_Use_the_local_HWSP_offset_duri?=
 =?utf-8?q?ng_submission_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0437685195=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0437685195==
Content-Type: multipart/alternative;
 boundary="===============3549745962668549452=="

--===============3549745962668549452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with drm/i915/gt: Use the local HWSP offset during submission (rev2)
URL   : https://patchwork.freedesktop.org/series/82935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9180_full -> Patchwork_18762_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18762_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18762_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18762_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw7/igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw5/igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@hotrebind}:
    - shard-hsw:          NOTRUN -> [WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw5/igt@core_hotunplug@hotrebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_18762_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2389]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#155])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-hsw:          [PASS][12] -> [DMESG-WARN][13] ([IGT#6])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-snb:          [PASS][14] -> [FAIL][15] ([i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#79])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk3/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +5 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([fdo#108145] / [i915#265])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl9/igt@perf@short-reads.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl2/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-skl:          [DMESG-WARN][28] ([i915#1982]) -> [PASS][29] +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@core_hotunplug@unbind-rebind.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl2/igt@core_hotunplug@unbind-rebind.html
    - shard-iclb:         [DMESG-WARN][30] ([i915#1982]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@core_hotunplug@unbind-rebind.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb6/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_schedule@pi-common@bcs0:
    - shard-apl:          [INCOMPLETE][32] ([i915#1635]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@gem_exec_schedule@pi-common@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-apl4/igt@gem_exec_schedule@pi-common@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-iclb:         [INCOMPLETE][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb7/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][36] ([i915#118] / [i915#95]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-skl:          [FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@gem_exec_whisper@basic-queues-priority-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl8/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][40] ([i915#2424]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][42] ([i915#1436] / [i915#716]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-snb:          [SKIP][44] ([fdo#109271]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][46] ([i915#79]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [FAIL][48] ([i915#49]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
    - shard-snb:          [FAIL][50] ([i915#2546]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [DMESG-WARN][52] ([i915#1982]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][54] ([fdo#108145] / [i915#265]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][56] ([fdo#109642] / [fdo#111068]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][58] ([fdo#109441]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [INCOMPLETE][60] ([i915#198]) -> [FAIL][61] ([i915#454])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [DMESG-WARN][62] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][63] ([i915#2411])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9180 -> Patchwork_18762

  CI-20190529: 20190529
  CI_DRM_9180: b174cec7fd714a954d4a65088ca53e32ae9cd45e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18762: 9004d18b0348b7f3c79e6f9753339b042f6c028d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/index.html

--===============3549745962668549452==
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
<tr><td><b>Series:</b></td><td>series starting with drm/i915/gt: Use the local HWSP offset during submission (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82935/">https://patchwork.freedesktop.org/series/82935/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9180_full -&gt; Patchwork_18762_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18762_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18762_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18762_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw7/igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw5/igt@kms_flip@2x-dpms-vs-vblank-race@bc-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@core_hotunplug@hotrebind}:<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw5/igt@core_hotunplug@hotrebind.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18762_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-kbl6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6">IGT#6</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk3/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl9/igt@perf@short-reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl2/igt@perf@short-reads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl2/igt@core_hotunplug@unbind-rebind.html">PASS</a> +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb6/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@gem_exec_schedule@pi-common@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-apl4/igt@gem_exec_schedule@pi-common@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority-all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb7/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@gem_exec_whisper@basic-queues-priority-all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl8/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-glk4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb8/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl1/igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18762/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9180 -&gt; Patchwork_18762</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9180: b174cec7fd714a954d4a65088ca53e32ae9cd45e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18762: 9004d18b0348b7f3c79e6f9753339b042f6c028d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3549745962668549452==--

--===============0437685195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0437685195==--
