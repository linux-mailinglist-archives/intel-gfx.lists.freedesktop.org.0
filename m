Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8571A2959E7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 10:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E896F53B;
	Thu, 22 Oct 2020 08:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EB036F539;
 Thu, 22 Oct 2020 08:09:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46C8BA00CC;
 Thu, 22 Oct 2020 08:09:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 22 Oct 2020 08:09:40 -0000
Message-ID: <160335418025.7804.3496809600800658941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
In-Reply-To: <20201022054223.25071-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQmln?=
 =?utf-8?q?_joiner_enabling?=
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
Content-Type: multipart/mixed; boundary="===============1358739216=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1358739216==
Content-Type: multipart/alternative;
 boundary="===============5646814937805632021=="

--===============5646814937805632021==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Big joiner enabling
URL   : https://patchwork.freedesktop.org/series/82944/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9180_full -> Patchwork_18761_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18761_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@hotrebind}:
    - shard-hsw:          NOTRUN -> [WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw6/igt@core_hotunplug@hotrebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_18761_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended@bcs0:
    - shard-snb:          [PASS][2] -> [INCOMPLETE][3] ([i915#82])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@gem_busy@extended@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@gem_busy@extended@bcs0.html

  * igt@gem_exec_suspend@basic:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@gem_exec_suspend@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk7/igt@gem_exec_suspend@basic.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1436] / [i915#1635] / [i915#716])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][8] -> [WARN][9] ([i915#1519])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][10] -> [INCOMPLETE][11] ([i915#155])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][12] -> [INCOMPLETE][13] ([i915#198])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2346])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-hsw:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-snb:          [PASS][22] -> [FAIL][23] ([i915#54]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#1188])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1635] / [i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#43])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk5/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#1542]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl9/igt@perf@blocking.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl2/igt@perf@blocking.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-skl:          [DMESG-WARN][38] ([i915#1982]) -> [PASS][39] +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@core_hotunplug@unbind-rebind.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@core_hotunplug@unbind-rebind.html
    - shard-iclb:         [DMESG-WARN][40] ([i915#1982]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@core_hotunplug@unbind-rebind.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb4/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][42] ([i915#2389]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw5/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw8/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-snb:          [FAIL][44] ([i915#2389]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@pi-common@bcs0:
    - shard-apl:          [INCOMPLETE][46] ([i915#1635]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@gem_exec_schedule@pi-common@bcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl3/igt@gem_exec_schedule@pi-common@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-iclb:         [INCOMPLETE][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb6/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk4/igt@gem_exec_whisper@basic-fds-all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk9/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-skl:          [FAIL][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@gem_exec_whisper@basic-queues-priority-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][54] ([i915#2424]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][56] ([i915#1436] / [i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [INCOMPLETE][58] ([i915#198]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][60] ([i915#2521]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl4/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][62] ([i915#118] / [i915#95]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][64] ([i915#1635] / [i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-snb:          [SKIP][66] ([fdo#109271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][68] ([i915#79]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [FAIL][70] ([i915#49]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
    - shard-snb:          [FAIL][72] ([i915#2546]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [DMESG-WARN][74] ([i915#1982]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][76] ([i915#1188]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][80] ([i915#1542]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb5/igt@perf@polling-parameterized.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][82] ([i915#1982]) -> [INCOMPLETE][83] ([i915#198] / [i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][84] ([i915#1610] / [i915#1635] / [i915#2439]) -> [FAIL][85] ([fdo#109271] / [i915#1635] / [i915#716])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9180 -> Patchwork_18761

  CI-20190529: 20190529
  CI_DRM_9180: b174cec7fd714a954d4a65088ca53e32ae9cd45e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18761: 040cc02e306c96264ba552adc8c96a7fcd09d386 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/index.html

--===============5646814937805632021==
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
<tr><td><b>Series:</b></td><td>Big joiner enabling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82944/">https://patchwork.freedesktop.org/series/82944/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9180_full -&gt; Patchwork_18761_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18761_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@core_hotunplug@hotrebind}:<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw6/igt@core_hotunplug@hotrebind.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18761_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@extended@bcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@gem_busy@extended@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@gem_busy@extended@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@gem_exec_suspend@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk7/igt@gem_exec_suspend@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl2/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk5/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl9/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl2/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@core_hotunplug@unbind-rebind.html">PASS</a> +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb4/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-hsw5/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-hsw8/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb4/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@gem_exec_schedule@pi-common@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl3/igt@gem_exec_schedule@pi-common@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb2/igt@gem_exec_whisper@basic-contexts-priority-all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb6/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk4/igt@gem_exec_whisper@basic-fds-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk9/igt@gem_exec_whisper@basic-fds-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl6/igt@gem_exec_whisper@basic-queues-priority-all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl10/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl1/igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-kbl4/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-iclb5/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-iclb5/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9180/shard-apl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18761/shard-apl1/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9180 -&gt; Patchwork_18761</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9180: b174cec7fd714a954d4a65088ca53e32ae9cd45e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18761: 040cc02e306c96264ba552adc8c96a7fcd09d386 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5646814937805632021==--

--===============1358739216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1358739216==--
