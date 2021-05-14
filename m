Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D56F9380517
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 10:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3FB6E570;
	Fri, 14 May 2021 08:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F6766E3F7;
 Fri, 14 May 2021 08:22:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45486A47EB;
 Fri, 14 May 2021 08:22:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 14 May 2021 08:22:16 -0000
Message-ID: <162098053627.21337.13590125375878878575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514052843.9456-1-jose.souza@intel.com>
In-Reply-To: <20210514052843.9456-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/display=3A_Nuke_has=5Finfo?=
 =?utf-8?q?frame?=
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
Content-Type: multipart/mixed; boundary="===============0671929732=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0671929732==
Content-Type: multipart/alternative;
 boundary="===============1258504562802341291=="

--===============1258504562802341291==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/display: Nuke has_infoframe
URL   : https://patchwork.freedesktop.org/series/90149/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20124_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20124_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20124_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20124_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@all:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_exec_gttfill@all.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a:
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-snb:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-glk:          [FAIL][6] ([i915#3457]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-snb:          [FAIL][8] ([i915#3457]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - shard-tglb:         [FAIL][10] ([i915#3457]) -> [FAIL][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb1/igt@kms_plane_cursor@pipe-c-viewport-size-64.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/pig-snb-2600/spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10074_full and Patchwork_20124_full:

### New Piglit tests (1) ###

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  

Known issues
------------

  Here are the changes found in Patchwork_20124_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@delta-check:
    - shard-apl:          NOTRUN -> [DMESG-WARN][13] ([i915#3457]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@api_intel_bb@delta-check.html

  * igt@api_intel_bb@intel-bb-blit-x:
    - shard-snb:          [PASS][14] -> [DMESG-WARN][15] ([i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@api_intel_bb@intel-bb-blit-x.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@api_intel_bb@intel-bb-blit-x.html

  * igt@api_intel_bb@offset-control:
    - shard-snb:          NOTRUN -> [DMESG-WARN][16] ([i915#3457])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@api_intel_bb@offset-control.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][17] ([i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@api_intel_bb@offset-control.html

  * igt@gem_ctx_persistence@engines-persistence@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][18] ([i915#3457]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_ctx_persistence@engines-persistence@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#1099]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][20] -> [TIMEOUT][21] ([i915#2369] / [i915#3063] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][22] ([i915#2846] / [i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#2842] / [i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3457])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][26] ([i915#2842] / [i915#3457])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][27] ([i915#2389] / [i915#3457]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][28] ([i915#2389] / [i915#3457]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@preemptive-hang@vecs0:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#3457]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@gem_exec_schedule@preemptive-hang@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@gem_exec_schedule@preemptive-hang@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          NOTRUN -> [FAIL][31] ([i915#3457]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk2/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][34] -> [INCOMPLETE][35] ([i915#3468]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-apl:          [PASS][36] -> [INCOMPLETE][37] ([i915#3468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][38] ([i915#3468])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#3468])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][41] -> [INCOMPLETE][42] ([i915#3468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][43] ([i915#3468]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-snb:          [PASS][44] -> [INCOMPLETE][45] ([i915#2502])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@gem_mmap_gtt@medium-copy-xy.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][46] ([i915#2658])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-skl:          NOTRUN -> [INCOMPLETE][47] ([i915#198] / [i915#3468])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl9/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][48] ([i915#3468]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109312])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#109289]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_module_load@reload:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][52] ([i915#3457])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#454])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-iclb:         [PASS][55] -> [DMESG-WARN][56] ([i915#3457])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111614])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111615])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#110723])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color@pipe-c-gamma:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#71])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_color@pipe-c-gamma.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_color@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][68] ([i915#1319]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111828])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_content_protection@atomic-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109300] / [fdo#111066])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#3444] / [i915#3457]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-tglb:         [PASS][72] -> [FAIL][73] ([i915#2124] / [i915#3457]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3457]) +8 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][75] ([i915#3457]) +9 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][76] -> [FAIL][77] ([i915#3444] / [i915#3457])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109279] / [i915#3359] / [i915#3457])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [fdo#109279] / [i915#3457])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3457]) +13 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-apl:          NOTRUN -> [FAIL][81] ([i915#3444] / [i915#3457])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
    - shard-kbl:          NOTRUN -> [FAIL][82] ([i915#3444] / [i915#3457]) +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][83] ([i915#180] / [i915#3457])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-glk:          [PASS][84] -> [FAIL][85] ([i915#3444] / [i915#3457]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-apl:          [PASS][86] -> [FAIL][87] ([i915#3444] / [i915#3457]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3457]) +14 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html
    - shard-snb:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3457]) +51 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [i915#3457])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html
    - shard-tglb:         NOTRUN -> [FAIL][91] ([i915#2124] / [i915#3457])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#70]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][94] ([fdo#109271]) +400 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271]) +78 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109274] / [fdo#109278])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#2346] / [i915#3457])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][100] ([i915#155] / [i915#180] / [i915#636])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109274])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2122])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#2587])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#111825]) +8 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][107] ([i915#1188])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#53]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-kbl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][114] ([i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][115] ([i915#2657] / [i915#3457] / [i915#3461])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][116] ([i915#2657])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-tglb:         NOTRUN -> [FAIL][117] ([i915#3461])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
    - shard-snb:          NOTRUN -> [FAIL][118] ([i915#3461])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
    - shard-iclb:         NOTRUN -> [FAIL][119] ([i915#2657] / [i915#3461])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-kbl:          NOTRUN -> [FAIL][120] ([i915#2657]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-iclb:         [PASS][121] -> [FAIL][122] ([i915#2657] / [i915#3461])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#1779])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2920])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][130] ([i915#2100])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset:
    - shard-skl:          [PASS][131] -> [DMESG-WARN][132] ([i915#1982])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-modeset.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/index.html

--===============1258504562802341291==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/display: Nuke has_infoframe</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90149/">https://patchwork.freedesktop.org/series/90149/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074_full -&gt; Patchwork_20124_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20124_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20124_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20124_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_exec_gttfill@all.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y@dp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-64:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb1/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray (NEW):<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/pig-snb-2600/spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10074_full and Patchwork_20124_full:</p>
<h3>New Piglit tests (1)</h3>
<ul>
<li>spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2darray:<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.26] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20124_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@delta-check:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@api_intel_bb@delta-check.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@intel-bb-blit-x:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@api_intel_bb@intel-bb-blit-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@api_intel_bb@intel-bb-blit-x.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_ctx_persistence@engines-persistence@bcs0.html">FAIL</a> ([i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk6/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@gem_exec_schedule@preemptive-hang@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@gem_exec_schedule@preemptive-hang@vecs0.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk2/igt@gem_exec_schedule@u-fairslice@vecs0.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl3/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@gem_mmap_gtt@medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a> ([i915#2502])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl9/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([fdo#111615])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([fdo#110723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-gamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_color@pipe-c-gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_color@pipe-c-gamma.html">FAIL</a> ([i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#3457])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-FAIL</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-random:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +14 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +51 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html">SKIP</a> ([fdo#109278] / [i915#3457])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html">FAIL</a> ([i915#2124] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +400 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +78 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#111825]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">FAIL</a> ([i915#53]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#3461])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-snb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#3461])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#2657] / [i915#3461])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-c-tiling-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-glk2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html">FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-tglb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20124/shard-skl1/igt@kms_setmode@clone-exclusive-crtc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-modeset.">PASS</a> -&gt; [DMESG-WARN][132] ([i915#1982])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1258504562802341291==--

--===============0671929732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0671929732==--
