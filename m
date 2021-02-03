Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC830DA9C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 14:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662756EAA6;
	Wed,  3 Feb 2021 13:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 127BA6EAA3;
 Wed,  3 Feb 2021 13:08:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B86DA363B;
 Wed,  3 Feb 2021 13:08:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 13:08:43 -0000
Message-ID: <161235772301.946.17258830957051180714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203090205.25818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203090205.25818-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/8=5D_drm/i915/selftests=3A_Set_cach?=
 =?utf-8?q?e_status_for_huge=5Fgem=5Fobject?=
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
Content-Type: multipart/mixed; boundary="===============1764495747=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1764495747==
Content-Type: multipart/alternative;
 boundary="===============6257753996232001979=="

--===============6257753996232001979==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/8] drm/i915/selftests: Set cache status for huge_gem_object
URL   : https://patchwork.freedesktop.org/series/86626/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9721_full -> Patchwork_19570_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19570_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontsecondarycolor-smooth-gl_backsecondarycolor (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/pig-icl-1065g7/spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontsecondarycolor-smooth-gl_backsecondarycolor.html

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-noperspective-gl_backcolor-unused-smooth-gl_color (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/pig-icl-1065g7/spec@glsl-1.30@linker@interpolation-qualifiers@unused-noperspective-gl_backcolor-unused-smooth-gl_color.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * spec@glsl-1.10@execution@fs-dfdx-accuracy:
    - {pig-kbl-iris}:     NOTRUN -> [WARN][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/pig-kbl-iris/spec@glsl-1.10@execution@fs-dfdx-accuracy.html

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2darrayshadow:
    - {pig-kbl-iris}:     NOTRUN -> [FAIL][4] +7 similar issues
   [4]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9721_full and Patchwork_19570_full:

### New Piglit tests (8) ###

  * spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontcolor-default-gl_color:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontsecondarycolor-smooth-gl_backsecondarycolor:
    - Statuses : 1 crash(s)
    - Exec time: [0.27] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@noperspective-gl_backcolor-flat-gl_frontcolor:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-flat-gl_backsecondarycolor-unused-noperspective-gl_secondarycolor:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-noperspective-gl_backcolor-unused-smooth-gl_color:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_backsecondarycolor-unused-default-gl_secondarycolor:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_backsecondarycolor-unused-flat-gl_secondarycolor:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_frontsecondarycolor-unused-default-gl_secondarycolor:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19570_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][5] ([i915#2295])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl6/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2851])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][16] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2389])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#2803])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-tglb8/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1610] / [i915#2803])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-glk8/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#1610] / [i915#2803])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl2/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +76 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][27] -> [TIMEOUT][28] ([i915#2795])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb1/igt@gem_vm_create@destroy-race.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-tglb7/igt@gem_vm_create@destroy-race.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2597])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#165] / [i915#180]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl6/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +52 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl1/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#54]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#54]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2346])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][46] -> [INCOMPLETE][47] ([i915#155] / [i915#180] / [i915#636])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2122]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2642])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +22 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#1187])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#165]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-kbl:          [PASS][60] -> [DMESG-WARN][61] ([i915#165] / [i915#180] / [i915#2621] / [i915#78])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180] / [i915#78]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-none.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@page_flip:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1542])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl4/igt@perf@polling.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl1/igt@perf@polling.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][75] ([i915#2389]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][77] ([i915#2803]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][79] ([i915#1860]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-hsw:          [DMESG-WARN][83] ([i915#44]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw5/igt@kms_color@pipe-a-ctm-max.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw8/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_color@pipe-a-legacy-gamma:
    - shard-hsw:          [DMESG-FAIL][85] ([i915#44]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw5/igt@kms_color@pipe-a-legacy-gamma.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw8/igt@kms_color@pipe-a-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][89] ([i915#2295] / [i915#300]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-hsw:          [FAIL][91] -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw8/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][93] ([i915#96]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][95] ([i915#2346]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][99] ([i915#1188]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][105] ([i915#198]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * {igt@sysfs_clients@recycle}:
    - shard-hsw:          [FAIL][107] ([i915#3028]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw6/igt@sysfs_clients@recycle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-hsw2/igt@sysfs_clients@recycle.html
    - shard-apl:          [FAIL][109] ([i915#3028]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl1/igt@sysfs_clients@recycle.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-apl2/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-glk:          [FAIL][111] -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@sysfs_clients@recycle-many.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-glk2/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][113] ([i915#2842]) -> [FAIL][114] ([i915#2849])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][115] ([i915#1804] / [i915#2684]) -> [WARN][116] ([i915#2681] / [i915#2684])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][117] ([i915#2920]) -> [SKIP][118] ([i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#602]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#602] / [i915#92])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][147], [FAIL][148], [FAIL][149]) ([i915#2295] / [i915#2724] / [i915#3002])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#2295] / [i915#3002]) -> ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#1814] / [i915#2295] / [i915#3002])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl7/igt@runner@aborted.html
   [151]: https://intel-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html

--===============6257753996232001979==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [CI,1/8] drm/i915/selft=
ests: Set cache status for huge_gem_object</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86626/">https://patchwork.freedesktop.org/series/86626/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19570/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19570/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9721_full -&gt; Patchwork_19570_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19570_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontsecondarycol=
or-smooth-gl_backsecondarycolor (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/pig-icl-1065g7/spec@glsl-1.30@linker@interpol=
ation-qualifiers@flat-gl_frontsecondarycolor-smooth-gl_backsecondarycolor.h=
tml">CRASH</a></li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-noperspective-gl_b=
ackcolor-unused-smooth-gl_color (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/pig-icl-1065g7/spec@glsl-1.30@linker@interpol=
ation-qualifiers@unused-noperspective-gl_backcolor-unused-smooth-gl_color.h=
tml">INCOMPLETE</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>spec@glsl-1.10@execution@fs-dfdx-accuracy:</p>
<ul>
<li>{pig-kbl-iris}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/pig-kbl-iris/spec@glsl-1.10@execution@fs-dfdx=
-accuracy.html">WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2darraysha=
dow:</p>
<ul>
<li>{pig-kbl-iris}:     NOTRUN -&gt; <a href=3D"None">FAIL</a> +7 similar i=
ssues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9721_full and Patchwork_19=
570_full:</p>
<h3>New Piglit tests (8)</h3>
<ul>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontcolor-defaul=
t-gl_color:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@flat-gl_frontsecondarycol=
or-smooth-gl_backsecondarycolor:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@noperspective-gl_backcolo=
r-flat-gl_frontcolor:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-flat-gl_backsecond=
arycolor-unused-noperspective-gl_secondarycolor:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-noperspective-gl_b=
ackcolor-unused-smooth-gl_color:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_backseco=
ndarycolor-unused-default-gl_secondarycolor:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_backseco=
ndarycolor-unused-flat-gl_secondarycolor:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@linker@interpolation-qualifiers@unused-smooth-gl_frontsec=
ondarycolor-unused-default-gl_secondarycolor:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19570_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl6/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#2295])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/sha=
rd-kbl6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
70/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.=
html">FAIL</a> ([i915#2851])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/sh=
ard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.=
html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9721/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/sha=
rd-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
70/shard-tglb8/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
0/shard-glk8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl2/igt@gem_exec_schedule@u-fairslice@=
vcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl7/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
0/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#6=
44])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@gem_userptr_blits@mmap-offset-=
invalidate-active@wb.html">SKIP</a> ([fdo#109271]) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-tglb1/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard=
-tglb7/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl7/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-k=
bl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/=
shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe=
-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transit=
ion-fencing@dp-1-pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@kms_atomic_transition@=
plane-all-modeset-transition-fencing@dp-1-pipe-c.html">DMESG-WARN</a> ([i91=
5#165] / [i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl6/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl1/igt@kms_color@pipe-d-ctm-max.html"=
>SKIP</a> ([fdo#109271]) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19570/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> ([i915#54]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-2=
56x256-offscreen.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19570/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-k=
bl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19570/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@c-edp1.html">FAIL</a> ([i915#2122]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl7/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +22 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-iclb6/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe=
-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19570/shard-kbl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-=
pipe-c.html">DMESG-WARN</a> ([i915#165]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/=
shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> ([i915=
#165] / [i915#180] / [i915#2621] / [i915#78])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-none.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
70/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-none.html">DMESG-WARN</a> =
([i915#180] / [i915#78]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-apl7/igt@kms_psr2_su@page_flip.html">SK=
IP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/sha=
rd-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19570/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DME=
SG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl4/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-skl1/igt@perf@=
polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DM=
ESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19570/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@v=
cs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19570/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19570/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (=
[i915#1860]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19570/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-apl1/igt@i915_suspend@fence-restore-untiled.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19570/shard-apl1/igt@i915_suspend@fence-restore-untiled.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-hsw5/igt@kms_color@pipe-a-ctm-max.html">DMESG-WARN</a> (=
[i915#44]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19570/shard-hsw8/igt@kms_color@pipe-a-ctm-max.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-hsw5/igt@kms_color@pipe-a-legacy-gamma.html">DMESG-FAIL<=
/a> ([i915#44]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19570/shard-hsw8/igt@kms_color@pipe-a-legacy-gamma.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.ht=
ml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19570/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85=
-onscreen.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCO=
MPLETE</a> ([i915#2295] / [i915#300]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19570/shard-skl2/igt@kms_cursor_crc@pipe-a-c=
ursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.htm=
l">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19570/shard-hsw8/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> ([i915#96]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19570/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-=
vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-skl3/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19570/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1=
188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9570/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19570/shard-skl3/igt@kms_plane_alpha_blend@=
pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fd=
o#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19570/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19570/shard-skl7/igt@kms_vblank@pipe-a-ts-contin=
uation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle}:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9721/shard-hsw6/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
0/shard-hsw2/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9721/shard-apl1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
0/shard-apl2/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-glk8/igt@sysfs_clients@recycle-many.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-=
glk2/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19570/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAI=
L</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19570/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence=
.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19570/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html">S=
KIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19570/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9721/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
21/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-k=
bl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl1/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_9721/shard-kbl2/igt@runner@aborted.html">FAIL</a>) ([i915=
#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#602]) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl4/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19570/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl=
4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19570/shard-kbl1/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19570/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/=
shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19570/shard-kbl2/igt@runner@aborted.html">=
FAIL</a>) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#60=
2] / [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9721/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb1/igt@runner@aborte=
d.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/s=
hard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19570/shard-iclb2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
570/shard-iclb5/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#272=
4] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9721/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-">FAIL</a>, [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#2295] / =
[i915#3002]) -&gt; ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i=
915#1814] / [i915#2295] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6257753996232001979==--

--===============1764495747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1764495747==--
