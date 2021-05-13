Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 452A437F18A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 05:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BA76E802;
	Thu, 13 May 2021 03:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62ACF6E7EA;
 Thu, 13 May 2021 03:10:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B708A00C9;
 Thu, 13 May 2021 03:10:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 13 May 2021 03:10:31 -0000
Message-ID: <162087543127.26536.8203726639028856744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_HDMI_sink_deep_color_capabilities_during_=2Emode?=
 =?utf-8?b?X3ZhbGlkKCkgKHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============1111752451=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1111752451==
Content-Type: multipart/alternative;
 boundary="===============6153907155788534223=="

--===============6153907155788534223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Check HDMI sink deep color capabilities during .mode_valid() (rev2)
URL   : https://patchwork.freedesktop.org/series/90036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20113_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20113_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20113_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20113_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk3/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-apl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c:
    - shard-glk:          [PASS][9] -> [FAIL][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk7/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-snb:          NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  
#### Warnings ####

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-iclb:         [INCOMPLETE][14] ([i915#3468]) -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-tglb:         [FAIL][16] ([i915#3457]) -> [FAIL][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb8/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-snb:          [FAIL][18] ([i915#3457]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_shader_image_load_store@max-size (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][20] +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/pig-glk-j5005/spec@arb_shader_image_load_store@max-size.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10074_full and Patchwork_20113_full:

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

  Here are the changes found in Patchwork_20113_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@delta-check:
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#3457]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@api_intel_bb@delta-check.html

  * igt@api_intel_bb@offset-control:
    - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@api_intel_bb@offset-control.html

  * igt@api_intel_bb@render@render-x-1024:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#3471])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-x-1024.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk4/igt@api_intel_bb@render@render-x-1024.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#180] / [i915#3457]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1099])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982] / [i915#3457])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [PASS][29] -> [TIMEOUT][30] ([i915#3063] / [i915#3457])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@gem_eio@in-flight-contexts-immediate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][31] ([i915#2846] / [i915#3457])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3457])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#3457]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][35] ([i915#3457])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          NOTRUN -> [INCOMPLETE][36] ([i915#3457])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#2842] / [i915#3457])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#2842] / [i915#3457])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#3457]) +28 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk7/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#2389] / [i915#3457]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][44] ([i915#3457]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          NOTRUN -> [FAIL][45] ([i915#3457])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk8/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][48] ([i915#3468])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-apl:          [PASS][49] -> [INCOMPLETE][50] ([i915#3468])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#307])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][53] -> [INCOMPLETE][54] ([i915#3468])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
    - shard-glk:          [PASS][55] -> [INCOMPLETE][56] ([i915#3468])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][57] ([i915#3468]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-skl:          NOTRUN -> [INCOMPLETE][58] ([i915#198] / [i915#3468])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-apl:          NOTRUN -> [INCOMPLETE][59] ([i915#3468]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3323])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][61] ([i915#3318] / [i915#3457])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180] / [i915#3457])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_workarounds@suspend-resume.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109289])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][65] ([i915#3296])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][66] ([i915#3296])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl6/igt@gen9_exec_parse@bb-large.html

  * igt@i915_hangman@engine-hang@vcs1:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][67] ([i915#3457]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@i915_hangman@engine-hang@vcs1.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][68] ([i915#3457])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@i915_pm_rpm@cursor-dpms.html
    - shard-iclb:         [PASS][69] -> [DMESG-WARN][70] ([i915#3457])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#3457])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@wc.html
    - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#3457])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-snb:          NOTRUN -> [SKIP][75] ([fdo#109271]) +161 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][76] ([i915#2782])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - shard-snb:          NOTRUN -> [DMESG-WARN][77] ([i915#3457])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@i915_selftest@live@mman.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#2521])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111614])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_ccs@pipe-d-missing-ccs-buffer.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_color@pipe-b-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][85] ([i915#1149])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3116])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][89] ([i915#1319]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#3444] / [i915#3457]) +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          [PASS][91] -> [FAIL][92] ([i915#3444] / [i915#3457]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          NOTRUN -> [FAIL][93] ([i915#3444] / [i915#3457]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-snb:          NOTRUN -> [FAIL][94] ([i915#3457]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3457]) +10 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen:
    - shard-tglb:         [PASS][96] -> [FAIL][97] ([i915#2124] / [i915#3457])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [FAIL][98] ([i915#3457])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [i915#3457]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3457]) +12 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          NOTRUN -> [FAIL][101] ([i915#3444] / [i915#3457]) +6 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - shard-kbl:          [PASS][102] -> [FAIL][103] ([i915#3444] / [i915#3457]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - shard-snb:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3457]) +22 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#3444] / [i915#3457]) +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3457]) +14 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#70])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109274] / [fdo#109278])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271]) +97 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109274]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][113] ([i915#180]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#198])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#2122])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#2587])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2642])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109280]) +6 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][121] ([i915#1188])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109289])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#53])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#533]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][127] ([fdo#108145] / [i915#265]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-kbl:          NOTRUN -> [FAIL][128] ([fdo#108145] / [i915#265]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][129] ([i915#265])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][130] ([i915#265])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-iclb:         NOTRUN -> [FAIL][131] ([i915#2657] / [i915#3461])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][132] ([i915#2657])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-skl:          NOTRUN -> [FAIL][133] ([i915#2657] / [i915#3461]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
    - shard-glk:          [PASS][134] -> [FAIL][135] ([i915#2657]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [135]: https://intel-gf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/index.html

--===============6153907155788534223==
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
<tr><td><b>Series:</b></td><td>drm/i915: Check HDMI sink deep color capabilities during .mode_valid() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90036/">https://patchwork.freedesktop.org/series/90036/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074_full -&gt; Patchwork_20113_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20113_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20113_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20113_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk3/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk7/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb8/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_shader_image_load_store@max-size (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/pig-glk-j5005/spec@arb_shader_image_load_store@max-size.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10074_full and Patchwork_20113_full:</p>
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
<p>Here are the changes found in Patchwork_20113_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@delta-check:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@api_intel_bb@delta-check.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render@render-x-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-x-1024.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk4/igt@api_intel_bb@render@render-x-1024.html">FAIL</a> ([i915#3471])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">DMESG-WARN</a> ([i915#1982] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">INCOMPLETE</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk7/igt@gem_exec_fence@parallel@vcs0.html">FAIL</a> ([i915#3457]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk8/igt@gem_exec_schedule@u-fairslice@vecs0.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html">INCOMPLETE</a> ([i915#3468]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl3/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl6/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@i915_hangman@engine-hang@vcs1.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl1/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271]) +161 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@i915_selftest@live@mman.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_ccs@pipe-d-missing-ccs-buffer.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_color@pipe-b-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_color_chamelium@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([fdo#109278] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-snb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">FAIL</a> ([i915#70])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-iclb4/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl4/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20113/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#2657] / [i915#3461]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gf">FAIL</a> ([i915#2657]) +1 similar issue</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6153907155788534223==--

--===============1111752451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1111752451==--
