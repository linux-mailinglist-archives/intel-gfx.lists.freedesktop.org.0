Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6962B14C4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 04:37:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799E96E342;
	Fri, 13 Nov 2020 03:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D32296E334;
 Fri, 13 Nov 2020 03:37:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C512CA008A;
 Fri, 13 Nov 2020 03:37:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiongfeng Wang" <wangxiongfeng2@huawei.com>
Date: Fri, 13 Nov 2020 03:37:06 -0000
Message-ID: <160523862677.20638.18078881972032646793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1605187352-51761-1-git-send-email-wangxiongfeng2@huawei.com>
In-Reply-To: <1605187352-51761-1-git-send-email-wangxiongfeng2@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_return_error_when_failing_to_take_the_module_refer?=
 =?utf-8?q?ence?=
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
Content-Type: multipart/mixed; boundary="===============0451327149=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0451327149==
Content-Type: multipart/alternative;
 boundary="===============8716032224740691685=="

--===============8716032224740691685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: return error when failing to take the module reference
URL   : https://patchwork.freedesktop.org/series/83782/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9318_full -> Patchwork_18896_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18896_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18896_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18896_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-each:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-snb7/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-snb2/igt@gem_sync@basic-each.html

  * igt@kms_sequence@get-forked:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw5/igt@kms_sequence@get-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw7/igt@kms_sequence@get-forked.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9318_full and Patchwork_18896_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18896_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl1/igt@i915_module_load@reload.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
    - shard-hsw:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw4/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw6/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk2/igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk1/igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@disabled-read-error:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1635] / [i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-apl8/igt@perf@disabled-read-error.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-apl1/igt@perf@disabled-read-error.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - shard-hsw:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw6/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw7/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][33] ([i915#454]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl9/igt@i915_pm_rpm@gem-pread.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl6/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][37] ([i915#151]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][41] ([i915#2346]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#1982]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][47] ([i915#2122]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][49] ([i915#2598]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][61] ([i915#1185] / [i915#250]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-d:
    - shard-tglb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [FAIL][69] ([i915#1731]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl8/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [FAIL][71] ([i915#2060]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][73] ([i915#1515]) -> [FAIL][74] ([i915#1515])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][75] ([i915#1982] / [i915#79]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][77] ([i915#1542]) -> [DMESG-FAIL][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@perf@polling-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@perf@polling-parameterized.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9318 -> Patchwork_18896

  CI-20190529: 20190529
  CI_DRM_9318: f5a3bbb80f537996ecfaacb3593c0f2a290efe53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5848: 1e2525da258aab5e0e3a7705ea8e89b521d5bf88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18896: 8e16f3968408fc5960374211f603d3c0af9f30f7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/index.html

--===============8716032224740691685==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: return error when failing to take the module reference</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83782/">https://patchwork.freedesktop.org/series/83782/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9318_full -&gt; Patchwork_18896_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18896_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18896_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18896_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-snb7/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-snb2/igt@gem_sync@basic-each.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw5/igt@kms_sequence@get-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw7/igt@kms_sequence@get-forked.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9318_full and Patchwork_18896_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18896_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw4/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw6/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk2/igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk1/igt@kms_flip@2x-plain-flip-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@disabled-read-error:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-apl8/igt@perf@disabled-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-apl1/igt@perf@disabled-read-error.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-hsw6/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-hsw7/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl9/igt@i915_pm_rpm@gem-pread.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl6/igt@i915_pm_rpm@gem-pread.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#2598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/250">i915#250</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-d:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl8/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9318/shard-skl10/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18896/shard-skl9/igt@perf@polling-parameterized.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9318 -&gt; Patchwork_18896</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9318: f5a3bbb80f537996ecfaacb3593c0f2a290efe53 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5848: 1e2525da258aab5e0e3a7705ea8e89b521d5bf88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18896: 8e16f3968408fc5960374211f603d3c0af9f30f7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8716032224740691685==--

--===============0451327149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0451327149==--
