Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E963813DE
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 00:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71506F49C;
	Fri, 14 May 2021 22:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B0AB6E57E;
 Fri, 14 May 2021 22:44:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74380A00CC;
 Fri, 14 May 2021 22:44:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 14 May 2021 22:44:02 -0000
Message-ID: <162103224245.21336.3604265837457874936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_g4x/vlv/chv_CxSR/wm_fixes/cleanups?=
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
Content-Type: multipart/mixed; boundary="===============1048226479=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1048226479==
Content-Type: multipart/alternative;
 boundary="===============0126420989956833929=="

--===============0126420989956833929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: g4x/vlv/chv CxSR/wm fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/90164/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10082_full -> Patchwork_20126_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20126_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20126_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20126_full:

### IGT changes ###

#### Possible regressions ####

  * igt@api_intel_bb@render@render-y-reloc-1024:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@api_intel_bb@render@render-y-reloc-1024.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@api_intel_bb@render@render-y-reloc-1024.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-snb:          NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb2/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  
#### Warnings ####

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - shard-glk:          [FAIL][4] ([i915#3457]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk9/igt@gem_exec_schedule@submit-early-slice@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk3/igt@gem_exec_schedule@submit-early-slice@vcs0.html

  * igt@kms_plane_cursor@pipe-d-primary-size-64:
    - shard-tglb:         [FAIL][6] ([i915#3457]) -> [FAIL][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@kms_plane_cursor@pipe-d-primary-size-64.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb6/igt@kms_plane_cursor@pipe-d-primary-size-64.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_shader_image_load_store@max-size (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][8] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/pig-glk-j5005/spec@arb_shader_image_load_store@max-size.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10082_full and Patchwork_20126_full:

### New Piglit tests (4) ###

  * spec@arb_shader_image_load_store@max-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 1:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20126_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][9] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@api_intel_bb@blit-noreloc-purge-cache.html

  * igt@api_intel_bb@offset-control:
    - shard-snb:          NOTRUN -> [DMESG-WARN][10] ([i915#3457]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@api_intel_bb@offset-control.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][11] ([i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@api_intel_bb@offset-control.html

  * igt@gem_ctx_persistence@engines-persistence@rcs0:
    - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#3457]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl6/igt@gem_ctx_persistence@engines-persistence@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@gem_ctx_persistence@engines-persistence@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1099]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][15] -> [TIMEOUT][16] ([i915#2369] / [i915#3063] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@gem_eio@unwedge-stress.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][17] ([i915#2846] / [i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842] / [i915#3457])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [PASS][20] -> [SKIP][21] ([fdo#109271] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          NOTRUN -> [FAIL][22] ([i915#3457]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2842] / [i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_gttfill@all:
    - shard-apl:          NOTRUN -> [INCOMPLETE][25] ([i915#3457])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_nop@basic-series:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_exec_nop@basic-series.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-tglb:         [PASS][28] -> [TIMEOUT][29] ([i915#3183] / [i915#3457])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb3/igt@gem_exec_reloc@basic-parallel.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#2389] / [i915#3457]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-snb:          [PASS][31] -> [INCOMPLETE][32] ([i915#2055])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-apl:          NOTRUN -> [INCOMPLETE][33] ([i915#3468]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#2428])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-glk:          [PASS][36] -> [INCOMPLETE][37] ([i915#3468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#1888] / [i915#3160])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_mmap_offset@clear.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_mmap_offset@clear.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][40] ([i915#3324])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#146] / [i915#198] / [i915#3457])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@gem_workarounds@suspend-resume-context.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180] / [i915#3457]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109289])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][46] -> [FAIL][47] ([i915#454])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-glk:          [PASS][48] -> [DMESG-WARN][49] ([i915#3457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@i915_pm_rpm@cursor-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#3475])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-iclb:         [PASS][52] -> [DMESG-WARN][53] ([i915#3475])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#3457])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@wc.html
    - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#3457])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-apl:          NOTRUN -> [DMESG-WARN][58] ([i915#3457]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@i915_pm_rps@min-max-config-idle.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111614])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2705])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_big_joiner@basic.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +27 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][66] ([i915#1319])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][67] ([i915#3444] / [i915#3457]) +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3457]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][69] ([i915#3457]) +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#3444] / [i915#3457]) +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - shard-apl:          [PASS][71] -> [FAIL][72] ([i915#3444] / [i915#3457]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-size-change:
    - shard-kbl:          [PASS][73] -> [FAIL][74] ([i915#3444] / [i915#3457])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-size-change.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#3444] / [i915#3457]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:
    - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#3444] / [i915#3457]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html
    - shard-tglb:         [PASS][79] -> [FAIL][80] ([i915#2124] / [i915#3457])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3457]) +13 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-snb:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3457]) +46 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-glk:          [PASS][83] -> [FAIL][84] ([i915#70])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271]) +360 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +35 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#2346])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#79])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#79])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#2122])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2587])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#53]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][103] ([fdo#108145] / [i915#265]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([fdo#108145] / [i915#265]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([fdo#108145] / [i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][109] ([i915#2657] / [i915#3457])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-snb:          NOTRUN -> [FAIL][110] ([i915#3461]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-iclb:         [PASS][111] -> [FAIL][112] ([i915#2657] / [i915#3461])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#1779])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658]) +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][117] -> [INCOMPLETE][118] ([i915#456])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271]) +109 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@kms_writeback@writeback-check-output.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#3457]) +23 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk6/igt@perf_pmu@busy-check-all@vcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@perf_pmu@busy-check-all@vcs0.html

  * igt@prime_mmap_coherency@read:
    - shard-snb:          NOTRUN -> [INCOMPLETE][123] ([i915#3468])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@prime_mmap_coherency@read.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][124] -> [INCOMPLETE][125] ([i915#409])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb6/igt@prime_vgem@sync@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb3/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2994])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@sysfs_clients@sema-10.html

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - shard-apl:          [PASS][128] -> [FAIL][129] ([i915#1755] / [i915#3457])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl6/igt@sysfs_timeslice_duration@timeout@bcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@sysfs_timeslice_duration@timeout@bcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#1755] / [i915#3457])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][132] ([i915#2842] / [i915#3457]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fence@syncobj-repeat:
    - shard-apl:          [FAIL][134] ([i915#3457]) -> [PASS][135] +5 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl2/igt@gem_exec_fence@syncobj-repeat.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@gem_exec_fence@syncobj-repeat.html

  * igt@gem_exec_schedule@preempt-hang@vcs0:
    - shard-glk:          [FAIL][136] ([i915#3457]) -> [PASS][137] +34 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@gem_exec_schedule@preempt-hang@vcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_exec_schedule@preempt-hang@vcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][138] ([i915#118] / [i915#95]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          [INCOMPLETE][140] ([i915#3468]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html

--===============0126420989956833929==
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
<tr><td><b>Series:</b></td><td>drm/i915: g4x/vlv/chv CxSR/wm fixes/cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90164/">https://patchwork.freedesktop.org/series/90164/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10082_full -&gt; Patchwork_20126_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20126_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20126_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20126_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@api_intel_bb@render@render-y-reloc-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@api_intel_bb@render@render-y-reloc-1024.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@api_intel_bb@render@render-y-reloc-1024.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb2/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk9/igt@gem_exec_schedule@submit-early-slice@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk3/igt@gem_exec_schedule@submit-early-slice@vcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-64:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@kms_plane_cursor@pipe-d-primary-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb6/igt@kms_plane_cursor@pipe-d-primary-size-64.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_shader_image_load_store@max-size (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/pig-glk-j5005/spec@arb_shader_image_load_store@max-size.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10082_full and Patchwork_20126_full:</p>
<h3>New Piglit tests (4)</h3>
<ul>
<li>
<p>spec@arb_shader_image_load_store@max-size:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 1:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20126_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@api_intel_bb@blit-noreloc-purge-cache.html">DMESG-FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457]) +4 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl6/igt@gem_ctx_persistence@engines-persistence@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@gem_ctx_persistence@engines-persistence@rcs0.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@gem_exec_gttfill@all.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_exec_nop@basic-series.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_exec_nop@basic-series.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb3/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@gem_fenced_exec_thrash@2-spare-fences.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#1888] / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl8/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> ([i915#146] / [i915#198] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb2/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@i915_pm_rps@min-max-config-idle.html">DMESG-WARN</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-size-change:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-size-change.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-size-change.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html">FAIL</a> ([i915#2124] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">FAIL</a> ([i915#70])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +360 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +35 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">FAIL</a> ([i915#53]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#3461]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk4/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html">FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +109 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk6/igt@perf_pmu@busy-check-all@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@perf_pmu@busy-check-all@vcs0.html">FAIL</a> ([i915#3457]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-snb7/igt@prime_mmap_coherency@read.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-iclb6/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-iclb3/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-skl1/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl6/igt@sysfs_timeslice_duration@timeout@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl1/igt@sysfs_timeslice_duration@timeout@bcs0.html">FAIL</a> ([i915#1755] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk5/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk7/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1755] / [i915#3457])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-repeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-apl2/igt@gem_exec_fence@syncobj-repeat.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-apl6/igt@gem_exec_fence@syncobj-repeat.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk8/igt@gem_exec_schedule@preempt-hang@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk6/igt@gem_exec_schedule@preempt-hang@vcs0.html">PASS</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/shard">INCOMPLETE</a> ([i915#3468]) -&gt; [PASS][141] +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0126420989956833929==--

--===============1048226479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1048226479==--
