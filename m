Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0869F1BD179
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 02:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A3E6E889;
	Wed, 29 Apr 2020 00:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF45F6E877;
 Wed, 29 Apr 2020 00:58:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C83FAA011A;
 Wed, 29 Apr 2020 00:58:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 00:58:47 -0000
Message-ID: <158812192779.6699.8587436673516215594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428184751.11257-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428184751.11257-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/execlists=3A_Avoid_re?=
 =?utf-8?q?using_the_same_logical_CCID?=
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

Series: series starting with [CI,1/3] drm/i915/execlists: Avoid reusing the same logical CCID
URL   : https://patchwork.freedesktop.org/series/76675/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8387_full -> Patchwork_17498_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17498_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#72])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-iclb7/igt@kms_psr@psr2_primary_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-apl:          [FAIL][15] ([i915#1528]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-apl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [FAIL][17] ([i915#1479] / [i915#1772]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][19] ([IGT#5]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [DMESG-WARN][21] ([i915#128]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-iclb8/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-iclb1/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1}:
    - shard-glk:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][29] ([i915#180] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][31] ([i915#173]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-iclb1/igt@kms_psr@no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-kbl:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-kbl7/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-kbl7/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][37] ([i915#1542]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/shard-hsw1/igt@perf@polling-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/shard-hsw5/igt@perf@polling-parameterized.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1479]: https://gitlab.freedesktop.org/drm/intel/issues/1479
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8387 -> Patchwork_17498

  CI-20190529: 20190529
  CI_DRM_8387: 2f06b2b1d33997d1fb16564959f0ebee8a26b632 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17498: 219a28ab615daa2f06ce024290e6d39b411e1025 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17498/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
