Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA53F17C9CD
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 01:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DB66EDB9;
	Sat,  7 Mar 2020 00:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25F9C6EDB9;
 Sat,  7 Mar 2020 00:36:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EBBFA011C;
 Sat,  7 Mar 2020 00:36:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Sat, 07 Mar 2020 00:36:20 -0000
Message-ID: <158354138009.20975.249707657089166008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305235941.1716-1-andi.shyti@intel.com>
In-Reply-To: <20200305235941.1716-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_allow_setting_generic_data_pointer?=
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

Series: drm/i915/gt: allow setting generic data pointer
URL   : https://patchwork.freedesktop.org/series/74360/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8074_full -> Patchwork_16852_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16852_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#370])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@i915_pm_rps@min-max-config-loaded.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#413])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-apl1/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][29] ([i915#677]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34] +15 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-glk7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl9/igt@i915_pm_dc@dc5-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-skl7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][43] ([i915#413]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-snb2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][49] ([i915#57]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl10/igt@kms_flip_tiling@flip-yf-tiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-skl8/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [DMESG-WARN][55] ([fdo#111870]) -> [DMESG-WARN][56] ([fdo#110789] / [fdo#111870])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-hsw8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/shard-hsw4/igt@gem_userptr_blits@sync-unmap-cycles.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8074 -> Patchwork_16852

  CI-20190529: 20190529
  CI_DRM_8074: 0dd63259839ca847514d9999749219635f311015 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16852: b5c27a068592cbdb2b4abf4e73ee5e305e3e227d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16852/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
