Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB7818AAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 03:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4E06E0C2;
	Thu, 19 Mar 2020 02:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95ED36E0C2;
 Thu, 19 Mar 2020 02:34:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D7DDA011A;
 Thu, 19 Mar 2020 02:34:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 19 Mar 2020 02:34:54 -0000
Message-ID: <158458529457.17933.2102218162375470848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318235956.118409-1-jose.souza@intel.com>
In-Reply-To: <20200318235956.118409-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/tc/tgl=3A_Implement_TCCOLD?=
 =?utf-8?q?_sequences?=
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

Series: series starting with [1/6] drm/i915/tc/tgl: Implement TCCOLD sequences
URL   : https://patchwork.freedesktop.org/series/74851/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8154_full -> Patchwork_17018_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17018_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1401])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-tglb1/igt@gem_exec_whisper@basic-fds-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-tglb5/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#151])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl7/igt@i915_pm_rpm@cursor-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl3/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl5/igt@kms_hdr@bpc-switch.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl8/igt@gem_ctx_isolation@rcs0-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [INCOMPLETE][27] ([i915#1402]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_wait@await-vcs1:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb5/igt@gem_wait@await-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-iclb1/igt@gem_wait@await-vcs1.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [INCOMPLETE][33] ([i915#151] / [i915#155]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl2/igt@i915_pm_rpm@system-suspend-modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl4/igt@i915_suspend@forcewake.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_atomic@plane_overlay_legacy:
    - shard-snb:          [SKIP][37] ([fdo#109271]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-snb6/igt@kms_atomic@plane_overlay_legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-snb5/igt@kms_atomic@plane_overlay_legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][41] ([i915#57]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][47] ([i915#31]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl6/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][49] ([i915#468]) -> [FAIL][50] ([i915#454])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [INCOMPLETE][51] ([i915#82]) -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17018

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17018: b56d3d92d0d79433bc14c62573d2e57132835e72 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17018/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
