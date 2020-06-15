Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C93C1F9FBC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 20:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84106E4D0;
	Mon, 15 Jun 2020 18:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B61C6E4D0;
 Mon, 15 Jun 2020 18:57:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 078DDA7E03;
 Mon, 15 Jun 2020 18:57:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 15 Jun 2020 18:57:20 -0000
Message-ID: <159224744002.16141.5132655641686500716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_redundant_i915=5Frequest=5Fawait=5Fobject_in_bl?=
 =?utf-8?q?it_clears_=28rev2=29?=
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

Series: drm/i915: Remove redundant i915_request_await_object in blit clears (rev2)
URL   : https://patchwork.freedesktop.org/series/78374/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8627_full -> Patchwork_17953_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17953_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][1] -> [DMESG-FAIL][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#300])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#46])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#95]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl8/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-apl7/igt@kms_vblank@pipe-c-wait-busy-hang.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#1820])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [TIMEOUT][21] ([i915#1936]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@gem_exec_balancer@sliced.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb2/igt@gem_exec_balancer@sliced.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a}:
    - shard-tglb:         [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb6/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-apl3/igt@kms_big_fb@linear-64bpp-rotate-180.html
    - shard-glk:          [DMESG-FAIL][27] ([i915#118] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@a-edp1:
    - shard-tglb:         [DMESG-WARN][29] ([i915#402]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb7/igt@kms_flip@flip-vs-dpms-off-vs-modeset@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb2/igt@kms_flip@flip-vs-dpms-off-vs-modeset@a-edp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][35] ([i915#1928]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-glk9/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-glk1/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_properties@invalid-properties-atomic:
    - shard-apl:          [DMESG-WARN][41] ([i915#95]) -> [PASS][42] +15 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl1/igt@kms_properties@invalid-properties-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-apl3/igt@kms_properties@invalid-properties-atomic.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][43] ([i915#173]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb1/igt@kms_psr@no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-tglb:         [TIMEOUT][47] -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted:
    - shard-snb:          [TIMEOUT][49] ([i915#1958]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-snb4/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted.html

  
#### Warnings ####

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-snb:          [TIMEOUT][51] ([i915#1958]) -> [SKIP][52] ([fdo#109271]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@gem_exec_balancer@invalid-bonds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-snb4/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][53] ([i915#1958]) -> [FAIL][54] ([i915#1930])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          [SKIP][55] ([fdo#109271] / [i915#658]) -> [INCOMPLETE][56] ([i915#198])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-skl5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [TIMEOUT][57] -> [SKIP][58] ([fdo#111825])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8627 -> Patchwork_17953

  CI-20190529: 20190529
  CI_DRM_8627: 593c112156feb0f6159814f2276a32c90f243823 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5710: f524eee47930601ad7b4cba9d40c26d68dc7d250 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17953: ad451451c90b1e063dd032f5ed563f501ff0350c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17953/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
