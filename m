Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FA31D5EFE
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 08:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D1D6E112;
	Sat, 16 May 2020 06:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC5C56E112;
 Sat, 16 May 2020 06:09:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D628AA0019;
 Sat, 16 May 2020 06:09:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <natechancellor@gmail.com>
Date: Sat, 16 May 2020 06:09:46 -0000
Message-ID: <158960938684.12902.13367831222168375020@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516023545.3332334-1-natechancellor@gmail.com>
In-Reply-To: <20200516023545.3332334-1-natechancellor@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_check=5Fshadow=5Fcontext=5Fppgtt_as_maybe_unused?=
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

Series: drm/i915: Mark check_shadow_context_ppgtt as maybe unused
URL   : https://patchwork.freedesktop.org/series/77317/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8491_full -> Patchwork_17678_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17678_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_17678_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#128])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb1/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb8/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][15] ([i915#155]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl4/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         [FAIL][17] ([i915#1172]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-tglb:         [FAIL][19] -> [PASS][20] +18 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-tglb:         [FAIL][21] ([i915#1149]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb7/igt@kms_color@pipe-d-ctm-max.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb2/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][23] ([i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-kbl:          [DMESG-WARN][25] ([i915#128]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl4/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-kbl6/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * {igt@kms_flip@plain-flip-fb-recreate@c-edp1}:
    - shard-skl:          [FAIL][27] ([i915#1883]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [SKIP][29] ([i915#668]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb7/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][37] ([i915#31]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl8/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-apl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][39] ([i915#658]) -> [SKIP][40] ([i915#588])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][41] ([i915#468]) -> [SKIP][42] ([i915#668])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-snb:          [INCOMPLETE][43] ([i915#82]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-snb6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-snb6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][45] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][46] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [SKIP][47] ([i915#668]) -> [FAIL][48] ([i915#608])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb1/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/shard-tglb5/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8491 -> Patchwork_17678

  CI-20190529: 20190529
  CI_DRM_8491: 45b04894467fea442ac135a64318220fbf42cae5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5656: 3996584aa3fad5dd7a52cb90bb3cda87f645addf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17678: e8b666a33069df3d77f0c0ec0764f8dc69f8e56f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
