Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5845137F0E5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 03:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569B56E5CC;
	Thu, 13 May 2021 01:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B75556E029;
 Thu, 13 May 2021 01:21:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AED2EA8830;
 Thu, 13 May 2021 01:21:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 13 May 2021 01:21:52 -0000
Message-ID: <162086891268.26534.7935084817118126061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
In-Reply-To: <20210512042144.2089071-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ0kg?=
 =?utf-8?q?pass_for_reviewed_XeLPD_/_ADL-P_patches_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1071526249=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1071526249==
Content-Type: multipart/alternative;
 boundary="===============7258940162886152110=="

--===============7258940162886152110==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CI pass for reviewed XeLPD / ADL-P patches (rev3)
URL   : https://patchwork.freedesktop.org/series/90048/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20112_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20112_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20112_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20112_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-snb:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  
#### Warnings ####

  * igt@kms_plane_cursor@pipe-d-viewport-size-64:
    - shard-tglb:         [FAIL][5] ([i915#3457]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb7/igt@kms_plane_cursor@pipe-d-viewport-size-64.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb8/igt@kms_plane_cursor@pipe-d-viewport-size-64.html

  
Known issues
------------

  Here are the changes found in Patchwork_20112_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][7] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@api_intel_bb@blit-noreloc-purge-cache-random.html

  * igt@api_intel_bb@delta-check:
    - shard-apl:          NOTRUN -> [DMESG-WARN][8] ([i915#3457]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@api_intel_bb@delta-check.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][9] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@api_intel_bb@delta-check.html

  * igt@api_intel_bb@offset-control:
    - shard-snb:          NOTRUN -> [DMESG-WARN][10] ([i915#3457]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@api_intel_bb@offset-control.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][11] ([i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@api_intel_bb@offset-control.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#180] / [i915#3457]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@engines-persistence@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][13] ([i915#3457]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_ctx_persistence@engines-persistence@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1099]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_ringsize@idle@vcs0:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#3457]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][17] -> [TIMEOUT][18] ([i915#2369] / [i915#3063] / [i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][19] ([i915#2846] / [i915#3457])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#2842] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#3209] / [i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#2389] / [i915#3457]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][26] ([i915#2389] / [i915#3457]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][27] ([i915#2389] / [i915#3457])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          NOTRUN -> [FAIL][28] ([i915#3457])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([i915#3468])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-apl:          [PASS][31] -> [INCOMPLETE][32] ([i915#3468]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][33] ([i915#3468]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#3468])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][36] -> [INCOMPLETE][37] ([i915#3468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][38] ([i915#3468]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][39] ([i915#2658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-skl:          NOTRUN -> [INCOMPLETE][40] ([i915#198] / [i915#3468])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][41] ([i915#3468]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3323])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180] / [i915#3457])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_workarounds@suspend-resume.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109289]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-kbl:          NOTRUN -> [FAIL][47] ([i915#3296])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@gen9_exec_parse@bb-large.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111614])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111615])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111828])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][56] ([i915#1319]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][57] ([i915#3444] / [i915#3457]) +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          [PASS][58] -> [FAIL][59] ([i915#3444] / [i915#3457]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3457]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2124] / [i915#3457]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][63] ([i915#3457]) +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#3444] / [i915#3457]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#3444] / [i915#3457])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109279] / [i915#3359] / [i915#3457])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3457]) +12 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][69] ([i915#180] / [i915#3457])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#3444] / [i915#3457]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3457]) +9 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-glk:          [PASS][72] -> [FAIL][73] ([i915#3444] / [i915#3457]) +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3457]) +47 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-tglb:         NOTRUN -> [FAIL][75] ([i915#2124] / [i915#3457])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#70]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271]) +358 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +78 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#2346] / [i915#3457])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2587])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111825]) +8 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#1188])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#53]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
    - shard-apl:          NOTRUN -> [FAIL][87] ([i915#2472])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#533]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][89] -> [DMESG-WARN][90] ([i915#180])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-kbl:          [PASS][91] -> [DMESG-WARN][92] ([i915#180])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][93] ([fdo#108145] / [i915#265]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][94] ([i915#2657] / [i915#3461])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#2657] / [i915#3457])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-tglb:         NOTRUN -> [FAIL][96] ([i915#3461])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - shard-kbl:          NOTRUN -> [FAIL][97] ([i915#2657] / [i915#3457])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - shard-apl:          [PASS][98] -> [FAIL][99] ([i915#2657])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
    - shard-snb:          NOTRUN -> [FAIL][100] ([i915#3461])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@kms_plane_cursor@pipe-b-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#2657] / [i915#3457])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-iclb:         [PASS][103] -> [FAIL][104] ([i915#2657] / [i915#3461])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#2920])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
    - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][109] ([i915#2100])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#2437])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271]) +100 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#3457]) +26 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html

  * igt@perf_pmu@busy-idle-no-semaphores@vecs0:
    - shard-apl:          NOTRUN -> [WARN][114] ([i915#3457]) +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@perf_pmu@busy-idle-no-semaphores@vecs0.html

  * igt@prime_mmap_coherency@read:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][115] ([i915#3468])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@prime_mmap_coherency@read.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109291])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@sysfs_clients@recycle-many.html
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@sysfs_clients@recycle-many.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271]) +56 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render@render-none-1024:
    - shard-glk:          [WARN][120] -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-1024.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@api_intel_bb@render@render-none-1024.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          [DMESG-WARN][122] ([i915#180] / [i915#3457]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][124] ([i915#180] / [i915#3457]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-apl:          [INCOMPLETE][126] ([i915#2502] / [i915#3457]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_exec_endless@dispatch@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][128] ([i915#2842] / [i915#3457]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][130] ([i915#2842] / [i915#3457]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@preempt-hang@vcs0:
    - shard-glk:          [FAIL][132] ([i915#3457]) -> [PASS][133] +27 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_exec_schedule@preempt-hang@vcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@gem_exec_schedule@preempt-hang@vcs0.html

  * igt@gem_exec_schedule@submit-early-slice@bcs0:
    - shard-apl:          [FAIL][134

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/index.html

--===============7258940162886152110==
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
<tr><td><b>Series:</b></td><td>CI pass for reviewed XeLPD / ADL-P patches (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90048/">https://patchwork.freedesktop.org/series/90048/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074_full -&gt; Patchwork_20112_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20112_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20112_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20112_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane_cursor@pipe-d-viewport-size-64:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb7/igt@kms_plane_cursor@pipe-d-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb8/igt@kms_plane_cursor@pipe-d-viewport-size-64.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20112_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@delta-check:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@api_intel_bb@delta-check.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@api_intel_bb@delta-check.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_ctx_persistence@engines-persistence@bcs0.html">FAIL</a> ([i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#3209] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@gem_exec_schedule@u-fairslice@vecs0.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl7/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-FAIL</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html">FAIL</a> ([i915#2124] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +358 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +78 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#111825]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">FAIL</a> ([i915#53]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html">FAIL</a> ([i915#2472])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-64:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-256:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">FAIL</a> ([i915#2657])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-snb7/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">FAIL</a> ([i915#3461])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-128.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@kms_setmode@clone-exclusive-crtc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +100 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html">FAIL</a> ([i915#3457]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-no-semaphores@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@perf_pmu@busy-idle-no-semaphores@vecs0.html">WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@prime_mmap_coherency@read.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb1/igt@prime_nv_test@nv_i915_sharing.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl1/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-skl1/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl2/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([fdo#109271]) +56 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render@render-none-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-1024.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk8/igt@api_intel_bb@render@render-none-1024.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> ([i915#2502] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-apl6/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_exec_schedule@preempt-hang@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20112/shard-glk3/igt@gem_exec_schedule@preempt-hang@vcs0.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@bcs0:</p>
<ul>
<li>shard-apl:          [FAIL][134</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7258940162886152110==--

--===============1071526249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1071526249==--
