Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF681BEFEB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 07:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67156EA87;
	Thu, 30 Apr 2020 05:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D341B6EA87;
 Thu, 30 Apr 2020 05:48:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBB53A47EE;
 Thu, 30 Apr 2020 05:48:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Thu, 30 Apr 2020 05:48:57 -0000
Message-ID: <158822573780.31920.10336131845319058751@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429195502.39919-1-sean@poorly.run>
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev6?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev6)
URL   : https://patchwork.freedesktop.org/series/70393/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8394_full -> Patchwork_17521_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17521_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#198])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl10/igt@i915_pm_dc@dc5-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-skl8/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][13] ([fdo#109276]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_exec_schedule@pi-userfault@bcs0}:
    - shard-glk:          [INCOMPLETE][15] ([i915#58] / [k.org#198133]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk8/igt@gem_exec_schedule@pi-userfault@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-glk7/igt@gem_exec_schedule@pi-userfault@bcs0.html

  * {igt@gem_exec_schedule@pi-userfault@rcs0}:
    - shard-glk:          [FAIL][17] ([i915#1772]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk8/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-glk7/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][19] ([i915#198]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-skl3/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][21] ([i915#300]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][25] ([i915#96]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-glk:          [FAIL][27] ([i915#1566]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][33] ([i915#173]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb1/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][37] ([i915#1542]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb7/igt@perf@polling-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-iclb3/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-snb1/igt@i915_pm_rpm@dpms-non-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-snb5/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-FAIL][41] ([i915#180] / [i915#95]) -> [FAIL][42] ([i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [DMESG-FAIL][43] ([i915#180] / [i915#95]) -> [FAIL][44] ([i915#93] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [FAIL][46] ([fdo#108145] / [i915#265] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          [FAIL][47] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
    - shard-kbl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [FAIL][50] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8394 -> Patchwork_17521

  CI-20190529: 20190529
  CI_DRM_8394: 532afb6da86a1c6ae10469908814f7a4f46afd88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5615: 7605cfd9463a6778ebb7ebae294a97c5779a6c7f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17521: 7ef7fff8d44fb997dddf5b37e06ed497717b5c38 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
