Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F4190696
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 08:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E926E07D;
	Tue, 24 Mar 2020 07:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDD566E07D;
 Tue, 24 Mar 2020 07:47:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7EFFA0118;
 Tue, 24 Mar 2020 07:47:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 24 Mar 2020 07:47:39 -0000
Message-ID: <158503605988.4559.3206649333572879370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316103759.12867-1-animesh.manna@intel.com>
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test_=28rev9=29?=
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

Series: DP Phy compliance auto test (rev9)
URL   : https://patchwork.freedesktop.org/series/71121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8182_full -> Patchwork_17062_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17062_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +14 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@invalid-oa-format-id:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-hsw8/igt@perf@invalid-oa-format-id.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-hsw6/igt@perf@invalid-oa-format-id.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][21] ([fdo#112080]) -> [PASS][22] +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-iclb:         [FAIL][23] ([i915#679]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][25] ([i915#1277]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-tglb1/igt@gem_exec_balancer@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][27] ([fdo#109276] / [i915#677]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][29] ([i915#677]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][35] ([fdo#108744]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl7/igt@i915_selftest@live@hangcheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-skl1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][41] ([i915#34]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][47] ([i915#31]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl3/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-skl9/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +14 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][51] ([i915#468]) -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][53] ([i915#82]) -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-snb4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-snb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [INCOMPLETE][56] ([i915#82])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-snb1/igt@i915_pm_rpm@sysfs-read.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/shard-snb2/igt@i915_pm_rpm@sysfs-read.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8182 -> Patchwork_17062

  CI-20190529: 20190529
  CI_DRM_8182: e5245084567cd7f6f93b07baaebf8a2b4d914620 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5531: 79e7382202c104b247a672c61a6186d1f51e4958 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17062: eeecea37ecbc074d3cfb7f80b514e9add7f87dcf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
