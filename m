Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E40C19E35B
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 09:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDDC66E073;
	Sat,  4 Apr 2020 07:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EA3A6E061;
 Sat,  4 Apr 2020 07:35:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 584F0A47EE;
 Sat,  4 Apr 2020 07:35:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 04 Apr 2020 07:35:01 -0000
Message-ID: <158598570132.1394.11357309902014777259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403190209.21818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403190209.21818-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Wait_until_we_start_timeslicing_after_a_subm?=
 =?utf-8?q?it?=
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

Series: drm/i915/selftests: Wait until we start timeslicing after a submit
URL   : https://patchwork.freedesktop.org/series/75479/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8251_full -> Patchwork_17206_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8251_full and Patchwork_17206_full:

### New IGT tests (4) ###

  * igt@perf_pmu@faulting-read:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@after-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@before:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@hang-wait:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17206_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#79]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#79])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#221])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-apl7/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-apl6/igt@kms_hdr@bpc-switch-dpms.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_wait@busy@vcs0}:
    - shard-glk:          [FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-glk3/igt@gem_wait@busy@vcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-glk1/igt@gem_wait@busy@vcs0.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][21] ([i915#656]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-apl2/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-apl1/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-iclb:         [INCOMPLETE][23] ([i915#1185]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-iclb3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-iclb6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][27] ([i915#54]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][29] ([i915#72]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-snb5/igt@i915_pm_rpm@system-suspend-modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-snb5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][41], [FAIL][42]) ([i915#1423] / [i915#529]) -> [FAIL][43] ([i915#1423])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-apl2/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/shard-apl7/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8251 -> Patchwork_17206

  CI-20190529: 20190529
  CI_DRM_8251: 06ddf8dd059d59bc27c24b09a6e500809e619982 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17206: f4b4d95a71b90b41b333fab5fd92683386ee0f79 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
