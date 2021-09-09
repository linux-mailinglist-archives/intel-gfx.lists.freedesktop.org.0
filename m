Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE754043BC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9628D6E42A;
	Thu,  9 Sep 2021 02:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBA476E42A;
 Thu,  9 Sep 2021 02:50:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3FB7A77A5;
 Thu,  9 Sep 2021 02:50:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3043915091730304663=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 02:50:20 -0000
Message-ID: <163115582076.16812.3869975161071965181@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909004941.379035-1-lucas.demarchi@intel.com>
In-Reply-To: <20210909004941.379035-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_rename_debugfs=5Fgt_fil?=
 =?utf-8?q?es?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3043915091730304663==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: rename debugfs_gt files
URL   : https://patchwork.freedesktop.org/series/94489/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10565_full -> Patchwork_20993_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20993_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20993_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20993_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@kms_atomic@plane-cursor-legacy:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@kms_atomic@plane-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb2/igt@kms_atomic@plane-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_eio@hibernate:
    - {shard-rkl}:        [TIMEOUT][5] ([i915#3811]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-5/igt@gem_eio@hibernate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-2/igt@gem_eio@hibernate.html

  * igt@gem_flink_race@flink_close:
    - {shard-rkl}:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-6/igt@gem_flink_race@flink_close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-2/igt@gem_flink_race@flink_close.html

  
Known issues
------------

  Here are the changes found in Patchwork_20993_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][9] ([i915#3002])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1099])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb5/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [PASS][11] -> [TIMEOUT][12] ([i915#3070])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271]) +250 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-glk6/igt@gem_exec_gttfill@all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk4/igt@gem_exec_gttfill@all.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl6/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl6/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@gem_render_copy@linear-to-vebox-y-tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#768])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#3297])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#3297])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#2521])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-skl:          NOTRUN -> [DMESG-WARN][32] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110725] / [fdo#111614])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110723])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#3722])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#3886])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3689]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +269 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_color_chamelium@pipe-b-gamma.html
    - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278]) +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274] / [fdo#109278])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2346])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#79])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [PASS][64] -> [INCOMPLETE][65] ([i915#2411] / [i915#456])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#2122]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2672])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109280]) +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#111825]) +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +47 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +10 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@static-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#1187])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-tglb:         [PASS][74] -> [INCOMPLETE][75] ([i915#456])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][77] ([i915#265])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([fdo#108145] / [i915#265]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3536])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2920]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][86] -> [SKIP][87] ([fdo#109441])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2437])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][89] ([i915#1542])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994]) +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-50:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][92] ([i915#2582]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@fbdev@nullptr.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [FAIL][94] ([i915#3115]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][96] ([i915#2842]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][98] ([i915#2842]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][100] ([fdo#109271]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-tglb:         [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][106] ([i915#2849]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [INCOMPLETE][108] ([i915#456]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@gem_workarounds@suspend-resume.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][110] ([fdo#109308]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@i915_pm_rpm@i2c.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [INCOMPLETE][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - {shard-rkl}:        [SKIP][114] ([i915#1845]) -> [PASS][115] +24 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][116] ([i915#3638]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][118] ([i915#3721]) -> [PASS][119] +7 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][120] ([i915#1982]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl2/igt@kms_color@pipe-a-ctm-0-25.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl8/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][122] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - {shard-rkl}:        [SKIP][124] ([fdo#112022] / [i915#4070]) -> [PASS][125] +5 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][128] ([i915#2346]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - {shard-rkl}:        [SKIP][130] ([fdo#111825] / [i915#4070]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][132] ([i915#1257]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_dp_aux_dev.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][134] ([fdo#111314]) -> [PASS][135] +6 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][136] ([fdo#110189] / [i915#3955]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][138] ([i915#79]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-kbl:          [FAIL][140] ([i915#79]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_fli

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/index.html

--===============3043915091730304663==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: rename debugfs_gt files</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94489/">https://patchwork.freedesktop.org/series/94489/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565_full -&gt; Patchwork_20993_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20993_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20993_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20993_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@gem_exec_endless@dispatch@vcs1.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@kms_atomic@plane-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb2/igt@kms_atomic@plane-cursor-legacy.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-5/igt@gem_eio@hibernate.html">TIMEOUT</a> ([i915#3811]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-2/igt@gem_eio@hibernate.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-6/igt@gem_flink_race@flink_close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-2/igt@gem_flink_race@flink_close.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20993_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb5/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109271]) +250 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-glk6/igt@gem_exec_gttfill@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk4/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl6/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl6/igt@gem_mmap_gtt@cpuset-medium-copy.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@gem_render_copy@linear-to-vebox-y-tiled.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@gem_render_copy@linear-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +269 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-glk7/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-dpms.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb6/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-apl7/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@sysfs_clients@split-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3115]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb8/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@i915_pm_rpm@i2c.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-0.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl2/igt@kms_color@pipe-a-ctm-0-25.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl8/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> +5 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20993/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fli</p>
</li>
</ul>

</body>
</html>

--===============3043915091730304663==--
